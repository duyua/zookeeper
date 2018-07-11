package com.jk.service.impl;


import com.jk.mapper.UserMapper;
import com.jk.model.*;
import com.jk.service.IUserService;
import com.jk.util.StringUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by yangzhichao on 2018-04-03.
 */
@Service("userService")
public class UserServiceImpl implements IUserService {
   @Resource
   private UserMapper userMapper;


    public List<Memberbasic> querymemberlist() {

        return userMapper.querymemberlist();
    }

    public void deletemember(String ids) {
        userMapper.deletemember(ids);
    }

    public void addMembers(Memberbasic memberbasic) {

        String uuid = StringUtil.getUUID();

        memberbasic.setMemberbasicid(uuid);
        memberbasic.setMemberbasiccreatdate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()).toString());


        if (memberbasic.getMemberbasicstatus()==null){
            memberbasic.setMemberbasicstatus(2);
        }


        userMapper.addMembers(memberbasic);

    }

    public void addBasicdatum(Memberbasicdatum memberbasicdatum) {


        String uuid = StringUtil.getUUID();


        memberbasicdatum.setDatumid(uuid);

        userMapper.addBasicdatum(memberbasicdatum);

    }

    public List<Memberbasicgrade> querymemberbasicgrade() {

        return userMapper.querymemberbasicgrade();
    }

    public List<Memberbasiccomment> queryMemberbasiccomment() {


        return userMapper.queryMemberbasiccomment();
    }

    public List<Memberbasicconsult> queryMemberbasicconsult() {


        return userMapper.queryMemberbasicconsult();
    }

    public void savememberbasicgrade(Memberbasicgrade memberbasicgrade) {


        String uuid = StringUtil.getUUID();

        memberbasicgrade.setGradeid(uuid);

        if(memberbasicgrade.getGrademonetary()==null){

            memberbasicgrade.setGrademonetary(0.0);

        }

        userMapper.savememberbasicgrade(memberbasicgrade);
    }

    public void deletememberbasicgrade(String ids) {


        userMapper.deletememberbasicgrade(ids);
    }

    public void deletememberbasiccomment(String ids) {
        userMapper.deletememberbasiccomment(ids);
    }

    public void deletememberbasicconsult(String ids) {

        userMapper.deletememberbasicconsult(ids);

    }

    public Memberbasic chakanxinxi(String id) {


        return userMapper.chakanxinxi(id);
    }


}
