package com.jk.model;

import java.io.Serializable;

//订单管理表
public class Management implements Serializable{
    private static final long serialVersionUID = -8295740203533091279L;
    //主键id
    private String managementid;
    //订单编号
    private String managementnumber;
    //订单金额
    private Double managementamount;
    //会员id 关联会员详情表id
    private String managementmemberid;
    //收货人
    private String managementconsignee;
    //支付方式  关联支付方式表id
    private String managementpaymentid;
    //配送方式  关联配送方式表id
    private String  managementdeliveryid;
    //订单状态
//1、未付款2、已付款、3、审核通过4、已发货5、已确认收货
    private Integer managementstatus;
    // 支付状态 1、未支付2、已支付
    private Integer managementpaymentstatus;
    //配送状态
//1、未发货2、已发货3、确认收货
    private Integer managementdeliverystatus;
    //订单创建时间
    private String managementcreatdate;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Management that = (Management) o;

        return managementid.equals(that.managementid);
    }

    @Override
    public int hashCode() {
        return managementid.hashCode();
    }

    public String getManagementid() {
        return managementid;
    }

    public void setManagementid(String managementid) {
        this.managementid = managementid;
    }

    public String getManagementnumber() {
        return managementnumber;
    }

    public void setManagementnumber(String managementnumber) {
        this.managementnumber = managementnumber;
    }

    public Double getManagementamount() {
        return managementamount;
    }

    public void setManagementamount(Double managementamount) {
        this.managementamount = managementamount;
    }

    public String getManagementmemberid() {
        return managementmemberid;
    }

    public void setManagementmemberid(String managementmemberid) {
        this.managementmemberid = managementmemberid;
    }

    public String getManagementconsignee() {
        return managementconsignee;
    }

    public void setManagementconsignee(String managementconsignee) {
        this.managementconsignee = managementconsignee;
    }

    public String getManagementpaymentid() {
        return managementpaymentid;
    }

    public void setManagementpaymentid(String managementpaymentid) {
        this.managementpaymentid = managementpaymentid;
    }

    public String getManagementdeliveryid() {
        return managementdeliveryid;
    }

    public void setManagementdeliveryid(String managementdeliveryid) {
        this.managementdeliveryid = managementdeliveryid;
    }

    public Integer getManagementstatus() {
        return managementstatus;
    }

    public void setManagementstatus(Integer managementstatus) {
        this.managementstatus = managementstatus;
    }

    public Integer getManagementpaymentstatus() {
        return managementpaymentstatus;
    }

    public void setManagementpaymentstatus(Integer managementpaymentstatus) {
        this.managementpaymentstatus = managementpaymentstatus;
    }

    public Integer getManagementdeliverystatus() {
        return managementdeliverystatus;
    }

    public void setManagementdeliverystatus(Integer managementdeliverystatus) {
        this.managementdeliverystatus = managementdeliverystatus;
    }

    public String getManagementcreatdate() {
        return managementcreatdate;
    }

    public void setManagementcreatdate(String managementcreatdate) {
        this.managementcreatdate = managementcreatdate;
    }

    @Override
    public String toString() {
        return "Management{" +
                "managementid='" + managementid + '\'' +
                ", managementnumber='" + managementnumber + '\'' +
                ", managementamount=" + managementamount +
                ", managementmemberid='" + managementmemberid + '\'' +
                ", managementconsignee='" + managementconsignee + '\'' +
                ", managementpaymentid='" + managementpaymentid + '\'' +
                ", managementdeliveryid='" + managementdeliveryid + '\'' +
                ", managementstatus=" + managementstatus +
                ", managementpaymentstatus=" + managementpaymentstatus +
                ", managementdeliverystatus=" + managementdeliverystatus +
                ", managementcreatdate='" + managementcreatdate + '\'' +
                '}';
    }
}
