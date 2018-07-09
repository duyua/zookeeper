package com.jk.model;

import java.io.Serializable;

//支付方式表
public class Systempayment implements Serializable{

    private static final long serialVersionUID = 1028917835090962835L;
    //主键id
    private String paymentid;
    //支付方式名称
    private String paymentname;
    //支付方式 1、线上2、线下
    private Integer paymenttype;
    //超时时间
    private String paymentovertime;
    //支持配送方式 1、普通2、顺丰
    private Integer paymentdelivery;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Systempayment that = (Systempayment) o;

        return paymentid.equals(that.paymentid);
    }

    @Override
    public int hashCode() {
        return paymentid.hashCode();
    }

    public String getPaymentid() {
        return paymentid;
    }

    public void setPaymentid(String paymentid) {
        this.paymentid = paymentid;
    }

    public String getPaymentname() {
        return paymentname;
    }

    public void setPaymentname(String paymentname) {
        this.paymentname = paymentname;
    }

    public Integer getPaymenttype() {
        return paymenttype;
    }

    public void setPaymenttype(Integer paymenttype) {
        this.paymenttype = paymenttype;
    }

    public String getPaymentovertime() {
        return paymentovertime;
    }

    public void setPaymentovertime(String paymentovertime) {
        this.paymentovertime = paymentovertime;
    }

    public Integer getPaymentdelivery() {
        return paymentdelivery;
    }

    public void setPaymentdelivery(Integer paymentdelivery) {
        this.paymentdelivery = paymentdelivery;
    }

    @Override
    public String toString() {
        return "Systempayment{" +
                "paymentid='" + paymentid + '\'' +
                ", paymentname='" + paymentname + '\'' +
                ", paymenttype=" + paymenttype +
                ", paymentovertime='" + paymentovertime + '\'' +
                ", paymentdelivery=" + paymentdelivery +
                '}';
    }
}
