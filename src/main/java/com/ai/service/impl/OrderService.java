package com.ai.service.impl;

import com.ai.dao.IOrderDao;
import com.ai.po.Order;
import com.ai.po.OrderExt;
import com.ai.po.Orderitem;
import com.ai.service.IOrderService;
import com.ai.util.PageBeanForOrder;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderService implements IOrderService {
    @Resource
    private IOrderDao orderDao;
    /*uid查询订单分页*/
    @Override
    public PageBeanForOrder<OrderExt> findOrders(PageBeanForOrder<OrderExt> pageBeanForOrder) {
        Integer i = pageBeanForOrder.getState();
        /*查询我的订单中所有订单状态*/
        pageBeanForOrder.setState(0);
        pageBeanForOrder.setState0(orderDao.findMyOrdersByState(pageBeanForOrder));
        pageBeanForOrder.setState(1);
        pageBeanForOrder.setState1(orderDao.findMyOrdersByState(pageBeanForOrder));
        pageBeanForOrder.setState(2);
        pageBeanForOrder.setState2(orderDao.findMyOrdersByState(pageBeanForOrder));
        pageBeanForOrder.setState(3);
        pageBeanForOrder.setState3(orderDao.findMyOrdersByState(pageBeanForOrder));
        pageBeanForOrder.setState(i);
        /*设置每页显示的个数*/
        int pageSize = 3;
        pageBeanForOrder.setPageSize(pageSize);
        /*设置总记录数*/
        int rowCount = orderDao.findOrdersCount(pageBeanForOrder);
        pageBeanForOrder.setRowCount(rowCount);

        int pageCount = 0;
        if (rowCount % pageSize == 0){
            pageCount= rowCount / pageSize;
        }else{
            pageCount= rowCount / pageSize + 1;
        }
        pageBeanForOrder.setPageCount(pageCount);

        int pageNow = pageBeanForOrder.getPageNow();

        if(pageNow<1){

            pageBeanForOrder.setPageNow(1);
            pageNow=1;

        }else  if (pageNow>pageCount){
            pageBeanForOrder.setPageNow(pageCount);
        }

       /*封装查询起始的索引*/
        int limit = 0 ;
        limit = (pageNow-1 )* pageSize;
        pageBeanForOrder.setStartLimit(limit);
        /*封装订单集合*/
        pageBeanForOrder.setList(orderDao.findOrdersByUid(pageBeanForOrder));
        return pageBeanForOrder;
    }

    /*根据商品ID查询订单详情*/
    @Override
    public OrderExt findOrderByOid(Integer oid) {
        return orderDao.findOrderByOid(oid);
    }
    /*修改订单状态*/
    @Override
    public void changeState(OrderExt orderExt) {
        orderDao.changeState(orderExt);
    }



    @Override
    public void creatOrder(Order order, List<Orderitem> orderitems) {

        orderDao.newOrder(order);
        /*为orderitem赋值oid*/
        /*创建订单项*/

        for (Orderitem orderitem : orderitems) {
            /*循环创建订单项*/

            orderitem.setOid(order.getOid());
            orderDao.newOrderitem(orderitem);

        }

    }
}
