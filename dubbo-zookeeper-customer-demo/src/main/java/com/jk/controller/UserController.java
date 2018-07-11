package com.jk.controller;

import com.jk.model.*;
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
import java.util.Map;

@Controller
@RequestMapping("/userController")
public class UserController {
    @Resource
    private IUserService userService;

    @RequestMapping("tomember")
    public String tomember(){
        return "/members/memberlist";
    }
    @RequestMapping("addmembers")
    public String addmembers(){
        return "/members/addmember";
    }
    @RequestMapping("getmemberbasicgrade")
    public String getmemberbasicgrade(){
        return "/members/memberbasicgradelist";
    }
    @RequestMapping("getmemberbasiccomment")
    public String getmemberbasiccomment(){
        return "/members/memberbasiccommentlist";
    }
    @RequestMapping("getmemberbasicconsult")
    public String getmemberbasicconsult(){
        return "/members/memberbasicconsultlist";
    }
    @RequestMapping("tomemberbasicgrade")
    public String tomemberbasicgrade(){
        return "/members/addmemberbasicgrade";
    }


    @RequestMapping("/querymemberlist")
    @ResponseBody
   public List<Memberbasic> querymemberlist(){

        List<Memberbasic> list = userService.querymemberlist();

        return list;
    }

    @RequestMapping("/deletemember")
    @ResponseBody
    public Map<String,Object> deletemember(String ids){

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            userService.deletemember(ids);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }

        return map;

    }
    @RequestMapping("/addMembers")
    @ResponseBody
    public String addMembers(Memberbasic memberbasic){


        userService.addMembers(memberbasic);

        return "1";

    }

    @RequestMapping("/addBasicdatum")
    @ResponseBody
    public String addBasicdatum(Memberbasicdatum memberbasicdatum){


        userService.addBasicdatum(memberbasicdatum);

        return "1";

    }

    @RequestMapping("querymemberbasicgrade")
    @ResponseBody
    public List<Memberbasicgrade> querymemberbasicgrade(){

        List<Memberbasicgrade> list = userService.querymemberbasicgrade();

        return list;
    }
    @RequestMapping("queryMemberbasiccomment")
    @ResponseBody
    public List<Memberbasiccomment> queryMemberbasiccomment(){

        List<Memberbasiccomment> memberbasiccommentlist = userService.queryMemberbasiccomment();

        return memberbasiccommentlist;
    }
    @RequestMapping("queryMemberbasicconsult")
    @ResponseBody
    public List<Memberbasicconsult> queryMemberbasicconsult(){

        List<Memberbasicconsult> memberbasicconsultlist = userService.queryMemberbasicconsult();

        return memberbasicconsultlist;
    }

    @RequestMapping("savememberbasicgrade")
    @ResponseBody
    public String savememberbasicgrade(Memberbasicgrade memberbasicgrade){

        userService.savememberbasicgrade(memberbasicgrade);

        return "1";
    }

    @RequestMapping("/deletememberbasicgrade")
    @ResponseBody
    public Map<String,Object> deletememberbasicgrade(String ids){

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            userService.deletememberbasicgrade(ids);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }

        return map;

    }
    @RequestMapping("/deletememberbasiccomment")
    @ResponseBody
    public Map<String,Object> deletememberbasiccomment(String ids){

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            userService.deletememberbasiccomment(ids);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }

        return map;

    }
    @RequestMapping("/deletememberbasicconsult")
    @ResponseBody
    public Map<String,Object> deletememberbasicconsult(String ids){

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            userService.deletememberbasicconsult(ids);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }

        return map;

    }
    @RequestMapping("chakanxinxi")
    public ModelAndView chakanxinxi(String id){
        ModelAndView mav = new ModelAndView();

        Memberbasic memberbasic = userService.chakanxinxi(id);

        mav.addObject("chakan",memberbasic);

        mav.setViewName("members/membermanagement");

        return mav;
    }
}
