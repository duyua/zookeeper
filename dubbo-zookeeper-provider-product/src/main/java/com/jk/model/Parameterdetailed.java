package com.jk.model;

import java.io.Serializable;

public class Parameterdetailed implements Serializable{
    private String  detailedid;
    private String  detailedparameterid;
    private Integer  detailedsort;
    private String   minutename;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Parameterdetailed that = (Parameterdetailed) o;

        return detailedid.equals(that.detailedid);
    }

    @Override
    public int hashCode() {
        return detailedid.hashCode();
    }

    public String getDetailedid() {
        return detailedid;
    }

    public void setDetailedid(String detailedid) {
        this.detailedid = detailedid;
    }

    public String getDetailedparameterid() {
        return detailedparameterid;
    }

    public void setDetailedparameterid(String detailedparameterid) {
        this.detailedparameterid = detailedparameterid;
    }

    public Integer getDetailedsort() {
        return detailedsort;
    }

    public void setDetailedsort(Integer detailedsort) {
        this.detailedsort = detailedsort;
    }

    public String getMinutename() {
        return minutename;
    }

    public void setMinutename(String minutename) {
        this.minutename = minutename;
    }

    @Override
    public String toString() {
        return "Parameterdetailed{" +
                "detailedid='" + detailedid + '\'' +
                ", detailedparameterid='" + detailedparameterid + '\'' +
                ", detailedsort=" + detailedsort +
                ", minutename='" + minutename + '\'' +
                '}';
    }
}
