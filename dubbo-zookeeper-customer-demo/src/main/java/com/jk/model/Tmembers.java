package com.jk.model;

import java.io.Serializable;
//会员价格表
public class Tmembers implements Serializable{

    private static final long serialVersionUID = -3098460026161088250L;
    //主键id
    private String memberid;
    //贵宾会员
    private String vipmember;
    //白金会员
    private String platinummember;
    //金牌会员
    private String goidmembers;
    //银牌会员
    private String silvermember;
    //普通会员
    private String regularmembers;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tmembers tmembers = (Tmembers) o;

        return memberid.equals(tmembers.memberid);
    }

    @Override
    public int hashCode() {
        return memberid.hashCode();
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getVipmember() {
        return vipmember;
    }

    public void setVipmember(String vipmember) {
        this.vipmember = vipmember;
    }

    public String getPlatinummember() {
        return platinummember;
    }

    public void setPlatinummember(String platinummember) {
        this.platinummember = platinummember;
    }

    public String getGoidmembers() {
        return goidmembers;
    }

    public void setGoidmembers(String goidmembers) {
        this.goidmembers = goidmembers;
    }

    public String getSilvermember() {
        return silvermember;
    }

    public void setSilvermember(String silvermember) {
        this.silvermember = silvermember;
    }

    public String getRegularmembers() {
        return regularmembers;
    }

    public void setRegularmembers(String regularmembers) {
        this.regularmembers = regularmembers;
    }

    @Override
    public String toString() {
        return "Tmembers{" +
                "memberid='" + memberid + '\'' +
                ", vipmember='" + vipmember + '\'' +
                ", platinummember='" + platinummember + '\'' +
                ", goidmembers='" + goidmembers + '\'' +
                ", silvermember='" + silvermember + '\'' +
                ", regularmembers='" + regularmembers + '\'' +
                '}';
    }
}
