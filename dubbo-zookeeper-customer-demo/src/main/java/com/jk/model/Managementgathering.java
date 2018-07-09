package com.jk.model;

import java.io.Serializable;
//收款管理表
public class Managementgathering implements Serializable{

    private static final long serialVersionUID = 7255271149820533913L;
    //主键id
    private String gatheringid;
    //收款编号
    private String gatheringnumber;
    //支付方式id 关联支付方式id
    private String gatheringpaymentid;
    //付款金额
    private Double gatheringmoney;
    //会员id 关联会员详情表id
    private String gatheringmemberbasicid;
    //订单编号 关联订单表id
    private String gatheringmanagementnumberid;
    //状态1、收款成功2、未收款
    private Integer gatheringstatus;
    //创建时间
    private String gatheringcreatdate;
    //付款时间
    private String gatheringpaymentdate;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Managementgathering that = (Managementgathering) o;

        return gatheringid.equals(that.gatheringid);
    }

    @Override
    public int hashCode() {
        return gatheringid.hashCode();
    }

    public String getGatheringid() {
        return gatheringid;
    }

    public void setGatheringid(String gatheringid) {
        this.gatheringid = gatheringid;
    }

    public String getGatheringnumber() {
        return gatheringnumber;
    }

    public void setGatheringnumber(String gatheringnumber) {
        this.gatheringnumber = gatheringnumber;
    }

    public String getGatheringpaymentid() {
        return gatheringpaymentid;
    }

    public void setGatheringpaymentid(String gatheringpaymentid) {
        this.gatheringpaymentid = gatheringpaymentid;
    }

    public Double getGatheringmoney() {
        return gatheringmoney;
    }

    public void setGatheringmoney(Double gatheringmoney) {
        this.gatheringmoney = gatheringmoney;
    }

    public String getGatheringmemberbasicid() {
        return gatheringmemberbasicid;
    }

    public void setGatheringmemberbasicid(String gatheringmemberbasicid) {
        this.gatheringmemberbasicid = gatheringmemberbasicid;
    }

    public String getGatheringmanagementnumberid() {
        return gatheringmanagementnumberid;
    }

    public void setGatheringmanagementnumberid(String gatheringmanagementnumberid) {
        this.gatheringmanagementnumberid = gatheringmanagementnumberid;
    }

    public Integer getGatheringstatus() {
        return gatheringstatus;
    }

    public void setGatheringstatus(Integer gatheringstatus) {
        this.gatheringstatus = gatheringstatus;
    }

    public String getGatheringcreatdate() {
        return gatheringcreatdate;
    }

    public void setGatheringcreatdate(String gatheringcreatdate) {
        this.gatheringcreatdate = gatheringcreatdate;
    }

    public String getGatheringpaymentdate() {
        return gatheringpaymentdate;
    }

    public void setGatheringpaymentdate(String gatheringpaymentdate) {
        this.gatheringpaymentdate = gatheringpaymentdate;
    }

    @Override
    public String toString() {
        return "Managementgathering{" +
                "gatheringid='" + gatheringid + '\'' +
                ", gatheringnumber='" + gatheringnumber + '\'' +
                ", gatheringpaymentid='" + gatheringpaymentid + '\'' +
                ", gatheringmoney=" + gatheringmoney +
                ", gatheringmemberbasicid='" + gatheringmemberbasicid + '\'' +
                ", gatheringmanagementnumberid='" + gatheringmanagementnumberid + '\'' +
                ", gatheringstatus=" + gatheringstatus +
                ", gatheringcreatdate='" + gatheringcreatdate + '\'' +
                ", gatheringpaymentdate='" + gatheringpaymentdate + '\'' +
                '}';
    }
}
