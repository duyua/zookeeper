package com.jk.model;

import java.io.Serializable;

//13.商品可选项表
public class Checkattr implements Serializable{

    private static final long serialVersionUID = -578853222208805447L;
    //主键id
    private String attrid;
    //名字
    private String attrname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Checkattr checkattr = (Checkattr) o;

        return attrid.equals(checkattr.attrid);
    }

    @Override
    public int hashCode() {
        return attrid.hashCode();
    }

    public String getAttrid() {
        return attrid;
    }

    public void setAttrid(String attrid) {
        this.attrid = attrid;
    }

    public String getAttrname() {
        return attrname;
    }

    public void setAttrname(String attrname) {
        this.attrname = attrname;
    }

    @Override
    public String toString() {
        return "Checkattr{" +
                "attrid='" + attrid + '\'' +
                ", attrname='" + attrname + '\'' +
                '}';
    }
}
