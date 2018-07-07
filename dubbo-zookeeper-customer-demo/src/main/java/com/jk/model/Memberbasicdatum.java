package com.jk.model;

import java.io.Serializable;

//会员个人资料表
public class Memberbasicdatum implements Serializable{
    private static final long serialVersionUID = 7764470908007040385L;
    //主键id
    private String datumid;
    //关联会员详情表id
    private String datummemberid;
    //会员姓名
    private String datumname;
    //会员性别 1、男2、女
    private Integer datumgender;
    //会员生日
    private String datumbrithday;
    //会员所在地区
    private String datumregion;
    //会员详细地址
    private String datumaddress;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Memberbasicdatum that = (Memberbasicdatum) o;

        return datumid.equals(that.datumid);
    }

    @Override
    public int hashCode() {
        return datumid.hashCode();
    }

    public String getDatumid() {
        return datumid;
    }

    public void setDatumid(String datumid) {
        this.datumid = datumid;
    }

    public String getDatummemberid() {
        return datummemberid;
    }

    public void setDatummemberid(String datummemberid) {
        this.datummemberid = datummemberid;
    }

    public String getDatumname() {
        return datumname;
    }

    public void setDatumname(String datumname) {
        this.datumname = datumname;
    }

    public Integer getDatumgender() {
        return datumgender;
    }

    public void setDatumgender(Integer datumgender) {
        this.datumgender = datumgender;
    }

    public String getDatumbrithday() {
        return datumbrithday;
    }

    public void setDatumbrithday(String datumbrithday) {
        this.datumbrithday = datumbrithday;
    }

    public String getDatumregion() {
        return datumregion;
    }

    public void setDatumregion(String datumregion) {
        this.datumregion = datumregion;
    }

    public String getDatumaddress() {
        return datumaddress;
    }

    public void setDatumaddress(String datumaddress) {
        this.datumaddress = datumaddress;
    }

    @Override
    public String toString() {
        return "Memberbasicdatum{" +
                "datumid='" + datumid + '\'' +
                ", datummemberid='" + datummemberid + '\'' +
                ", datumname='" + datumname + '\'' +
                ", datumgender=" + datumgender +
                ", datumbrithday='" + datumbrithday + '\'' +
                ", datumregion='" + datumregion + '\'' +
                ", datumaddress='" + datumaddress + '\'' +
                '}';
    }
}
