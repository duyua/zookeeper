package com.jk.model;

import java.io.Serializable;

//商品分类表
public class Tclass implements Serializable{
    private static final long serialVersionUID = -3057838974723854188L;

    //主键id
    private String classid;

    //商品名称
    private String classname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tclass tclass = (Tclass) o;

        return classid.equals(tclass.classid);
    }

    @Override
    public int hashCode() {
        return classid.hashCode();
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    @Override
    public String toString() {
        return "Tclass{" +
                "classid='" + classid + '\'' +
                ", classname='" + classname + '\'' +
                '}';
    }
}
