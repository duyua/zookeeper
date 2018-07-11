package com.jk.service;

import com.jk.model.*;

import java.util.List;

/**
 * Created by yangzhichao on 2018-04-03.
 */
public interface IUserService {

    List<Memberbasic> querymemberlist();

    void deletemember(String ids);

    void addMembers(Memberbasic memberbasic);

    void addBasicdatum(Memberbasicdatum memberbasicdatum);

    List<Memberbasicgrade> querymemberbasicgrade();

    List<Memberbasiccomment> queryMemberbasiccomment();

    List<Memberbasicconsult> queryMemberbasicconsult();

    void savememberbasicgrade(Memberbasicgrade memberbasicgrade);

    void deletememberbasicgrade(String ids);

    void deletememberbasiccomment(String ids);

    void deletememberbasicconsult(String ids);

    Memberbasic chakanxinxi(String id);
}
