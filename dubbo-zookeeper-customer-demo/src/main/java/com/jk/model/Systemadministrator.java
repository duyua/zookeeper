package com.jk.model;

import java.io.Serializable;
//管理员表
public class Systemadministrator implements Serializable{

    private static final long serialVersionUID = -1113279418742464913L;
    //主键id
    private String administratorid;
    //管理员姓名
    private String administratorname;
    //管理员密码
    private String administratorpassword;
    //管理员邮箱
    private String administratoremail ;
    //管理员角色  关联角色表id
    private String administratorroleid;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Systemadministrator that = (Systemadministrator) o;

        return administratorid.equals(that.administratorid);
    }

    @Override
    public int hashCode() {
        return administratorid.hashCode();
    }

    public String getAdministratorid() {
        return administratorid;
    }

    public void setAdministratorid(String administratorid) {
        this.administratorid = administratorid;
    }

    public String getAdministratorname() {
        return administratorname;
    }

    public void setAdministratorname(String administratorname) {
        this.administratorname = administratorname;
    }

    public String getAdministratorpassword() {
        return administratorpassword;
    }

    public void setAdministratorpassword(String administratorpassword) {
        this.administratorpassword = administratorpassword;
    }

    public String getAdministratoremail() {
        return administratoremail;
    }

    public void setAdministratoremail(String administratoremail) {
        this.administratoremail = administratoremail;
    }

    public String getAdministratorroleid() {
        return administratorroleid;
    }

    public void setAdministratorroleid(String administratorroleid) {
        this.administratorroleid = administratorroleid;
    }

    @Override
    public String toString() {
        return "Systemadministrator{" +
                "administratorid='" + administratorid + '\'' +
                ", administratorname='" + administratorname + '\'' +
                ", administratorpassword='" + administratorpassword + '\'' +
                ", administratoremail='" + administratoremail + '\'' +
                ", administratorroleid='" + administratorroleid + '\'' +
                '}';
    }
}
