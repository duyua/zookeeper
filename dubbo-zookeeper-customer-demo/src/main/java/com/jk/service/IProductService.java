package com.jk.service;

import com.jk.model.*;

import java.util.List;

public interface IProductService {
    public String productquery();
    List<Tbasic> queryList();

    List<Tclass> typelist();

    List<Tbrand> pinpailist();

    void addinsert(Tbasic tbasic, Tmembers tmembers);

    Integer deletebasic(String basicid);

    Tbasic querybasicbyid(String id);

    Integer updatebasic(Tbasic tbasic, Tmembers tmembers);

    Integer deleteclass(String id);

    Integer updateclass(Tclass tclass, String fu);

    List<BrandClass> guanlianlist(String id);

    Integer addclass(Tclass tclass, String fu);

    List<Tparameter> parameterlist();

    Integer deleteparameter(String parameterid);

    Integer addparameter(Tparameter tparameter,String paixu);

    Tparameter parameterlistbyid(String id);

    Integer updateparameter(Tparameter tparameter);

    List<Cart> querygwlist(String userid);

    void deleteList(String id);

    //List<Receiveraddress> addreceiver(Receiveraddress receiver, String useid);

    List<Receiveraddress> queryreciverlist(String userid);

    void adddingdan(Management management, String gouwuid);

    void updatedingdan(String bianhao, String userid, String shangpinid,String jine);
}
