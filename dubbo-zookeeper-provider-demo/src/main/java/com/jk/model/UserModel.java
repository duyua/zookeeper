package com.jk.model;

import java.io.Serializable;

public class UserModel implements Serializable{
    private static final long serialVersionUID = -6177048374461911720L;
    private Integer t_userid;
    private String  t_username;
    private Integer t_usertype;
    private  String t_userpassword;

    public Integer getT_userid() {
        return t_userid;
    }

    public void setT_userid(Integer t_userid) {
        this.t_userid = t_userid;
    }

    public String getT_username() {
        return t_username;
    }

    public void setT_username(String t_username) {
        this.t_username = t_username;
    }

    public Integer getT_usertype() {
        return t_usertype;
    }

    public void setT_usertype(Integer t_usertype) {
        this.t_usertype = t_usertype;
    }

    public String getT_userpassword() {
        return t_userpassword;
    }

    public void setT_userpassword(String t_userpassword) {
        this.t_userpassword = t_userpassword;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserModel userModel = (UserModel) o;

        return t_userid.equals(userModel.t_userid);
    }

    @Override
    public int hashCode() {
        return t_userid.hashCode();
    }

    @Override
    public String toString() {
        return "UserModel{" +
                "t_userid=" + t_userid +
                ", t_username='" + t_username + '\'' +
                ", t_usertype=" + t_usertype +
                ", t_userpassword='" + t_userpassword + '\'' +
                '}';
    }
}
