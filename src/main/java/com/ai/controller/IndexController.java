package com.ai.controller;

import com.ai.po.CategoryExt;

import com.ai.po.CategorysecondExt;
import com.ai.po.Product;
import com.ai.service.ICategotyService;
import com.ai.util.CategoryUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;




import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.List;


@RequestMapping("/")
@Controller
public class IndexController {
    @Resource
    ICategotyService categotyService;
   /*   for (int i = 0; i < allCAndCs.size(); i++) {
            proList = new ArrayList<>();
            *//*获取categoryExt对象*//*
            CategoryExt categoryExt = allCAndCs.get(i);
            *//*获取当前二级类目的集合*//*
            List<CategorysecondExt> categorysecondExtList = categoryExt.getCategorysecondExtList();
            for (CategorysecondExt categorysecondExt : categorysecondExtList) {
                List<Product> productList = categorysecondExt.getProductList();
                for (Product product : productList) {
                    proList.add(product);
                }
            }
            model.addAttribute("category"+i,proList);
        }*/

    @RequestMapping("ai.com")
    public String index(Model model, HttpServletRequest request) {

        List<Product> hotProductForSearch = CategoryUtil.categoryUtil.findHotProduct(4);
        request.getServletContext().setAttribute("hotProductForSearch",hotProductForSearch);

        /*创建商品集合容器*/
        List<Product> proList = null;
        /*全部一二级类目*/
        List<CategoryExt> allCAndCs = categotyService.getAllCAndCs();


         int i = 1;
        /*查询每个一级类目下的6个热门商品*/
        for (CategoryExt allCAndC:allCAndCs) {
            for (CategorysecondExt categorysecondExt : allCAndC.getCategorysecondExtList()) {
                CategoryExt productByCsid = categotyService.findProductByCid(categorysecondExt.getCsid());
                model.addAttribute("productByCsid",productByCsid);
            }
            /*当前类目*/
            CategoryExt categoryExt = categotyService.findProductByCid(allCAndC.getCid());
            model.addAttribute("categoryExt"+i,categoryExt);
             i++;
        }
        request.getServletContext().setAttribute("allCAndCs",allCAndCs);

        return "index";
    }


}
