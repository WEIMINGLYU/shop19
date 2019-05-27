package com.ai.dao;

import com.ai.po.Product;
import com.ai.util.PageBeanForProduct;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface IProductDao {
/*根据类目查询商品列表*/
    List<Product> findProducts(PageBeanForProduct<Product> pageBeanForProduct);

    /*查询商品总记录数*/
    int getProductCount(PageBeanForProduct<Product> pageBeanForProduct);
    /*查询当前类目下的三个热门商品*/
    List<Product> getHotProduct(PageBeanForProduct<Product> pageBeanForProduct);
    /*根据商品ID查询商品详情*/
    Product findProductByPid(Integer pid);
    /*查询搜索下的热门商品*/
    List<Product> findHotProduct(Integer count);


}
