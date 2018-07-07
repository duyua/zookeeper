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

    @Override
    public String toString() {
        return "Tparameter{" +
                "parameterid='" + parameterid + '\'' +
                ", parametername='" + parametername + '\'' +
                ", typeid='" + typeid + '\'' +
                '}';
    }
}
