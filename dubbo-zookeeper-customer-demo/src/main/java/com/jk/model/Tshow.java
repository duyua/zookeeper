package com.jk.model;

import java.io.Serializable;

//商品展示图片表
public class Tshow implements Serializable {

    private static final long serialVersionUID = -7539464290244068136L;
    //主键id
    private String showid;
    //图片名称
    private String imgname;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tshow tshow = (Tshow) o;

        return showid.equals(tshow.showid);
    }

    @Override
    public int hashCode() {
        return showid.hashCode();
    }

    public String getShowid() {
        return showid;
    }

    public void setShowid(String showid) {
        this.showid = showid;
    }

    public String getImgname() {
        return imgname;
    }

    public void setImgname(String imgname) {
        this.imgname = imgname;
    }

    @Override
    public String toString() {
        return "Tshow{" +
                "showid='" + showid + '\'' +
                ", imgname='" + imgname + '\'' +
                '}';
    }
}
