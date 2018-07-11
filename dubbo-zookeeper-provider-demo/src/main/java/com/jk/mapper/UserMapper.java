package com.jk.mapper;

import com.jk.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    List<Memberbasic> querymemberlist();

    void deletemember(@Param("ids") String ids);

    void addMembers(@Param("memberbasic") Memberbasic memberbasic);

    void addBasicdatum(Memberbasicdatum memberbasicdatum);

    List<Memberbasicgrade> querymemberbasicgrade();

    List<Memberbasiccomment> queryMemberbasiccomment();

    List<Memberbasicconsult> queryMemberbasicconsult();

    void savememberbasicgrade(@Param("memberbasicgrade") Memberbasicgrade memberbasicgrade);

    void deletememberbasicgrade(@Param("ids") String ids);

    void deletememberbasiccomment(@Param("ids") String ids);

    void deletememberbasicconsult(@Param("ids") String ids);

    Memberbasic chakanxinxi(@Param("id") String id);
}
