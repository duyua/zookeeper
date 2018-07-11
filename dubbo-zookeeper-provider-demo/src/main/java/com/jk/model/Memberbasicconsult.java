package com.jk.model;

import java.io.Serializable;

//咨询管理表
public class Memberbasicconsult implements Serializable{
    private static final long serialVersionUID = 2900539087070654198L;
    //主键id
    private String consultid;
    //关联商品详情表id
    private String consultbasrcid;
    //商品名称
    private String consultbasrcname;
    //咨询内容
    private String consultcount;
    //会员名称
    private String consultmemberbasicname;
    //是否显示状态 1、是2、否
    private Integer consultstatus;
    //是否回复  1、是2、否
    private Integer consultreplystatus;
    //创建时间
    private String consultcreatdate;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Memberbasicconsult that = (Memberbasicconsult) o;

        return consultid.equals(that.consultid);
    }

    @Override
    public int hashCode() {
        return consultid.hashCode();
    }

    public String getConsultid() {
        return consultid;
    }

    public void setConsultid(String consultid) {
        this.consultid = consultid;
    }

    public String getConsultbasrcid() {
        return consultbasrcid;
    }

    public void setConsultbasrcid(String consultbasrcid) {
        this.consultbasrcid = consultbasrcid;
    }

    public String getConsultbasrcname() {
        return consultbasrcname;
    }

    public void setConsultbasrcname(String consultbasrcname) {
        this.consultbasrcname = consultbasrcname;
    }

    public String getConsultcount() {
        return consultcount;
    }

    public void setConsultcount(String consultcount) {
        this.consultcount = consultcount;
    }

    public String getConsultmemberbasicname() {
        return consultmemberbasicname;
    }

    public void setConsultmemberbasicname(String consultmemberbasicname) {
        this.consultmemberbasicname = consultmemberbasicname;
    }

    public Integer getConsultstatus() {
        return consultstatus;
    }

    public void setConsultstatus(Integer consultstatus) {
        this.consultstatus = consultstatus;
    }

    public Integer getConsultreplystatus() {
        return consultreplystatus;
    }

    public void setConsultreplystatus(Integer consultreplystatus) {
        this.consultreplystatus = consultreplystatus;
    }

    public String getConsultcreatdate() {
        return consultcreatdate.substring(0,10);
    }

    public void setConsultcreatdate(String consultcreatdate) {
        this.consultcreatdate = consultcreatdate;
    }

    @Override
    public String toString() {
        return "Memberbasicconsult{" +
                "consultid='" + consultid + '\'' +
                ", consultbasrcid='" + consultbasrcid + '\'' +
                ", consultbasrcname='" + consultbasrcname + '\'' +
                ", consultcount='" + consultcount + '\'' +
                ", consultmemberbasicname='" + consultmemberbasicname + '\'' +
                ", consultstatus=" + consultstatus +
                ", consultreplystatus=" + consultreplystatus +
                ", consultcreatdate='" + consultcreatdate + '\'' +
                '}';
    }
}
