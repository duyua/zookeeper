package com.jk.service.impl;

import com.jk.mapper.AttributeMapper;

import com.jk.mapper.Tclass;
import com.jk.model.Checkattr;
import com.jk.model.Tattribute;
import com.jk.model.Tbrand;
import com.jk.service.AttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("attributeService")
public class AttributeServiceImpl implements AttributeService{
    @Autowired
    private AttributeMapper attributemapper;

    @Override
    public List<Tattribute> selectattributeshow() {
        List<Tattribute> list= attributemapper.selectattributeshow();
        return list;
    }

    @Override
    public List<Tclass> selecttclass() {
        List<Tclass> list= attributemapper.selecttclass();
        return list;
    }

    @Override
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

    @Override
    public List<Checkattr> selectchecked(String attributeid) {
        List<Checkattr> listt= attributemapper.selectchecked(attributeid);
        return listt;
    }

    @Override
    public void deleteall(String ids) {
        attributemapper.deleteall(ids);
        attributemapper.deleteallcheck(ids);
    }

    @Override
    public List<Tbrand> selectbrandshow() {
        List<Tbrand> listt= attributemapper.selectbrandshow();
        return listt;
    }

    @Override
    public void saveatbrand(Tbrand brr) {
        brr.setBrandid(UUID.randomUUID().toString());
        attributemapper.saveatbrand(brr);
    }
}
