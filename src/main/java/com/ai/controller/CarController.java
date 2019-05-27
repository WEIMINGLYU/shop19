package com.ai.controller;

import com.ai.po.*;
import com.ai.service.IProductService;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@RequestMapping("/cart")
@Controller
public class CarController {
    @Resource
    private IProductService productService;

    @RequestMapping("/addCart")
    public void addCart(Integer pid, Integer count, HttpServletResponse response, HttpSession session) throws IOException {

        /*封装cartItem*/
        CartItem cartItem = new CartItem();
        cartItem.setCount(count);
        /*根据pid查询商品*/
        cartItem.setProduct(productService.findProductByPid(pid));
        Cart cart = (Cart) session.getAttribute("cart");
       if(cart==null){
           /*第一次向购物车加入信息*/
           cart = new Cart();
           cart.addCartItem(cartItem);
           session.setAttribute("cart",cart);
       }else{
           cart.addCartItem(cartItem);
       }
       response.getWriter().print("ok");


    }

    /*显示购物车*/
    @RequestMapping("/showCart")
    public String showCart(HttpSession session){
        if (session.getAttribute("cart")==null){
            return "cartNull";
        }else{
            return "cart";
        }

    }

    /*修改购物车，购物项数量*/
    @RequestMapping("/changeCount")
    public void changeCount(HttpSession session,HttpServletResponse response,Integer pid,Integer count) throws IOException {
        Cart cart = (Cart)session.getAttribute("cart");
        cart.changeCount(pid,count);
        response.getWriter().print(cart.getTotal());
    }

    /*删除购物车中的购物项*/
    @RequestMapping("/delItem")
    public void delItem(Integer pid,HttpServletResponse response,HttpSession session) throws IOException {
        Cart cart = (Cart)session.getAttribute("cart");
        cart.removeItem(pid);
        if (cart.getCartItems().size()<=0){
            cart=null;
        }
        session.removeAttribute("cart");
        response.getWriter().print("ok");
    }
    /*清空购物车*/
    @RequestMapping("/clearCart")
    public void clearCart(HttpSession session,HttpServletResponse response) throws IOException {
        Cart cart = (Cart)session.getAttribute("cart");

        cart.clearCart();
        cart=null;
        session.removeAttribute("cart");
        response.getWriter().print("ok");

    }
    /*提交购物车验证是否登录*/
    @RequestMapping("/confirmOrder")
    public String confirmOrder(HttpSession session){
        User user = (User)session.getAttribute("user");
        if (user==null){
           String page = "cart";
           session.setAttribute("page",page);
            return "redirect:/user/doLogin.do";
        }else{
       /*     model.addAttribute("orderitem",orderitem);*/
            return "confirmOrder";
        }
     }
     /*立即购买的方法*/
    @RequestMapping("confirmBycaritem")
    public String confirmBycaritem(HttpSession session, Integer pid, Integer count, Model model){
        User user = (User)session.getAttribute("user");
        if (user==null){
            String page = "findProductByPid";
            session.setAttribute("page",page);
            return "redirect:/user/doLogin.do";
        }

        Product product = productService.findProductByPid(pid);

        CartItem cartItem = new CartItem();
        cartItem.setCount(count);
        cartItem.setProduct(product);

        session.setAttribute("cartitem",cartItem);
        model.addAttribute("cartItem",cartItem);
        return "confirmBycaritem";
    }


}
