package com.jk.model;

import java.io.Serializable;

public class Memberbasic implements Serializable{

    private static final long serialVersionUID = -5875333372550837864L;

    private String memberbasicid  ;                 // 主键id
    private String memberbasiclogname;             // 会员登陆名称
    private String memberbasicpassword ;           // 会员密码
    private String memberbasicmima;                 //确认密码
    private String memberbasicemail ;               // 会员邮箱
    private Integer memberbasicintegral;           //会员积分
    private Double memberbasicbalance;             // 会员账号余额
    private String memberbasicgradeid ;            //会员关联等级表id
    private Integer memberbasicstatus ;           // 会员状态  1、启用2、未启用
    private Double memberbasicmonetary ;          // 类型    会员消费总金额
    private Integer memberbasicinquiries;         //  会员咨询数量
    private String memberbasiccollectid ;         // 关联收藏商品表id
    private Integer memberbasiccomment  ;         // 会员评论数量
    private String memberbasiccreatdate  ;        //创建时间
    private String memberbasiclastlogdate  ;     //最后登陆时间


    private String gradename; //会员等级业务字段

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
        return memberbasiccreatdate.substring(0,10);
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

    public String getGradename() {
        return gradename;
    }

    public void setGradename(String gradename) {
        this.gradename = gradename;
    }

    public String getMemberbasicmima() {
        return memberbasicmima;
    }

    public void setMemberbasicmima(String memberbasicmima) {
        this.memberbasicmima = memberbasicmima;
    }

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

    @Override
    public String toString() {
        return "Memberbasic{" +
                "memberbasicid='" + memberbasicid + '\'' +
                ", memberbasiclogname='" + memberbasiclogname + '\'' +
                ", memberbasicpassword='" + memberbasicpassword + '\'' +
                ", memberbasicmima='" + memberbasicmima + '\'' +
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
                ", gradename='" + gradename + '\'' +
                '}';
    }
}
