package com.ai.service;

import com.ai.po.Order;
import com.ai.po.OrderExt;
import com.ai.po.Orderitem;
import com.ai.util.PageBeanForOrder;


import java.util.List;

public interface IOrderService {
   /*创建订单*/
    void creatOrder(Order order, List<Orderitem> orderitems);

    /*根据商品ID查询订单详情*/
    OrderExt findOrderByOid(Integer oid);

    /*修改订单状态*/
    void changeState(OrderExt orderExt);

    /*uid查询订单分页*/
    PageBeanForOrder<OrderExt> findOrders(PageBeanForOrder<OrderExt> pageBeanForOrder);


}
