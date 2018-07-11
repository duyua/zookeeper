package com.jk.service.impl;

import com.jk.mapper.PayMentMapper;
import com.jk.service.PayMentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("payMentService")
public class PayMentServiceImpl implements PayMentService {
    @Autowired
    private PayMentMapper payMentMapper;

    @Override
    public List  queryPayMent() {
        return payMentMapper.queryPayMent();
    }

    @Override
    public void deletePayMent(String id) {
        payMentMapper.deletePayMent(id);
    }

    @Override
    public List queryDelivery() {
        return payMentMapper.queryDelivery();
    }

    @Override
    public void deleteDelivery(String ids) {
        payMentMapper.deleteDelivery(ids);
    }

    @Override
    public List queryReturn() {
        return payMentMapper.queryReturn();
    }

    @Override
    public void deleteReturn(String ids) {
        payMentMapper.deleteReturn(ids);
    }
}
