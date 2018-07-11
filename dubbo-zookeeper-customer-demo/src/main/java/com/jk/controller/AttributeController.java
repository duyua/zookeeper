package com.jk.controller;

import com.jk.model.Checkattr;
import com.jk.model.Tattribute;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;
import com.jk.service.AttributeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("attribute")
public class AttributeController {
    @Resource
    private AttributeService attributeService;
    @RequestMapping("selectattribute")
    public String selectattribute(){
        return "/attribute/selectshow";

    }
    @RequestMapping("selectattributeshow")
    @ResponseBody
    public  List<Tattribute> selectattributeshow(){
        String listname="";
        List<Tattribute> list=attributeService.selectattributeshow();
        for(int i = 0 ; i < list.size() ; i++) {
            List<Checkattr> listt= attributeService.selectchecked(list.get(i).getAttributeid());
            for(int j = 0 ; j < listt.size() ; j++) {

                listname +=" "+listt.get(j).getAttrname();


            }
            list.get(i).setAttributegenrename(listname);
            listname="";
        }
        return list;
    }

    @RequestMapping("selectclass")
    @ResponseBody
    public  List<Tclass> selectclass(){
        List<Tclass> list= attributeService.selecttclass();
        return list;
    }
    @RequestMapping("saveattribute")
    @ResponseBody
    public String saveattribute(Tattribute attr,String attrname){
        attributeService.saveattribute(attr,attrname);
        return "1";
    }
    @RequestMapping("deleteall")
    @ResponseBody
    public String deleteall(String ids){
        attributeService.deleteall(ids);
        return "1";
    }
    @RequestMapping("selectbrand")
    public String selectbrand(){
        return "/brand/selectshow";
    }
    @RequestMapping("selectbrandshow")
    @ResponseBody
    public List<Tbrand> selectbrandshow(){
        List<Tbrand> list= attributeService.selectbrandshow();
        return list;
    }
    @RequestMapping("saveatbrand")
    @ResponseBody
    public String saveatbrand(Tbrand brr){
        attributeService.saveatbrand(brr);
        return "1";
    }
}
