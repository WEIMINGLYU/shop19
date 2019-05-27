package com.ai.dao;


import com.ai.po.CategoryExt;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface ICategoryDao {
    /*查询全部一二级类目*/
    List<CategoryExt> getAllCAndCs();

    /*查询该类目下的6个热门商品*/
    CategoryExt findProductByCid(Integer cid);
}
