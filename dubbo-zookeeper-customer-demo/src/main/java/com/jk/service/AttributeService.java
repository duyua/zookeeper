package com.jk.service;

import com.jk.model.Checkattr;
import com.jk.model.Tattribute;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;

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
}
