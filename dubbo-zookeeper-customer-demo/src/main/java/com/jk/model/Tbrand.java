package com.jk.model;

import java.io.Serializable;

//品牌表
public class Tbrand implements Serializable{
    private static final long serialVersionUID = -4116282555540343745L;
    //主键id
    private String brandid;
    //品牌名称
    private String brandname;
     //品牌地址
     private String url;
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tbrand tbrand = (Tbrand) o;

        return brandid.equals(tbrand.brandid);
    }

    @Override
    public int hashCode() {
        return brandid.hashCode();
    }

    public String getBrandid() {
        return brandid;
    }

    public void setBrandid(String brandid) {
        this.brandid = brandid;
    }

    public String getBrandname() {
        return brandname;
    }

    public void setBrandname(String brandname) {
        this.brandname = brandname;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Tbrand{" +
                "brandid='" + brandid + '\'' +
                ", brandname='" + brandname + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
