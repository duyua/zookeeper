package com.jk.model;

import java.io.Serializable;

//会员价格表
public class Tmembers implements Serializable{

    private static final long serialVersionUID = -3098460026161088250L;
    //主键id
    private String memberid;
    //贵宾会员
    private Double vipmember;
    //白金会员
    private Double platinummember;
    //金牌会员
    private Double goidmembers;
    //银牌会员
    private Double silvermember;
    //普通会员
    private Double regularmembers;

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

    public Double getVipmember() {
        return vipmember;
    }

    public void setVipmember(Double vipmember) {
        this.vipmember = vipmember;
    }

    public Double getPlatinummember() {
        return platinummember;
    }

    public void setPlatinummember(Double platinummember) {
        this.platinummember = platinummember;
    }

    public Double getGoidmembers() {
        return goidmembers;
    }

    public void setGoidmembers(Double goidmembers) {
        this.goidmembers = goidmembers;
    }

    public Double getSilvermember() {
        return silvermember;
    }

    public void setSilvermember(Double silvermember) {
        this.silvermember = silvermember;
    }

    public Double getRegularmembers() {
        return regularmembers;
    }

    public void setRegularmembers(Double regularmembers) {
        this.regularmembers = regularmembers;
    }

    @Override
    public String toString() {
        return "Tmembers{" +
                "memberid='" + memberid + '\'' +
                ", vipmember=" + vipmember +
                ", platinummember=" + platinummember +
                ", goidmembers=" + goidmembers +
                ", silvermember=" + silvermember +
                ", regularmembers=" + regularmembers +
                '}';
    }
}
