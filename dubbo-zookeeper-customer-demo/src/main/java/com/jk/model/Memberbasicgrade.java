package com.jk.model;

import java.io.Serializable;

//会员等级表
public class Memberbasicgrade implements Serializable{
    private static final long serialVersionUID = 697076736220065306L;
    //主键id
    private String gradeid;
    //等级名称
    private String gradename;
    //优惠比例
    private Double gradediscounts;
    //消费金额升等级
    private Double grademonetary;
    //等级状态1、默认2、特殊
    private Integer gradestatus;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Memberbasicgrade that = (Memberbasicgrade) o;

        return gradeid.equals(that.gradeid);
    }

    @Override
    public int hashCode() {
        return gradeid.hashCode();
    }

    public String getGradeid() {
        return gradeid;
    }

    public void setGradeid(String gradeid) {
        this.gradeid = gradeid;
    }

    public String getGradename() {
        return gradename;
    }

    public void setGradename(String gradename) {
        this.gradename = gradename;
    }

    public Double getGradediscounts() {
        return gradediscounts;
    }

    public void setGradediscounts(Double gradediscounts) {
        this.gradediscounts = gradediscounts;
    }

    public Double getGrademonetary() {
        return grademonetary;
    }

    public void setGrademonetary(Double grademonetary) {
        this.grademonetary = grademonetary;
    }

    public Integer getGradestatus() {
        return gradestatus;
    }

    public void setGradestatus(Integer gradestatus) {
        this.gradestatus = gradestatus;
    }

    @Override
    public String toString() {
        return "Memberbasicgrade{" +
                "gradeid='" + gradeid + '\'' +
                ", gradename='" + gradename + '\'' +
                ", gradediscounts=" + gradediscounts +
                ", grademonetary=" + grademonetary +
                ", gradestatus=" + gradestatus +
                '}';
    }
}
