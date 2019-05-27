package com.ai.service;



import com.ai.po.CategoryExt;


import java.util.List;

public interface ICategotyService {

    List<CategoryExt> getAllCAndCs();


    CategoryExt findProductByCid(Integer cid);
}
