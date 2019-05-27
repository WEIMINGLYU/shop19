package com.ai.util;

import com.ai.po.CategoryExt;

import com.ai.po.Product;
import com.ai.service.ICategotyService;
import com.ai.service.IProductService;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

   @Component
   public class CategoryUtil {
    public static CategoryUtil categoryUtil;
    @PostConstruct
    public void init(){
        categoryUtil = this;
    }


    @Resource
    private IProductService productService;
    @Resource
    private ICategotyService categotyService;

    public List<CategoryExt> searchCategoryAndSecond(){
           return categotyService.getAllCAndCs();
    }
       /*查询搜索下的热门商品*/
       public List<Product> findHotProduct(Integer count){
          return  productService.findHotProduct(count);
    }
}
