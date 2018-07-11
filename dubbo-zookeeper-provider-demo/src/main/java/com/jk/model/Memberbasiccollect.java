package com.jk.model;

import java.io.Serializable;

//收藏表
public class Memberbasiccollect implements Serializable{
    private static final long serialVersionUID = 4173275313750168485L;
    //主键id
    private String collectid;
    //收藏人id 关联会员详情表id
    private String collectmemberbasicid;
    //商品id
    private String collectbasrcid;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Memberbasiccollect that = (Memberbasiccollect) o;

        return collectid.equals(that.collectid);
    }

    @Override
    public int hashCode() {
        return collectid.hashCode();
    }

    public String getCollectid() {
        return collectid;
    }

    public void setCollectid(String collectid) {
        this.collectid = collectid;
    }

    public String getCollectmemberbasicid() {
        return collectmemberbasicid;
    }

    public void setCollectmemberbasicid(String collectmemberbasicid) {
        this.collectmemberbasicid = collectmemberbasicid;
    }

    public String getCollectbasrcid() {
        return collectbasrcid;
    }

    public void setCollectbasrcid(String collectbasrcid) {
        this.collectbasrcid = collectbasrcid;
    }

    @Override
    public String toString() {
        return "Memberbasiccollect{" +
                "collectid='" + collectid + '\'' +
                ", collectmemberbasicid='" + collectmemberbasicid + '\'' +
                ", collectbasrcid='" + collectbasrcid + '\'' +
                '}';
    }
}
