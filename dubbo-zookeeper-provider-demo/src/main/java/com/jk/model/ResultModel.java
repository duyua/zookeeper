package com.jk.model;

import java.io.Serializable;
import java.util.List;

public class ResultModel implements Serializable{
    private static final long serialVersionUID = -9025668395331883685L;

    private List<Tbasic> productList;

    private long recordCount;

    private long pageCount;

    private long curPage;

    public List<Tbasic> getProductList() {
        return productList;
    }

    public void setProductList(List<Tbasic> productList) {
        this.productList = productList;
    }

    public long getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(long recordCount) {
        this.recordCount = recordCount;
    }

    public long getPageCount() {
        return pageCount;
    }

    public void setPageCount(long pageCount) {
        this.pageCount = pageCount;
    }

    public long getCurPage() {
        return curPage;
    }

    public void setCurPage(long curPage) {
        this.curPage = curPage;
    }

    @Override
    public String toString() {
        return "ResultModel{" +
                "productList=" + productList +
                ", recordCount=" + recordCount +
                ", pageCount=" + pageCount +
                ", curPage=" + curPage +
                '}';
    }
}
