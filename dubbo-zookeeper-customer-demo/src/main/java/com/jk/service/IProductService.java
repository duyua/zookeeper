package com.jk.service;

import com.jk.model.Tbasic;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;
import com.jk.model.Tmembers;

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
}
