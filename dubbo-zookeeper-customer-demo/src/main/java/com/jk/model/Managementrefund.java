package com.jk.model;

import java.io.Serializable;
//退款管理表
public class Managementrefund implements Serializable{
    private static final long serialVersionUID = 8218590411360907592L;
    //主键id
    private String refundid;
    //退款编号
    private String refundnumber;
    //支付方式  关联支付方式表id
    private String refundpaymentid;
    //退款金额
    private Double refundmoney;
    //收款人  关联会员详情表id
    private String refundmemberbasicid;
    //创建时间
    private String refundcreatdate;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Managementrefund that = (Managementrefund) o;

        return refundid.equals(that.refundid);
    }

    @Override
    public int hashCode() {
        return refundid.hashCode();
    }

    public String getRefundid() {
        return refundid;
    }

    public void setRefundid(String refundid) {
        this.refundid = refundid;
    }

    public String getRefundnumber() {
        return refundnumber;
    }

    public void setRefundnumber(String refundnumber) {
        this.refundnumber = refundnumber;
    }

    public String getRefundpaymentid() {
        return refundpaymentid;
    }

    public void setRefundpaymentid(String refundpaymentid) {
        this.refundpaymentid = refundpaymentid;
    }

    public Double getRefundmoney() {
        return refundmoney;
    }

    public void setRefundmoney(Double refundmoney) {
        this.refundmoney = refundmoney;
    }

    public String getRefundmemberbasicid() {
        return refundmemberbasicid;
    }

    public void setRefundmemberbasicid(String refundmemberbasicid) {
        this.refundmemberbasicid = refundmemberbasicid;
    }

    public String getRefundcreatdate() {
        return refundcreatdate;
    }

    public void setRefundcreatdate(String refundcreatdate) {
        this.refundcreatdate = refundcreatdate;
    }

    @Override
    public String toString() {
        return "Managementrefund{" +
                "refundid='" + refundid + '\'' +
                ", refundnumber='" + refundnumber + '\'' +
                ", refundpaymentid='" + refundpaymentid + '\'' +
                ", refundmoney=" + refundmoney +
                ", refundmemberbasicid='" + refundmemberbasicid + '\'' +
                ", refundcreatdate='" + refundcreatdate + '\'' +
                '}';
    }
}
