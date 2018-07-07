package com.jk.model;

import java.io.Serializable;

//会员基本信息表
public class Memberbasic implements Serializable{
    private static final long serialVersionUID = 5223296429381395417L;
    //主键id
    private String memberbasicid;
    //会员登陆名称
    private String memberbasiclogname;
    //会员密码
    private String memberbasicpassword;
    //会员邮箱
    private String memberbasicemail;
    //会员积分
    private Integer memberbasicintegral;
    //会员账号余额
    private Double memberbasicbalance;
    //会员关联等级表id
    private String memberbasicgradeid;
    //会员状态  1、启用2、未启用
    private Integer memberbasicstatus;
    //会员消费总金额
    private Double memberbasicmonetary;
    //会员咨询数量
    private Integer memberbasicinquiries;
    //关联收藏商品表id
    private String memberbasiccollectid;
    //会员评论数量
    private Integer memberbasiccomment;
    //创建时间
    private String memberbasiccreatdate;
    //最后登陆时间
    private String memberbasiclastlogdate;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Memberbasic that = (Memberbasic) o;

        return memberbasicid.equals(that.memberbasicid);
    }

    @Override
    public int hashCode() {
        return memberbasicid.hashCode();
    }

    public String getMemberbasicid() {
        return memberbasicid;
    }

    public void setMemberbasicid(String memberbasicid) {
        this.memberbasicid = memberbasicid;
    }

    public String getMemberbasiclogname() {
        return memberbasiclogname;
    }

    public void setMemberbasiclogname(String memberbasiclogname) {
        this.memberbasiclogname = memberbasiclogname;
    }

    public String getMemberbasicpassword() {
        return memberbasicpassword;
    }

    public void setMemberbasicpassword(String memberbasicpassword) {
        this.memberbasicpassword = memberbasicpassword;
    }

    public String getMemberbasicemail() {
        return memberbasicemail;
    }

    public void setMemberbasicemail(String memberbasicemail) {
        this.memberbasicemail = memberbasicemail;
    }

    public Integer getMemberbasicintegral() {
        return memberbasicintegral;
    }

    public void setMemberbasicintegral(Integer memberbasicintegral) {
        this.memberbasicintegral = memberbasicintegral;
    }

    public Double getMemberbasicbalance() {
        return memberbasicbalance;
    }

    public void setMemberbasicbalance(Double memberbasicbalance) {
        this.memberbasicbalance = memberbasicbalance;
    }

    public String getMemberbasicgradeid() {
        return memberbasicgradeid;
    }

    public void setMemberbasicgradeid(String memberbasicgradeid) {
        this.memberbasicgradeid = memberbasicgradeid;
    }

    public Integer getMemberbasicstatus() {
        return memberbasicstatus;
    }

    public void setMemberbasicstatus(Integer memberbasicstatus) {
        this.memberbasicstatus = memberbasicstatus;
    }

    public Double getMemberbasicmonetary() {
        return memberbasicmonetary;
    }

    public void setMemberbasicmonetary(Double memberbasicmonetary) {
        this.memberbasicmonetary = memberbasicmonetary;
    }

    public Integer getMemberbasicinquiries() {
        return memberbasicinquiries;
    }

    public void setMemberbasicinquiries(Integer memberbasicinquiries) {
        this.memberbasicinquiries = memberbasicinquiries;
    }

    public String getMemberbasiccollectid() {
        return memberbasiccollectid;
    }

    public void setMemberbasiccollectid(String memberbasiccollectid) {
        this.memberbasiccollectid = memberbasiccollectid;
    }

    public Integer getMemberbasiccomment() {
        return memberbasiccomment;
    }

    public void setMemberbasiccomment(Integer memberbasiccomment) {
        this.memberbasiccomment = memberbasiccomment;
    }

    public String getMemberbasiccreatdate() {
        return memberbasiccreatdate;
    }

    public void setMemberbasiccreatdate(String memberbasiccreatdate) {
        this.memberbasiccreatdate = memberbasiccreatdate;
    }

    public String getMemberbasiclastlogdate() {
        return memberbasiclastlogdate;
    }

    public void setMemberbasiclastlogdate(String memberbasiclastlogdate) {
        this.memberbasiclastlogdate = memberbasiclastlogdate;
    }

    @Override
    public String toString() {
        return "Memberbasic{" +
                "memberbasicid='" + memberbasicid + '\'' +
                ", memberbasiclogname='" + memberbasiclogname + '\'' +
                ", memberbasicpassword='" + memberbasicpassword + '\'' +
                ", memberbasicemail='" + memberbasicemail + '\'' +
                ", memberbasicintegral=" + memberbasicintegral +
                ", memberbasicbalance=" + memberbasicbalance +
                ", memberbasicgradeid='" + memberbasicgradeid + '\'' +
                ", memberbasicstatus=" + memberbasicstatus +
                ", memberbasicmonetary=" + memberbasicmonetary +
                ", memberbasicinquiries=" + memberbasicinquiries +
                ", memberbasiccollectid='" + memberbasiccollectid + '\'' +
                ", memberbasiccomment=" + memberbasiccomment +
                ", memberbasiccreatdate='" + memberbasiccreatdate + '\'' +
                ", memberbasiclastlogdate='" + memberbasiclastlogdate + '\'' +
                '}';
    }
}
