package com.jk.model;

import java.io.Serializable;

//商品详情图片表
public class Tdetails implements Serializable{
    private static final long serialVersionUID = 2736243936483524550L;
    //主键id
    private String detailsid;
    //基本信息表id
    private String dbasid;
    //图片名称
    private String imgurl;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tdetails tdetails = (Tdetails) o;

        return detailsid.equals(tdetails.detailsid);
    }

    @Override
    public int hashCode() {
        return detailsid.hashCode();
    }

    public String getDetailsid() {
        return detailsid;
    }

    public void setDetailsid(String detailsid) {
        this.detailsid = detailsid;
    }

    public String getDbasid() {
        return dbasid;
    }

    public void setDbasid(String dbasid) {
        this.dbasid = dbasid;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    @Override
    public String toString() {
        return "Tdetails{" +
                "detailsid='" + detailsid + '\'' +
                ", dbasid='" + dbasid + '\'' +
                ", imgurl='" + imgurl + '\'' +
                '}';
    }
}
