package com.jk.model;

import java.io.Serializable;

//评论管理
public class Memberbasiccomment implements Serializable{
    private static final long serialVersionUID = -4000698318691982140L;
    //主键id
    private String commentid;
    //关联商品详情表id
    private String commentbasrcid;
    //商品名称
    private String commentbasrcname;
    //商品评分
    private Integer commentgrade;
    //评论内容
    private String commentcount;
    //评论人
    private String commentmemberbasicname;
    //是否显示状态1、是2、否
    private Integer commentstatus;
    //创建时间
    private String commentcreatdate;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Memberbasiccomment that = (Memberbasiccomment) o;

        return commentid.equals(that.commentid);
    }

    @Override
    public int hashCode() {
        return commentid.hashCode();
    }

    public String getCommentid() {
        return commentid;
    }

    public void setCommentid(String commentid) {
        this.commentid = commentid;
    }

    public String getCommentbasrcid() {
        return commentbasrcid;
    }

    public void setCommentbasrcid(String commentbasrcid) {
        this.commentbasrcid = commentbasrcid;
    }

    public String getCommentbasrcname() {
        return commentbasrcname;
    }

    public void setCommentbasrcname(String commentbasrcname) {
        this.commentbasrcname = commentbasrcname;
    }

    public Integer getCommentgrade() {
        return commentgrade;
    }

    public void setCommentgrade(Integer commentgrade) {
        this.commentgrade = commentgrade;
    }

    public String getCommentcount() {
        return commentcount;
    }

    public void setCommentcount(String commentcount) {
        this.commentcount = commentcount;
    }

    public String getCommentmemberbasicname() {
        return commentmemberbasicname;
    }

    public void setCommentmemberbasicname(String commentmemberbasicname) {
        this.commentmemberbasicname = commentmemberbasicname;
    }

    public Integer getCommentstatus() {
        return commentstatus;
    }

    public void setCommentstatus(Integer commentstatus) {
        this.commentstatus = commentstatus;
    }

    public String getCommentcreatdate() {
        return commentcreatdate.substring(0,10);
    }

    public void setCommentcreatdate(String commentcreatdate) {
        this.commentcreatdate = commentcreatdate;
    }

    @Override
    public String toString() {
        return "Memberbasiccomment{" +
                "commentid='" + commentid + '\'' +
                ", commentbasrcid='" + commentbasrcid + '\'' +
                ", commentbasrcname='" + commentbasrcname + '\'' +
                ", commentgrade=" + commentgrade +
                ", commentcount='" + commentcount + '\'' +
                ", commentmemberbasicname='" + commentmemberbasicname + '\'' +
                ", commentstatus=" + commentstatus +
                ", commentcreatdate='" + commentcreatdate + '\'' +
                '}';
    }
}
