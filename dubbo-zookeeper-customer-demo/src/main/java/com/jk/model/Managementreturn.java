package com.jk.model;

import java.io.Serializable;

//退货管理
public class Managementreturn implements Serializable{
    private static final long serialVersionUID = 6157121386226996323L;
    //主键id
    private String returnid;
    //退货编号
    private String returnnumber;
    //配送方式 关联配送表id
    private String returndeliveryid;
    //物流公司 关联物流公司id
    private String returnlogisticsid;
    //运单号
    private String returnwaybill;
    //发货人
    private String returnshipper;
    //创建时间
    private String returncreatdate;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Managementreturn that = (Managementreturn) o;

        return returnid.equals(that.returnid);
    }

    @Override
    public int hashCode() {
        return returnid.hashCode();
    }

    public String getReturnid() {
        return returnid;
    }

    public void setReturnid(String returnid) {
        this.returnid = returnid;
    }

    public String getReturnnumber() {
        return returnnumber;
    }

    public void setReturnnumber(String returnnumber) {
        this.returnnumber = returnnumber;
    }

    public String getReturndeliveryid() {
        return returndeliveryid;
    }

    public void setReturndeliveryid(String returndeliveryid) {
        this.returndeliveryid = returndeliveryid;
    }

    public String getReturnlogisticsid() {
        return returnlogisticsid;
    }

    public void setReturnlogisticsid(String returnlogisticsid) {
        this.returnlogisticsid = returnlogisticsid;
    }

    public String getReturnwaybill() {
        return returnwaybill;
    }

    public void setReturnwaybill(String returnwaybill) {
        this.returnwaybill = returnwaybill;
    }

    public String getReturnshipper() {
        return returnshipper;
    }

    public void setReturnshipper(String returnshipper) {
        this.returnshipper = returnshipper;
    }

    public String getReturncreatdate() {
        return returncreatdate;
    }

    public void setReturncreatdate(String returncreatdate) {
        this.returncreatdate = returncreatdate;
    }

    @Override
    public String toString() {
        return "Managementreturn{" +
                "returnid='" + returnid + '\'' +
                ", returnnumber='" + returnnumber + '\'' +
                ", returndeliveryid='" + returndeliveryid + '\'' +
                ", returnlogisticsid='" + returnlogisticsid + '\'' +
                ", returnwaybill='" + returnwaybill + '\'' +
                ", returnshipper='" + returnshipper + '\'' +
                ", returncreatdate='" + returncreatdate + '\'' +
                '}';
    }
}
