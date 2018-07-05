package com.jk.service;

import com.jk.model.FrameWork;
import com.jk.model.UserModel;

import java.util.List;

/**
 * Created by yangzhichao on 2018-04-03.
 */
public interface IUserService {

    List<UserModel> userList();
    List<FrameWork> frameselectlist();
    int framedelete(String id);
    int frameinsert(FrameWork frame);
    FrameWork frameupdateselectye(Integer id);
    int frameupdate(FrameWork frame);
}
