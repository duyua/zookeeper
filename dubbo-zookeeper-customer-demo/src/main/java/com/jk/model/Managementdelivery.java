package com.jk.model;

import java.io.Serializable;

//发货管理表
public class Managementdelivery implements Serializable{

    private static final long serialVersionUID = -2334855270282750214L;
    //主键id
    private String deliveryid;
    //发货编号
    private String deliverynumber;
    //配送方式 关联配送方式表id
    private String deliveryids;
    //  物流公司   关联物流公司id
    private String deliverylogisticsid;
    //运单号
    private String deliverywaybill;
    //收货人
    private String deliveryconsignee;
    //创建时间
    private String deliverycreatdate;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Managementdelivery that = (Managementdelivery) o;

        return deliveryid.equals(that.deliveryid);
    }

    @Override
    public int hashCode() {
        return deliveryid.hashCode();
    }

    public String getDeliveryid() {
        return deliveryid;
    }

    public void setDeliveryid(String deliveryid) {
        this.deliveryid = deliveryid;
    }

    public String getDeliverynumber() {
        return deliverynumber;
    }

    public void setDeliverynumber(String deliverynumber) {
        this.deliverynumber = deliverynumber;
    }

    public String getDeliveryids() {
        return deliveryids;
    }

    public void setDeliveryids(String deliveryids) {
        this.deliveryids = deliveryids;
    }

    public String getDeliverylogisticsid() {
        return deliverylogisticsid;
    }

    public void setDeliverylogisticsid(String deliverylogisticsid) {
        this.deliverylogisticsid = deliverylogisticsid;
    }

    public String getDeliverywaybill() {
        return deliverywaybill;
    }

    public void setDeliverywaybill(String deliverywaybill) {
        this.deliverywaybill = deliverywaybill;
    }

    public String getDeliveryconsignee() {
        return deliveryconsignee;
    }

    public void setDeliveryconsignee(String deliveryconsignee) {
        this.deliveryconsignee = deliveryconsignee;
    }

    public String getDeliverycreatdate() {
        return deliverycreatdate;
    }

    public void setDeliverycreatdate(String deliverycreatdate) {
        this.deliverycreatdate = deliverycreatdate;
    }

    @Override
    public String toString() {
        return "Managementdelivery{" +
                "deliveryid='" + deliveryid + '\'' +
                ", deliverynumber='" + deliverynumber + '\'' +
                ", deliveryids='" + deliveryids + '\'' +
                ", deliverylogisticsid='" + deliverylogisticsid + '\'' +
                ", deliverywaybill='" + deliverywaybill + '\'' +
                ", deliveryconsignee='" + deliveryconsignee + '\'' +
                ", deliverycreatdate='" + deliverycreatdate + '\'' +
                '}';
    }
}
