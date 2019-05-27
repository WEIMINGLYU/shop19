package com.ai.controller;

import com.ai.po.CategoryExt;
import com.ai.po.CategorysecondExt;
import com.ai.po.Product;
import com.ai.service.IProductService;
import com.ai.util.CategoryUtil;
import com.ai.util.PageBeanForProduct;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    private IProductService productService;

    @RequestMapping("/findProductByPid")
    public String findProductByPid(Integer pid,Model model){
        JedisPool jedisPool = new JedisPool("localhost",6379);
        Jedis jedis = jedisPool.getResource();
        jedis.select(0);
        /*查询全部一二级类目，为导航栏提供支持*/
        List<CategoryExt> allCAndCs = CategoryUtil.categoryUtil.searchCategoryAndSecond();

            jedis.mset("product",allCAndCs.toString());
        /*String product = JSON.toJSONString(jedis.get("product"));
        JSONObject jsonObject = JSON.parseObject(product);
        CategoryExt categoryExt = JSON.toJavaObject(jsonObject, CategoryExt.class);
        System.out.println("================="+categoryExt);
        model.addAttribute("jedis",jedis.get("product"));*/
        model.addAttribute("allCAndCs",allCAndCs);
        /*根据ID查询商品详情*/
        Product productByPid = productService.findProductByPid(pid);
        model.addAttribute("productByPid",productByPid);
        return "product";
    }
            @RequestMapping("/findProducts")
            public String findProducts(PageBeanForProduct<Product> pageBeanForProduct, Model model) throws UnsupportedEncodingException {
                /*查询全部一二级类目，为导航栏提供支持*/
                List<CategoryExt> allCAndCs = CategoryUtil.categoryUtil.searchCategoryAndSecond();
                model.addAttribute("allCAndCs",allCAndCs);
//               回显查询的一级类目信息
                if (pageBeanForProduct.getCid()!=null){
                    for (CategoryExt categoryExt:allCAndCs) {
                        if (categoryExt.getCid()==pageBeanForProduct.getCid()){
                            model.addAttribute("categoryExt",categoryExt);
                            break;
                        }
                    }
                }

                /*回显查询二级类目的信息*/
                 if (pageBeanForProduct.getCsid()!=null){
                     for (CategoryExt categoryExt:allCAndCs) {
                         List<CategorysecondExt> categorysecondExtList = categoryExt.getCategorysecondExtList();
                         for (CategorysecondExt categorysecondExt : categorysecondExtList) {
                             if (pageBeanForProduct.getCsid()==categorysecondExt.getCsid()){
                                 model.addAttribute("categoryExt",categoryExt);
                                 break;
                             }
                         }
                     }

                 }
                 /*查询当前类目下的三个热门商品*/
                List<Product> hotProduct = productService.getHotProduct(pageBeanForProduct);
                model.addAttribute("hotProduct",hotProduct);

                //调用service,返回pageBean为商品分页做准备

                pageBeanForProduct = productService.searchProduct(pageBeanForProduct);

                model.addAttribute("pageBeanForProduct",pageBeanForProduct);

                return "productList";
            }

}
