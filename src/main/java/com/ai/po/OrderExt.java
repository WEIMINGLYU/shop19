package com.ai.po;

import java.util.List;

public class OrderExt extends Order {
    public List<OrderitemExt> getOrderitemExtList() {
        return orderitemExtList;
    }

    public void setOrderitemExtList(List<OrderitemExt> orderitemExtList) {
        this.orderitemExtList = orderitemExtList;
    }

    private List<OrderitemExt> orderitemExtList;
}
