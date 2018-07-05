package com.jk.controller;

import com.jk.model.FrameWork;
import com.jk.model.UserModel;
import com.jk.service.IUserService;
import com.jk.utils.ExportExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/userController")
public class UserController {
    @Resource
    private IUserService userService;
    @RequestMapping("/userList")
    @ResponseBody
    public List<UserModel> userList(){
        List<UserModel> list=userService.userList();
        return list;
    }
    @RequestMapping("/operye")
    public String operye(){
        return "frameworklist";
    }
    @RequestMapping("/frameselectlist")
    @ResponseBody
    public List<FrameWork> frameselectlist(){
        List<FrameWork> list=userService.frameselectlist();
        return list;
    }
    @RequestMapping("/framedelete")
    @ResponseBody
    public Integer framedelete(String id) {
        int i=userService.framedelete(id);
        return i;

    }
    @RequestMapping("/frameinsertselectye")
    public String frameinsertselectye(){
        return "frameinsert";
    }
    @RequestMapping("/frameinsert")
    @ResponseBody
    public Integer frameinsert(FrameWork frame) {
        int i=userService.frameinsert(frame);
        return i;

    }
    @RequestMapping("/frameupdateselectye")
    public ModelAndView frameupdateselectye(Integer id) {
        FrameWork frame=userService.frameupdateselectye(id);
        ModelAndView mo=new ModelAndView();
        mo.addObject("list", frame);
        mo.setViewName("frameupdate");
        return mo;

    }
    @RequestMapping("/frameupdate")
    @ResponseBody
    public Integer frameupdate(FrameWork frame) {
        int i=userService.frameupdate(frame);
        return i;

    }

    @RequestMapping("/framepoi")
    public void fangyuanpoi(HttpServletResponse response, HttpServletRequest request) {

        HashMap<String, Object> params = new HashMap<String,Object>();
        params.put("page", 1);
        params.put("rows",3);


        List<FrameWork> list=userService.frameselectlist();
        String [] rowName={"text","coding","abbreviation","classify","advocate","assistant","phone","interior","fax","postcode","urll","site","optionn","describes"};

        List <Object[]> dataList=new ArrayList<Object[]>();
        Object[] obj=null;
        for (int i = 0; i < list.size(); i++) {
            obj = new Object[rowName.length];
            obj[0]=list.get(i).getText();
            obj[1]=list.get(i).getCoding();
            obj[2]=list.get(i).getAbbreviation();
            obj[3]=list.get(i).getClassify();
            obj[4]=list.get(i).getAdvocate();
            obj[5]=list.get(i).getAssistant();
            obj[6]=list.get(i).getPhone();
            obj[7]=list.get(i).getInterior();
            obj[8]=list.get(i).getFax();
            obj[9]=list.get(i).getUrll();
            obj[10]=list.get(i).getSite();
            obj[11]=list.get(i).getOptionn();
            obj[12]=list.get(i).getDescribes();

            dataList.add(obj);
        }

        ExportExcel exportExcel = new ExportExcel("组织机构信息表",rowName, dataList, response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

}
