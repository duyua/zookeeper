package com.jk.model;

import java.io.Serializable;

//商品尺码表衣服
public class Tclothes implements Serializable{
    private static final long serialVersionUID = -8625994699287419769L;
    //主键id
    private String clothesid;
    //商品基本信息表id
    private String basid;
    //衣服尺码名称
    private String clothesname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tclothes tclothes = (Tclothes) o;

        return clothesid.equals(tclothes.clothesid);
    }

    @Override
    public int hashCode() {
        return clothesid.hashCode();
    }

    public String getClothesid() {
        return clothesid;
    }

    public void setClothesid(String clothesid) {
        this.clothesid = clothesid;
    }

    public String getBasid() {
        return basid;
    }

    public void setBasid(String basid) {
        this.basid = basid;
    }

    public String getClothesname() {
        return clothesname;
    }

    public void setClothesname(String clothesname) {
        this.clothesname = clothesname;
    }

    @Override
    public String toString() {
        return "Tclothes{" +
                "clothesid='" + clothesid + '\'' +
                ", basid='" + basid + '\'' +
                ", clothesname='" + clothesname + '\'' +
                '}';
    }
}
