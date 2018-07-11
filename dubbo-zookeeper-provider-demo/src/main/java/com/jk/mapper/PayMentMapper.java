package com.jk.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PayMentMapper {

    List  queryPayMent();

    void deletePayMent(@Param("id") String id);

    List queryDelivery();

    void deleteDelivery(@Param("ids") String ids);

    List queryReturn();

    void deleteReturn(String ids);
}
