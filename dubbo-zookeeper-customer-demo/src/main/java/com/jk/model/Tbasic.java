package com.jk.model;

import java.io.Serializable;

//商品基本信息表
public class Tbasic implements Serializable{
    private static final long serialVersionUID = -3767330560978082916L;
    //主键id
    private String basicid;
    //商品分类表id
    private String typeid;
    //名称
    private String basicname;
    //编号
    private String basicnumber;
    //售价
    private Double basicprice;
    //是否启用会员
    private Integer membered;
    //会员价格表id
    private String membersid;
    //成本价
    private Double basiccost;
    //市场价
    private Double basicmarket;
    //商品图片展示表id
    private String shid;
    //单价
    private String basicdanjia;
    //重量
    private Double basicweight;
    //库存
    private Integer basicinventory;
    //创建时间
    private String basiccreatdate;
    //库存备注
    private String kucunbeizhu;
    //赠送积分
    private Integer zengsongjifen;
    //品牌表id
    private String brandid;
    //(1.热销,2.最新) 标签
    private String thelabel;
    //(1.是,2.否) 设置
    private String setupthe;
    //备注
    private String basicnote;
    //搜索关键词
    private String basicsearch;
    //页面标题
    private String pagetitle;
    //页面关键词
    private String basicpage;
    //页面描述
    private String pagedescription;
    //查询商品信息分类业务字段
    private String classname;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tbasic tbasic = (Tbasic) o;

        return basicid.equals(tbasic.basicid);
    }

    @Override
    public int hashCode() {
        return basicid.hashCode();
    }

    public String getBasicid() {
        return basicid;
    }

    public void setBasicid(String basicid) {
        this.basicid = basicid;
    }

    public String getTypeid() {
        return typeid;
    }

    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    public String getBasicname() {
        return basicname;
    }

    public void setBasicname(String basicname) {
        this.basicname = basicname;
    }

    public String getBasicnumber() {
        return basicnumber;
    }

    public void setBasicnumber(String basicnumber) {
        this.basicnumber = basicnumber;
    }

    public Double getBasicprice() {
        return basicprice;
    }

    public void setBasicprice(Double basicprice) {
        this.basicprice = basicprice;
    }

    public Integer getMembered() {
        return membered;
    }

    public void setMembered(Integer membered) {
        this.membered = membered;
    }

    public String getMembersid() {
        return membersid;
    }

    public void setMembersid(String membersid) {
        this.membersid = membersid;
    }

    public Double getBasiccost() {
        return basiccost;
    }

    public void setBasiccost(Double basiccost) {
        this.basiccost = basiccost;
    }

    public Double getBasicmarket() {
        return basicmarket;
    }

    public void setBasicmarket(Double basicmarket) {
        this.basicmarket = basicmarket;
    }

    public String getShid() {
        return shid;
    }

    public void setShid(String shid) {
        this.shid = shid;
    }

    public String getBasicdanjia() {
        return basicdanjia;
    }

    public void setBasicdanjia(String basicdanjia) {
        this.basicdanjia = basicdanjia;
    }

    public Double getBasicweight() {
        return basicweight;
    }

    public void setBasicweight(Double basicweight) {
        this.basicweight = basicweight;
    }

    public Integer getBasicinventory() {
        return basicinventory;
    }

    public void setBasicinventory(Integer basicinventory) {
        this.basicinventory = basicinventory;
    }

    public String getKucunbeizhu() {
        return kucunbeizhu;
    }

    public void setKucunbeizhu(String kucunbeizhu) {
        this.kucunbeizhu = kucunbeizhu;
    }

    public Integer getZengsongjifen() {
        return zengsongjifen;
    }

    public void setZengsongjifen(Integer zengsongjifen) {
        this.zengsongjifen = zengsongjifen;
    }

    public String getBrandid() {
        return brandid;
    }

    public void setBrandid(String brandid) {
        this.brandid = brandid;
    }

    public String getThelabel() {
        return thelabel;
    }

    public void setThelabel(String thelabel) {
        this.thelabel = thelabel;
    }

    public String getSetupthe() {
        return setupthe;
    }

    public void setSetupthe(String setupthe) {
        this.setupthe = setupthe;
    }

    public String getBasicnote() {
        return basicnote;
    }

    public void setBasicnote(String basicnote) {
        this.basicnote = basicnote;
    }

    public String getBasicsearch() {
        return basicsearch;
    }

    public void setBasicsearch(String basicsearch) {
        this.basicsearch = basicsearch;
    }

    public String getPagetitle() {
        return pagetitle;
    }

    public void setPagetitle(String pagetitle) {
        this.pagetitle = pagetitle;
    }

    public String getBasicpage() {
        return basicpage;
    }

    public void setBasicpage(String basicpage) {
        this.basicpage = basicpage;
    }

    public String getPagedescription() {
        return pagedescription;
    }

    public void setPagedescription(String pagedescription) {
        this.pagedescription = pagedescription;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getBasiccreatdate() {
        return basiccreatdate;
    }

    public void setBasiccreatdate(String basiccreatdate) {
        this.basiccreatdate = basiccreatdate;
    }

    @Override
    public String toString() {
        return "Tbasic{" +
                "basicid='" + basicid + '\'' +
                ", typeid='" + typeid + '\'' +
                ", basicname='" + basicname + '\'' +
                ", basicnumber='" + basicnumber + '\'' +
                ", basicprice=" + basicprice +
                ", membered='" + membered + '\'' +
                ", membersid='" + membersid + '\'' +
                ", basiccost=" + basiccost +
                ", basicmarket=" + basicmarket +
                ", shid='" + shid + '\'' +
                ", basicdanjia=" + basicdanjia +
                ", basicweight=" + basicweight +
                ", basicinventory=" + basicinventory +
                ", basiccreatdate='" + basiccreatdate + '\'' +
                ", kucunbeizhu='" + kucunbeizhu + '\'' +
                ", zengsongjifen=" + zengsongjifen +
                ", brandid='" + brandid + '\'' +
                ", thelabel=" + thelabel +
                ", setupthe=" + setupthe +
                ", basicnote='" + basicnote + '\'' +
                ", basicsearch='" + basicsearch + '\'' +
                ", pagetitle='" + pagetitle + '\'' +
                ", basicpage='" + basicpage + '\'' +
                ", pagedescription='" + pagedescription + '\'' +
                ", classname='" + classname + '\'' +
                '}';
    }
}
