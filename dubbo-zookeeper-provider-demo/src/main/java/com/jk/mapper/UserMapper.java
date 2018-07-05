package com.jk.mapper;

import com.jk.model.FrameWork;
import com.jk.model.UserModel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    List<UserModel> userList();

    List<FrameWork> frameselectlist(Integer pid);

    int framedelete(@Param("id") String id);
    int frameinsert(@Param("frame") FrameWork frame);

    FrameWork frameupdateselectye(Integer id);

    int frameupdate(@Param("frame") FrameWork frame);
}
