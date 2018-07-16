package com.jk.service.impl;

import com.jk.mapper.AttributeMapper;


import com.jk.model.Checkattr;
import com.jk.model.Tattribute;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;
import com.jk.service.AttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("attributeService")
public class AttributeServiceImpl implements AttributeService{
    @Autowired
    private AttributeMapper attributemapper;


    public List<Tattribute> selectattributeshow() {
        List<Tattribute> list= attributemapper.selectattributeshow();
        return list;
    }


    public List<Tclass> selecttclass() {
        List<Tclass> list= attributemapper.selecttclass();
        return list;
    }


    public void saveattribute(Tattribute attr,String attrname) {
        attr.setAttributeid(UUID.randomUUID().toString());
        attributemapper.saveattribute(attr);
       String [] uname= attrname.split(",");
        Checkattr checkattr = new Checkattr();
       for(int i=0;i<uname.length;i++){
           checkattr.setAttrid(attr.getAttributeid());
           checkattr.setAttrname(uname[i]);
           attributemapper.savecheckedattr(checkattr);
       }

    }


    public List<Checkattr> selectchecked(String attributeid) {
        List<Checkattr> listt= attributemapper.selectchecked(attributeid);
        return listt;
    }


    public void deleteall(String ids) {
        attributemapper.deleteall(ids);
        attributemapper.deleteallcheck(ids);
    }


    public List<Tbrand> selectbrandshow() {
        List<Tbrand> listt= attributemapper.selectbrandshow();
        return listt;
    }


    public void saveatbrand(Tbrand brr) {
        brr.setBrandid(UUID.randomUUID().toString());
        attributemapper.saveatbrand(brr);
    }


    public void deletebrandall(String ids) {
        attributemapper.deletebrandall(ids);
    }


    public  Tattribute selectattributeupdate(String ids) {
        Tattribute list= attributemapper.selectattributeupdate(ids);
        return list;
    }


    public List<Checkattr> selectcheckedall(String ids) {
        List<Checkattr> listt= attributemapper.selectcheckedall(ids);
        return listt;
    }


    public void updateattribute(Tattribute attr, String attrname) {
        attributemapper.updateattribute(attr);
        attributemapper.deletechecked(attr.getAttributeid());
        String [] uname= attrname.split(",");
        Checkattr checkattr = new Checkattr();
        for(int i=0;i<uname.length;i++){
            checkattr.setAttrid(attr.getAttributeid());
            checkattr.setAttrname(uname[i]);
            attributemapper.savecheckedattr(checkattr);
        }
    }


    public Tbrand selecttbandupdate(String ids) {
        Tbrand list= attributemapper.selecttbandupdate(ids);
        return list;
    }


    public void updateatbrand(Tbrand brn) {
        attributemapper.updateatbrand(brn);
    }
}
