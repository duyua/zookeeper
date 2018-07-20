package com.jk.model;

import java.io.Serializable;

public class Cart implements Serializable{
    private static final long serialVersionUID = 6129940881923166043L;
    private  String  cartid;
    private  String  cartuserid;
    private  String  cartbasicid;
    private  String  basicname;
    private  Double  basicprice;
    private  String  basicsize;
    private  String  basicnumber;
    private  Double  basicsumprice;
    private  Integer basiccount;
    private  String  basiccolor;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Cart cart = (Cart) o;

        return cartid.equals(cart.cartid);
    }

    @Override
    public int hashCode() {
        return cartid.hashCode();
    }

    public String getCartid() {
        return cartid;
    }

    public void setCartid(String cartid) {
        this.cartid = cartid;
    }

    public String getCartuserid() {
        return cartuserid;
    }

    public void setCartuserid(String cartuserid) {
        this.cartuserid = cartuserid;
    }

    public String getCartbasicid() {
        return cartbasicid;
    }

    public void setCartbasicid(String cartbasicid) {
        this.cartbasicid = cartbasicid;
    }

    public String getBasicname() {
        return basicname;
    }

    public void setBasicname(String basicname) {
        this.basicname = basicname;
    }

    public Double getBasicprice() {
        return basicprice;
    }

    public void setBasicprice(Double basicprice) {
        this.basicprice = basicprice;
    }

    public String getBasicsize() {
        return basicsize;
    }

    public void setBasicsize(String basicsize) {
        this.basicsize = basicsize;
    }

    public String getBasicnumber() {
        return basicnumber;
    }

    public void setBasicnumber(String basicnumber) {
        this.basicnumber = basicnumber;
    }

    public Double getBasicsumprice() {
        return basicsumprice;
    }

    public void setBasicsumprice(Double basicsumprice) {
        this.basicsumprice = basicsumprice;
    }

    public Integer getBasiccount() {
        return basiccount;
    }

    public void setBasiccount(Integer basiccount) {
        this.basiccount = basiccount;
    }

    public String getBasiccolor() {
        return basiccolor;
    }

    public void setBasiccolor(String basiccolor) {
        this.basiccolor = basiccolor;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cartid='" + cartid + '\'' +
                ", cartuserid='" + cartuserid + '\'' +
                ", cartbasicid='" + cartbasicid + '\'' +
                ", basicname='" + basicname + '\'' +
                ", basicprice=" + basicprice +
                ", basicsize='" + basicsize + '\'' +
                ", basicnumber='" + basicnumber + '\'' +
                ", basicsumprice=" + basicsumprice +
                ", basiccount=" + basiccount +
                ", basiccolor='" + basiccolor + '\'' +
                '}';
    }
}
