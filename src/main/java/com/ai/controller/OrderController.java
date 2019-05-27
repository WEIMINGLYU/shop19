package com.ai.controller;

import com.ai.po.*;
import com.ai.service.IOrderService;
import com.ai.util.PageBeanForOrder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@RequestMapping("/order")
@Controller
public class OrderController {

    @Resource
    private IOrderService orderService;
/*创建订单*/
    @RequestMapping("/creatOrder")
    public String creatOrder(Order order, HttpSession session, Model model) throws ParseException {
       /*===============维护order信息===========*/

        /*接受user信息，封装到order中*/
        order.setState(0);
        /*设置当前时间*/
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        order.setOrdertime((Date) df.parse(df.format(new Date())));

        /*=============维护orderitem信息============*/
        /*从seesion中获取cart*/
        Cart cart = (Cart)session.getAttribute("cart");
        CartItem cartitem = (CartItem)session.getAttribute("cartitem");
        List<Orderitem> orderitems = new ArrayList<>();

       if (cart!=null) {
            for (CartItem cartItem2 : cart.getCartItems()) {
                Orderitem orderitem = new Orderitem();
                orderitem.setPid(cartItem2.getProduct().getPid());
                orderitem.setCount(cartItem2.getCount());
                orderitem.setSubtotal(cartItem2.getSubTotal());
                orderitems.add(orderitem);
            }
        }else {
            Orderitem orderitem = new Orderitem();
            orderitem.setPid(cartitem.getProduct().getPid());
            orderitem.setCount(cartitem.getCount());
            orderitem.setSubtotal(cartitem.getSubTotal());
            orderitems.add(orderitem);
          }



        /*调用service创建订单*/
        orderService.creatOrder(order,orderitems);
        /*接受cart信息，封装到order中*/
        model.addAttribute("oid",order.getOid());
        /*清除seesion中的购物车*/
        session.removeAttribute("cart");
        return "pay";
    }
    /*去付款*/
    @RequestMapping("/pay")
    public String pay(Model model,Integer oid){
        model.addAttribute("oid",oid);
      return "pay";
    }
    /*确认收货*/
    @RequestMapping("/confirmProduct")
    public void confirmProduct(Integer oid, HttpServletResponse response) throws IOException {
        OrderExt orderByOid = orderService.findOrderByOid(oid);
        orderByOid.setState(3);
        orderService.changeState(orderByOid);
        response.getWriter().print("ok");
    }
    /*支付功能*/
    @RequestMapping("/payNow")
    public String payNow(Integer oid,Model model){
        /*根据oid查询订单*/
        OrderExt orderExt = orderService.findOrderByOid(oid);
        /*修改订单状态*/
        orderExt.setState(1);
        orderService.changeState(orderExt);
        model.addAttribute("orderExt",orderExt);
        return "paySuccess";
    }
/*我的订单*/
    @RequestMapping("/myOrders")
    public String myOrders(HttpSession session, PageBeanForOrder<OrderExt> pageBeanForOrder,Model model){
        User user = (User)session.getAttribute("user");
        System.out.println(pageBeanForOrder.getState()+"===========================");
        if (user==null){

            return "redirect:/user/doLogin.do";
        }
        pageBeanForOrder.setUid(user.getUid());
        /*调用service执行分页实例pageBean封装*/
        pageBeanForOrder= orderService.findOrders(pageBeanForOrder);
        model.addAttribute("pageBeanForOrder",pageBeanForOrder);
        return "myOrders";
       }
}
