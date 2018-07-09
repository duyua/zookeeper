package com.jk.model;

import java.io.Serializable;
//物流公司表
public class Systemlogistics implements Serializable{

    private static final long serialVersionUID = 2545984409057845536L;
    //主键id
    private String logisticsid;
    //物流公司名称
    private String logisticsname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Systemlogistics that = (Systemlogistics) o;

        return logisticsid.equals(that.logisticsid);
    }

    @Override
    public int hashCode() {
        return logisticsid.hashCode();
    }

    public String getLogisticsid() {
        return logisticsid;
    }

    public void setLogisticsid(String logisticsid) {
        this.logisticsid = logisticsid;
    }

    public String getLogisticsname() {
        return logisticsname;
    }

    public void setLogisticsname(String logisticsname) {
        this.logisticsname = logisticsname;
    }

    @Override
    public String toString() {
        return "Systemlogistics{" +
                "logisticsid='" + logisticsid + '\'' +
                ", logisticsname='" + logisticsname + '\'' +
                '}';
    }
}
