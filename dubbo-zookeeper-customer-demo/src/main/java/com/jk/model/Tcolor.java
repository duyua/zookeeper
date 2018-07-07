package com.jk.model;

import java.io.Serializable;

//商品颜色表
public class Tcolor implements Serializable{
    private static final long serialVersionUID = 9183596290641789575L;
    //主键id
    private String colorid;
    //商品基本信息表id
    private String cbasicid;
    //颜色名称
    private String colorname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tcolor tcolor = (Tcolor) o;

        return colorid.equals(tcolor.colorid);
    }

    @Override
    public int hashCode() {
        return colorid.hashCode();
    }

    public String getColorid() {
        return colorid;
    }

    public void setColorid(String colorid) {
        this.colorid = colorid;
    }

    public String getCbasicid() {
        return cbasicid;
    }

    public void setCbasicid(String cbasicid) {
        this.cbasicid = cbasicid;
    }

    public String getColorname() {
        return colorname;
    }

    public void setColorname(String colorname) {
        this.colorname = colorname;
    }

    @Override
    public String toString() {
        return "Tcolor{" +
                "colorid='" + colorid + '\'' +
                ", cbasicid='" + cbasicid + '\'' +
                ", colorname='" + colorname + '\'' +
                '}';
    }
}
