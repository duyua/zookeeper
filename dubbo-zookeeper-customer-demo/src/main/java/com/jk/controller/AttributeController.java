package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;
import com.jk.service.AttributeService;
import com.jk.utils.ValidateCodeUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("attribute")
public class AttributeController {
    @Resource
    private AttributeService attributeService;
    @RequestMapping("selectattribute")
    public String selectattribute(){
        return "/attribute/selectshow";

    }
    //查询属性
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
     //查询类型
    @RequestMapping("selectclass")
    @ResponseBody
    public  List<Tclass> selectclass(){
        List<Tclass> list= attributeService.selecttclass();
        return list;
    }
    //新增属性
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
    @RequestMapping("deletebrandall")
    @ResponseBody
    public String deletebrandall(String ids){
        attributeService.deletebrandall(ids);
        return "1";
    }
    @RequestMapping("selectattributeupdate")
    public ModelAndView selectattributeupdate(String ids){

        Tattribute list=attributeService.selectattributeupdate(ids);

            List<Checkattr> listt= attributeService.selectcheckedall(ids);
        ModelAndView mo= new ModelAndView();
       mo.addObject("list",list);
       mo.addObject("listt",listt);
       mo.setViewName("/attribute/updateattr");
        return mo;
    }
    @RequestMapping("updateattribute")
    @ResponseBody
    public String updateattribute(Tattribute attr,String attrname){
        attributeService.updateattribute(attr,attrname);
        return "1";
    }
    @RequestMapping("selecttbandupdate")
    public String selecttbandupdate(String ids, Model mp){
        Tbrand list=attributeService.selecttbandupdate(ids);
        mp.addAttribute("list",list);
        return "/brand/updatebrand";
    }
    @RequestMapping("updateatbrand")
    @ResponseBody
    public String updateatbrand(Tbrand brn){
        attributeService.updateatbrand(brn);
        return "1";
    }
    /**
     * 获取验证码图片以及验证码code值
     */
    @RequestMapping("/validateCode")
    public void validateCode(
            HttpServletRequest request,
            HttpServletResponse response){

        // 设置响应的类型格式为图片格式
        response.setContentType("image/jpeg");
        //禁止图像缓存。
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        //获取session对象
        HttpSession session = request.getSession();

        //获取验证码图片以及验证码code值
        ValidateCodeUtil vCode = new ValidateCodeUtil(100,35,4,10);

        //将验证码code值存入session当中
        session.setAttribute("code", vCode.getCode());
        System.out.println(vCode.getCode());

        try {
            //将验证码图片写入到jsp页面
            vCode.write(response.getOutputStream());
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    //登陆
    @RequestMapping("selectname")
    @ResponseBody
    public String selectname(Memberbasic user,HttpServletRequest request, String validataCode){
        String sessionCode = request.getSession().getAttribute("code").toString();
        JSONObject json = attributeService.selectname(user,sessionCode,validataCode);
        Memberbasic users= (Memberbasic) json.get("nuser");
        System.out.println(users);
        if(users!=null){
            request.getSession().setAttribute("user", users);
            request.getSession().setAttribute("userid",users.getMemberbasicid());
        }
        return json.getString("flag");

    }
    //调用接口发送手机验证码并查询手机号是否注册
    @RequestMapping("dyyphonenumber")
    @ResponseBody
    public HashMap<Object, Object> phonenumber(String phone){
        HashMap<Object, Object> retuleMap=attributeService.phonenumber(phone);
        return retuleMap ;

    }
    //查询手机号和验证码是否正确，并存到session中
    @RequestMapping("dyyselectusersphone")
    @ResponseBody
    public HashMap<Object, Object> selectusersphone(Memberbasic user,String yanzheng,HttpServletRequest request){
        HttpSession session = request.getSession();
        String sessionCode = session.getAttribute("code").toString();

        HashMap<Object, Object> retuleMap=attributeService.selectusersphone(user,yanzheng, sessionCode);
        Memberbasic uss=(Memberbasic) retuleMap.get("user");
        if(uss!=null) {

            request.getSession().setAttribute("user", uss);
            request.getSession().setAttribute("userid",uss.getMemberbasicid());

        }

        return retuleMap ;

    }
    //调用接口发送手机验证码并查询手机号是否注册
    @RequestMapping("dyyphonenumberzhuce")
    @ResponseBody
    public HashMap<Object, Object> dyyphonenumberzhuce(String phone){
        HashMap<Object, Object> retuleMap=attributeService.phonenumberzhuce(phone);
        return retuleMap ;

    }
    @RequestMapping("saveMemberbasic")
    @ResponseBody
    public String saveMemberbasic(Memberbasic basic,HttpServletRequest request){
        basic.setMemberbasicid(UUID.randomUUID().toString());
        attributeService.saveMemberbasic(basic);
        return "1" ;
    }
}
