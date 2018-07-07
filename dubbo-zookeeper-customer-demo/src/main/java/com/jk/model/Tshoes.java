package com.jk.model;

import java.io.Serializable;

//商品尺码表鞋
public class Tshoes implements Serializable{

    private static final long serialVersionUID = -2106838478394789427L;
    //主键id
    private String shoesid;
    //商品基本信息id
    private String sbasid;
    //鞋尺码名称
    private String shoesname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tshoes tshoes = (Tshoes) o;

        return shoesid.equals(tshoes.shoesid);
    }

    @Override
    public int hashCode() {
        return shoesid.hashCode();
    }

    public String getShoesid() {
        return shoesid;
    }

    public void setShoesid(String shoesid) {
        this.shoesid = shoesid;
    }

    public String getSbasid() {
        return sbasid;
    }

    public void setSbasid(String sbasid) {
        this.sbasid = sbasid;
    }

    public String getShoesname() {
        return shoesname;
    }

    public void setShoesname(String shoesname) {
        this.shoesname = shoesname;
    }


    @Override
    public String toString() {
        return "Tshoes{" +
                "shoesid='" + shoesid + '\'' +
                ", sbasid='" + sbasid + '\'' +
                ", shoesname='" + shoesname + '\'' +
                '}';
    }
}
