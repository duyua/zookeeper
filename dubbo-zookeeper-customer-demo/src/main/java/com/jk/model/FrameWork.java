package com.jk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class FrameWork implements Serializable {

    private static final long serialVersionUID = 7939827783123302043L;
    //主键id
    private Integer id;
    //pid
    private Integer pid;
    //组织名称
    private String  text;
    //组织编码
    private String  coding;
    //组织简称
    private String  abbreviation;
    //组织分类
    private  Integer classify;
    //主负责人
    private  String  advocate;
    //副主管
    private  String  assistant;
    //电话
    private  String  phone;
    //内线
    private  String  interior;
    //传真
    private  String  fax;
    //邮编
    private  String  postcode;
    //网址
    private  String  urll;
    //地址
    private  String  site;
    //选项 1 有效 2 内部组织机构
    private  Integer optionn;
    //描述
    private  String  describes;
    //递归查询封装类
    private List<FrameWork> Children=new ArrayList<FrameWork>();

    public List<FrameWork> getChildren() {
        return Children;
    }

    public void setChildren(List<FrameWork> children) {
        Children = children;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getCoding() {
        return coding;
    }

    public void setCoding(String coding) {
        this.coding = coding;
    }

    public String getAbbreviation() {
        return abbreviation;
    }

    public void setAbbreviation(String abbreviation) {
        this.abbreviation = abbreviation;
    }

    public Integer getClassify() {
        return classify;
    }

    public void setClassify(Integer classify) {
        this.classify = classify;
    }

    public String getAdvocate() {
        return advocate;
    }

    public void setAdvocate(String advocate) {
        this.advocate = advocate;
    }

    public String getAssistant() {
        return assistant;
    }

    public void setAssistant(String assistant) {
        this.assistant = assistant;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getInterior() {
        return interior;
    }

    public void setInterior(String interior) {
        this.interior = interior;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getUrll() {
        return urll;
    }

    public void setUrll(String urll) {
        this.urll = urll;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public Integer getOptionn() {
        return optionn;
    }

    public void setOptionn(Integer optionn) {
        this.optionn = optionn;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FrameWork frameWork = (FrameWork) o;

        return id.equals(frameWork.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public String toString() {
        return "FrameWork{" +
                "id=" + id +
                ", pid=" + pid +
                ", text='" + text + '\'' +
                ", coding='" + coding + '\'' +
                ", abbreviation='" + abbreviation + '\'' +
                ", classify=" + classify +
                ", advocate='" + advocate + '\'' +
                ", assistant='" + assistant + '\'' +
                ", phone='" + phone + '\'' +
                ", interior='" + interior + '\'' +
                ", fax='" + fax + '\'' +
                ", postcode='" + postcode + '\'' +
                ", urll='" + urll + '\'' +
                ", site='" + site + '\'' +
                ", optionn=" + optionn +
                ", describes='" + describes + '\'' +
                '}';
    }
}
