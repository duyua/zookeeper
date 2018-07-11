package com.jk.service;

import com.jk.model.Tbasic;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;
import com.jk.model.Tmembers;

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
}
