package com.ai.dao;

import com.ai.po.Order;
import com.ai.po.OrderExt;
import com.ai.po.Orderitem;
import com.ai.util.PageBeanForOrder;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface IOrderDao {

    /*创建订单*/
    void newOrder(Order order);

    /*创建订单项*/
    void newOrderitem(Orderitem orderitem);

    /*根据商品ID查询订单详情*/
    OrderExt findOrderByOid(Integer oid);

    /*修改订单状态*/
    void changeState(OrderExt orderExt);

    /*查询某个用户下的订单个数*/
    Integer findOrdersCount(PageBeanForOrder<OrderExt> pageBeanForOrder);

    /*查询某个用户下的订单列表*/
    List<OrderExt> findOrdersByUid(PageBeanForOrder<OrderExt> pageBeanForOrder);
    /*查询我的订单中所有订单状态*/
    Integer findMyOrdersByState(PageBeanForOrder<OrderExt> pageBeanForOrder);
}