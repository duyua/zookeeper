package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;

import java.util.HashMap;
import java.util.List;

public interface AttributeService {
    List<Tattribute> selectattributeshow();

    List<Tclass> selecttclass();

    void saveattribute(Tattribute attr, String attrname);

    List<Checkattr> selectchecked(String attributeid);

    void deleteall(String ids);

    List<Tbrand> selectbrandshow();

    void saveatbrand(Tbrand brr);

    void deletebrandall(String ids);


    Tattribute selectattributeupdate(String ids);

    List<Checkattr> selectcheckedall(String ids);

    void updateattribute(Tattribute attr, String attrname);

    Tbrand selecttbandupdate(String ids);

    void updateatbrand(Tbrand brn);

    JSONObject selectname(Memberbasic user, String sessionCode, String validataCode);

    HashMap<Object,Object> phonenumber(String phone);

    HashMap<Object,Object> selectusersphone(Memberbasic user, String yanzheng, String sessionCode);

    HashMap<Object,Object> phonenumberzhuce(String phone);

    void saveMemberbasic(Memberbasic basic);
}
