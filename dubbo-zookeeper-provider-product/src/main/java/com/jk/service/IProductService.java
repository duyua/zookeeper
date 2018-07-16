package com.jk.service;

import com.jk.model.*;

import java.util.List;

public interface IProductService {
    /**
     * 测试的方法
     * @return
     */
    public String productquery();

    /**
     * 查询商品列表
     * @return
     */
    List<Tbasic> queryList();

    /**
     * 查询分类列表
     * @return
     */
    List<Tclass> typelist();

    /**
     * 查询品牌列表
     * @return
     */
    List<Tbrand> pinpailist();

    /**
     * 商品新增
     * @param tbasic
     */
    void addinsert(Tbasic tbasic, Tmembers tmembers);
    /**
     * 商品删除的方法
     */
    Integer deletebasic(String basicid);
    /**
     * 通过id查询商品信息
     */
    Tbasic querybasicbyid(String id);
    /**
     * 修改商品基本信息
     */
    Integer updatebasic(Tbasic tbasic, Tmembers tmembers);
    /**
     * 分类列表删除
     */
    Integer deleteclass(String id);
    /**
     * 分类列表修改
     */
    Integer updateclass(Tclass tclass, String fu);
    /**
     * 分类修改查询分类所属品牌
     */
    List<BrandClass> guanlianlist(String id);
    /**
     * 分类新增
     */
    Integer addclass(Tclass tclass, String fu);
    /**
     * 查询商品参数信息
     */
    List<Tparameter> parameterlist();
    /**
     * 删除商品参数
     */
    Integer deleteparameter(String parameterid);
    /**
     * 增加商品参数
     */
    Integer addparameter(Tparameter tparameter,String paixu);
    /**
     * 商品参数修改查询
     */
    Tparameter parameterlistbyid(String id);
    /**
     * 商品参数修改
     */
    Integer updateparameter(Tparameter tparameter);
}
