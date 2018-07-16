package com.jk.model;

import java.io.Serializable;

//商品参数表
public class Tparameter implements Serializable{
    private static final long serialVersionUID = 2484022199456037501L;
    //主键id
    private String parameterid;
    //参数名称
    private String parametername;
    //商品分类表id
    private String typeid;
    //参数排序
    private Integer parametersort;
    //业务字段参数详细名称
    private  String minutename;
    //业务字段参数详细排序
    private  String detailedsort;
    //业务字段参数详细id
    private String detailedid;

    //参数分类业务字段
    private String  parameterclassname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tparameter that = (Tparameter) o;

        return parameterid.equals(that.parameterid);
    }

    @Override
    public int hashCode() {
        return parameterid.hashCode();
    }

    public String getParameterid() {
        return parameterid;
    }

    public void setParameterid(String parameterid) {
        this.parameterid = parameterid;
    }

    public String getParametername() {
        return parametername;
    }

    public void setParametername(String parametername) {
        this.parametername = parametername;
    }

    public String getTypeid() {
        return typeid;
    }

    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    public Integer getParametersort() {
        return parametersort;
    }

    public void setParametersort(Integer parametersort) {
        this.parametersort = parametersort;
    }

    public String getMinutename() {
        return minutename;
    }

    public void setMinutename(String minutename) {
        this.minutename = minutename;
    }

    public String getDetailedsort() {
        return detailedsort;
    }

    public void setDetailedsort(String detailedsort) {
        this.detailedsort = detailedsort;
    }

    public String getDetailedid() {
        return detailedid;
    }

    public void setDetailedid(String detailedid) {
        this.detailedid = detailedid;
    }

    public String getParameterclassname() {
        return parameterclassname;
    }

    public void setParameterclassname(String parameterclassname) {
        this.parameterclassname = parameterclassname;
    }

    @Override
    public String toString() {
        return "Tparameter{" +
                "parameterid='" + parameterid + '\'' +
                ", parametername='" + parametername + '\'' +
                ", typeid='" + typeid + '\'' +
                ", parametersort=" + parametersort +
                ", minutename='" + minutename + '\'' +
                ", detailedsort=" + detailedsort +
                ", detailedid='" + detailedid + '\'' +
                ", parameterclassname='" + parameterclassname + '\'' +
                '}';
    }
}
