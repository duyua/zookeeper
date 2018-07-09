package com.jk.model;

import java.io.Serializable;
//配送方式表
public class Systemdelivery implements Serializable{
    private static final long serialVersionUID = -3362098158648750518L;
    //主键id
    private String deliveryid;
    //配送方式名称
    private String deliveryname;
    //物流公司 关联物流公司id
    private String deliverylogisticsid;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Systemdelivery that = (Systemdelivery) o;

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

    public String getDeliveryname() {
        return deliveryname;
    }

    public void setDeliveryname(String deliveryname) {
        this.deliveryname = deliveryname;
    }

    public String getDeliverylogisticsid() {
        return deliverylogisticsid;
    }

    public void setDeliverylogisticsid(String deliverylogisticsid) {
        this.deliverylogisticsid = deliverylogisticsid;
    }

    @Override
    public String toString() {
        return "Systemdelivery{" +
                "deliveryid='" + deliveryid + '\'' +
                ", deliveryname='" + deliveryname + '\'' +
                ", deliverylogisticsid='" + deliverylogisticsid + '\'' +
                '}';
    }
}
