package com.jk.model;

import java.io.Serializable;

//商品介绍表
public class Tintroduce implements Serializable{
    private static final long serialVersionUID = -8794375869954032645L;
    //主键id
    private String introduceid;
    //基本信息表id
    private String ibasid;
    //介绍内容
    private String introducename;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tintroduce that = (Tintroduce) o;

        return introduceid.equals(that.introduceid);
    }

    @Override
    public int hashCode() {
        return introduceid.hashCode();
    }

    public String getIntroduceid() {
        return introduceid;
    }

    public void setIntroduceid(String introduceid) {
        this.introduceid = introduceid;
    }

    public String getIbasid() {
        return ibasid;
    }

    public void setIbasid(String ibasid) {
        this.ibasid = ibasid;
    }

    public String getIntroducename() {
        return introducename;
    }

    public void setIntroducename(String introducename) {
        this.introducename = introducename;
    }

    @Override
    public String toString() {
        return "Tintroduce{" +
                "introduceid='" + introduceid + '\'' +
                ", ibasid='" + ibasid + '\'' +
                ", introducename='" + introducename + '\'' +
                '}';
    }
}
