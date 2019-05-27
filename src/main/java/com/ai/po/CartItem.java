package com.ai.po;

public class CartItem {
    private Integer count;
    private Product product;
    private double subTotal;

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    /*小计金额*/
    public double getSubTotal() {
        return product.getShop_price() * count;
     }



}
