package com.ai.service.impl;

import com.ai.dao.IProductDao;
import com.ai.po.Product;
import com.ai.service.IProductService;
import com.ai.util.PageBeanForProduct;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;
@Service
public class ProductService implements IProductService {
    @Resource
    private IProductDao productDao;

    /**
     * 分页查询商品列表
     * @param productPageBeanForProduct
     * @return
     */
    @Override
    public PageBeanForProduct<Product> searchProduct(PageBeanForProduct<Product> productPageBeanForProduct) throws UnsupportedEncodingException {
        if(productPageBeanForProduct.getPname()!=null){
          productPageBeanForProduct.setPname(productPageBeanForProduct.getPname().trim());
        }
        int pageSize = 12;
        productPageBeanForProduct.setPageSize(pageSize);
        /*返回总记录数*/
        int rowCount = productDao.getProductCount(productPageBeanForProduct);
        productPageBeanForProduct.setRowCount(rowCount);
        /*该类目下无商品*/
        if (rowCount==0){
          return null;
        }
        /*封装pageCount*/
        int pageCount = 0;
        if (rowCount % pageSize == 0){
            pageCount= rowCount / pageSize;
        }else{
            pageCount= rowCount / pageSize + 1;
        }
        productPageBeanForProduct.setPageCount(pageCount);
        /*封装pageNow*/
        int pageNow = productPageBeanForProduct.getPageNow();

         if(pageNow<1){
             productPageBeanForProduct.setPageNow(1);
         }else  if (pageNow>pageCount){
             productPageBeanForProduct.setPageNow(pageCount);
         }
         /*封装starLimit*/
        int limit = 0 ;
        limit = (productPageBeanForProduct.getPageNow()-1 )* pageSize;
        productPageBeanForProduct.setStartLimit(limit);

        /*封装List*/
        List<Product> products = productDao.findProducts(productPageBeanForProduct);
        productPageBeanForProduct.setList(products);
       /*处理Pname的百分号*/

        return productPageBeanForProduct;
    }
    /*返回热门的三个商品*/
    @Override
    public List<Product> getHotProduct(PageBeanForProduct<Product> pageBeanForProduct) {
        return productDao.getHotProduct(pageBeanForProduct);
    }
    /*查询搜索下的热门商品*/
    @Override
    public List<Product> findHotProduct(Integer count) {
        return productDao.findHotProduct(count);
    }
    /*根据商品ID查询商品详情*/
    @Override
    public Product findProductByPid(Integer pid) {
        return productDao.findProductByPid(pid);
    }
}
