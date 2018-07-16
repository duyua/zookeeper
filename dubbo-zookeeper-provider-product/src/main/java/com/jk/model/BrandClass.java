package com.jk.model;

import java.io.Serializable;

public class BrandClass implements Serializable{
    private static final long serialVersionUID = 1696474669158891631L;
    private String id;
    private String classid;
    private String brandid;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BrandClass that = (BrandClass) o;

        return id.equals(that.id);
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

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public String getBrandid() {
        return brandid;
    }

    public void setBrandid(String brandid) {
        this.brandid = brandid;
    }

    @Override
    public String toString() {
        return "BrandClass{" +
                "id='" + id + '\'' +
                ", classid='" + classid + '\'' +
                ", brandid='" + brandid + '\'' +
                '}';
    }
}
