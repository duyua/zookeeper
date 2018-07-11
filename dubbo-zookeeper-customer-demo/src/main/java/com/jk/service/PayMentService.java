package com.jk.service;


import java.util.List;

public interface PayMentService {
    List  queryPayMent();

    void deletePayMent(String id);

    List queryDelivery();

    void deleteDelivery(String ids);

    List queryReturn();

    void deleteReturn(String ids);
}
