package com.jk.service;


import com.jk.mapper.Tclass;
import com.jk.model.Checkattr;
import com.jk.model.Tattribute;
import com.jk.model.Tbrand;

import java.util.List;

public interface AttributeService {
    List<Tattribute> selectattributeshow();
    List<Tclass> selecttclass();
    void saveattribute(Tattribute attr, String attrname);
    List<Checkattr> selectchecked(String attributeid);
    void deleteall(String ids);
    List<Tbrand> selectbrandshow();
    void saveatbrand(Tbrand brr);
}
