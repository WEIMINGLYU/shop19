package com.ai.util;

import java.util.List;

/**
 * 分页的基础工具类
 * @param <T>
 */
public class PageBean<T> {
    private List<T> list;
    private Integer pageNow;
    private Integer pageSize;
    private Integer rowCount;
    private Integer pageCount;
    private Integer startLimit;

    public Integer getStartLimit() {
        return startLimit;
    }

    public void setStartLimit(Integer startLimit) {
        this.startLimit = startLimit;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public Integer getPageNow() {
        return pageNow;
    }

    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getRowCount() {
        return rowCount;
    }

    public void setRowCount(Integer rowCount) {
        this.rowCount = rowCount;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }
}
