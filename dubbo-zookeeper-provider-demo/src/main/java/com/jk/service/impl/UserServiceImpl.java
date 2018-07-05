package com.jk.service.impl;

import com.jk.mapper.UserMapper;
import com.jk.model.FrameWork;
import com.jk.model.UserModel;
import com.jk.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yangzhichao on 2018-04-03.
 */
@Service("userService")
public class UserServiceImpl implements IUserService {
   @Resource
   private UserMapper userMapper;

    public List<UserModel> userList() {
        return userMapper.userList();
    }

    public List<FrameWork> frameselectlist() {
       Integer pid = 0;
        return frameselectlist(pid);
    }

    public int framedelete(String id) {
        return userMapper.framedelete(id);
    }

    public int frameinsert(FrameWork frame) {
        if(frame.getPid()==null) {
            frame.setPid(0);
        }
        return userMapper.frameinsert(frame);
    }

    public FrameWork frameupdateselectye(Integer id) {
        return userMapper.frameupdateselectye(id);
    }

    public int frameupdate(FrameWork frame) {
        return userMapper.frameupdate(frame);
    }

    private List<FrameWork> frameselectlist(Integer pid) {
        List<FrameWork> list=userMapper.frameselectlist(pid);
        for (FrameWork framework : list) {
            List<FrameWork> listt = frameselectlist(framework.getId());
            if(listt!=null&&listt.size()>0) {
                framework.setChildren(listt);
            }
        }
        return list;
    }
}
