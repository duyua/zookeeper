package com.jk.mapper;

import com.jk.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    List<Tbasic> queryList();

    List<Tclass> typelist();

    List<Tbrand> pinpailist();

    void addinsert(@Param("t") Tbasic tbasic);

    int addmembers(@Param("t") Tmembers tmembers);

    Integer deletebasic(@Param("basicid") String basicid);

    Tbasic querybasicbyid(@Param("id") String id);

    void deletemembers(@Param("mem") String memberid);

    int updatemembers(Tmembers tmembers);

    Integer updatebasic(@Param("t") Tbasic tbasic);

    Integer deleteclass(@Param("id") String id);

    void deletebrandclass(@Param("id") String id);

    void addbrandclass(@Param("uuid") String uuid,@Param("classid") String id, @Param("brandid") String s);

    Integer updateclass(@Param("tclass") Tclass tclass);

    List<BrandClass> guanlianlist(@Param("id") String id);

    Integer addclass(@Param("tclass") Tclass tclass);

    List<Tparameter> parameterlist();

    Integer deleteparameter(@Param("id") String parameterid);

    Integer addparameter(@Param("tp") Tparameter tparameter);

    Tparameter parameterlistbyid(@Param("id") String id);

    Integer updateparameter(@Param("tp") Tparameter tparameter);

    void addparameterdetailed(@Param("de") Parameterdetailed parameterdetailed);

    List<Parameterdetailed> parameterdetailed(@Param("paid") String parameterid);

    void deleteparameterdetailed(@Param("pid") String parameterid);

    List<Cart> querygwlist(@Param("id") String userid);

    void deleteList(@Param("id") String id);

    void addaddress(@Param("re") Receiveraddress receiver);

    List<Receiveraddress> queryaddresslist(@Param("id") String userid);

    void adddingdan(@Param("man") Management management);

    void updatedingdan(@Param("bianhao") String bianhao);

    void updatemanagement(@Param("userid") String userid,@Param("jine") Double ss, @Param("jifen") Integer zengsongjifen);
}
