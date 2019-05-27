package com.ai.service;

import com.ai.po.Product;
import com.ai.util.PageBeanForProduct;


import java.io.UnsupportedEncodingException;
import java.util.List;

public interface IProductService {
    /*分页方法*/
  PageBeanForProduct<Product> searchProduct( PageBeanForProduct<Product> productPageBeanForProduct) throws UnsupportedEncodingException;
 /*返回热门的三个商品*/
  List<Product> getHotProduct(PageBeanForProduct<Product> pageBeanForProduct);
    /*根据商品ID查询商品详情*/
    Product findProductByPid(Integer pid);

    /*查询搜索下的热门商品*/
    List<Product> findHotProduct(Integer count);



}
