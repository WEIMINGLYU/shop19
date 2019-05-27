package com.ai.service.impl;

import com.ai.dao.ICategoryDao;
import com.ai.po.Category;
import com.ai.po.CategoryExt;
import com.ai.service.ICategotyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class CategotyService implements ICategotyService {
    @Resource
    private ICategoryDao categoryDao;

    @Override
    public List<CategoryExt> getAllCAndCs() {
        return categoryDao.getAllCAndCs();
    }

    @Override
    public CategoryExt findProductByCid(Integer cid) {
        return categoryDao.findProductByCid(cid);
    }
}
