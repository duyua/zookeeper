package com.jk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

//商品分类表
public class Tclass implements Serializable{
    private static final long serialVersionUID = -3057838974723854188L;

    //主键id
    private String id;

    //商品名称
    private String name;
    //商品分类pid
    private String pid;
    //分类品牌id
    private String classbrandid;
    //分类排序
    private Integer classsort;
    //递归查询封装
    private List<Tclass> children=new ArrayList<Tclass>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tclass tclass = (Tclass) o;

        return id.equals(tclass.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getClassbrandid() {
        return classbrandid;
    }

    public void setClassbrandid(String classbrandid) {
        this.classbrandid = classbrandid;
    }

    public Integer getClasssort() {
        return classsort;
    }

    public void setClasssort(Integer classsort) {
        this.classsort = classsort;
    }

    public List<Tclass> getChildren() {
        return children;
    }

    public void setChildren(List<Tclass> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "Tclass{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", pid='" + pid + '\'' +
                ", classbrandid='" + classbrandid + '\'' +
                ", classsort=" + classsort +
                ", children=" + children +
                '}';
    }
}
