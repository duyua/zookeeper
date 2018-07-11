package com.jk.mapper;

import com.jk.model.Tbasic;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;
import com.jk.model.Tmembers;
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
}
