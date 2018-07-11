package com.jk.model;


import java.io.Serializable;
//商品属性表
public class Tattribute implements Serializable{

    private static final long serialVersionUID = 7872948424598532896L;

    //主键id
    private String attributeid;
    //名称
    private String attributename;
    //分类表id
    private String genreid;
    //属性类型名称
    private String attributegenrename;
    //业务字段
    private String classname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tattribute that = (Tattribute) o;

        return attributeid.equals(that.attributeid);
    }

    @Override
    public int hashCode() {
        return attributeid.hashCode();
    }

    public String getAttributeid() {
        return attributeid;
    }

    public void setAttributeid(String attributeid) {
        this.attributeid = attributeid;
    }

    public String getAttributename() {
        return attributename;
    }

    public void setAttributename(String attributename) {
        this.attributename = attributename;
    }

    public String getGenreid() {
        return genreid;
    }

    public void setGenreid(String genreid) {
        this.genreid = genreid;
    }

    public String getAttributegenrename() {
        return attributegenrename;
    }

    public void setAttributegenrename(String attributegenrename) {
        this.attributegenrename = attributegenrename;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    @Override
    public String toString() {
        return "Tattribute{" +
                "attributeid='" + attributeid + '\'' +
                ", attributename='" + attributename + '\'' +
                ", genreid='" + genreid + '\'' +
                ", attributegenrename='" + attributegenrename + '\'' +
                ", classname='" + classname + '\'' +
                '}';
    }
}
