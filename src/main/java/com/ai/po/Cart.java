package com.ai.po;

import java.util.Collection;
import java.util.LinkedHashMap;

import java.util.Map;

public class Cart {

    private Map<Integer,CartItem> cartItemList =  new LinkedHashMap<>();
    private double total;



    /*添加购物车*/
    public void addCartItem(CartItem cartItem){
        /*接收PID*/
        Integer pid = cartItem.getProduct().getPid();
        /*如果购物车中有相同的PID就不再创建相同的购物项*/
           if(cartItemList.containsKey(pid)){
               CartItem oldItem = cartItemList.get(pid);
               Integer oldCount = oldItem.getCount();
               Integer newCount = cartItem.getCount();
               oldItem.setCount(oldCount + newCount);
            }else{
               cartItemList.put(pid,cartItem);
           }
           /*计算总计*/
        total = total + cartItem.getSubTotal();
    }


   /* 删除某一个购物项*/
    public void removeItem(Integer pid){
        /*移除购物项*/
        CartItem item = cartItemList.remove(pid);
        /*计算总计*/
        total = total - item.getSubTotal();

    }


    /*修改购物车*/
    public void changeCount(Integer pid,Integer count){

            /*查找当前需要修改的item*/
            CartItem cartItem = cartItemList.get(pid);
            /*从总项中移除购物项的小计*/

            total = total - cartItem.getSubTotal();
            /*修改其数量*/
            cartItem.setCount(count);

            /*计算总价*/
            total = total + cartItem.getSubTotal();



    }
    /*清空购物车*/
    public void clearCart(){
        cartItemList.clear();
        total = 0.0;

    }

    /*返回购物项集合*/
    public Collection<CartItem> getCartItems(){

        return cartItemList.values();
    }

    /*返回总计*/

    public double getTotal() {
        return total;
    }

   /* public void setTotal(double total) {
        this.total = total;
    }*/
}
