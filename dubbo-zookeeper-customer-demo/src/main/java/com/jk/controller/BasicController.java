package com.jk.controller;

import com.jk.model.*;
import com.jk.service.IProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("basicController")
public class BasicController {
    @Resource
    private IProductService productService;

    /**
     * 查询商品信息跳转页面
     * @return
     */
    @RequestMapping("basicye")
    public String basicye(){
        return "merchandise/merchandiselist";
    }


    /**
     * 查询商品信息
     * @return
     */
    @RequestMapping("basiclist")
    @ResponseBody
    public List<Tbasic> querybasiclist(){
        List<Tbasic> list =productService.queryList();
        return list;
    }
    /**
     * 查询商品分类列表
     */
    @RequestMapping("typelist")
    @ResponseBody
    public List<Tclass> typelist(){
        List<Tclass> list=productService.typelist();
        return list;
    }
    /**
     * 查询商品品牌列表
     */
    @RequestMapping("pinpailist")
    @ResponseBody
    public List<Tbrand> pinpailist(){
        List<Tbrand> list=productService.pinpailist();
        return list;
    }
    /**
     * 商品新增方法
     */
    @RequestMapping("basicinsert")
    @ResponseBody
    public Integer basicinsert(Tbasic tbasic, Tmembers tmembers){
        productService.addinsert(tbasic,tmembers);
        return 1;
    }
    /**
     * 商品删除的方法
     */
    @RequestMapping("basicdelete")
    @ResponseBody
    public Integer basicdelete(String basicid){
        Integer i=productService.deletebasic(basicid);
        return i;
    }
    /**
     * 商品修改查询的方法
     */
    @RequestMapping("merchandisupdateye")
    public String merchandisupdateye(String id, Model ma){
         Tbasic bas=productService.querybasicbyid(id);
         ma.addAttribute("bas",bas);
        return "merchandise/merchandisupdate";
    }
    /**
     * 商品修改的方法
     */
    @RequestMapping("basicupdate")
    @ResponseBody
    public Integer basicupdate(Tbasic tbasic, Tmembers tmembers){
        Integer i=productService.updatebasic(tbasic,tmembers);
        return i;
    }
    /**
     * 商品介绍新增的方法
     */
    @RequestMapping("jieshaoinsert")
    @ResponseBody
    public Integer jieshaoinsert(String description){
        return 1;
    }
    /**
     * 商品分类跳转页面
     */
    @RequestMapping("classye")
    public String classye(){
        return "merchandise/classlist";
    }
    /**
     * 分类列表删除
     */
    @RequestMapping("classdelete")
    @ResponseBody
    public Integer classdelete(String id){
        Integer i=productService.deleteclass(id);
        return i;
    }
    /**
     * 分类列表修改跳转页面
     */
    @RequestMapping("classupdateye")
    public String classupdateye(String id,String name,Integer classsort,String pid,Model ma){
        List<Tbrand> list=productService.pinpailist();
       List<BrandClass> brandlist=productService.guanlianlist(id);

        ma.addAttribute("id",id);
        ma.addAttribute("pid",pid);
        ma.addAttribute("name",name);
        ma.addAttribute("classsort",classsort);
        ma.addAttribute("list",list);
       ma.addAttribute("brandlist",brandlist);
        return "merchandise/classupdate";

    }
    /**
     * 分类列表修改
     */
    @RequestMapping("classsupdate")
    @ResponseBody
    public Integer classsupdate(Tclass tclass,String fu){
        Integer i=productService.updateclass(tclass,fu);
        return i;
    }
    /**
     * 分类新增跳转页面
      */
    @RequestMapping("classaddye")
    public String classaddye(Model ma){
        List<Tbrand> list=productService.pinpailist();
        ma.addAttribute("list",list);
        return "merchandise/classadd";
    }
    /**
     * 分类列表新增
     */
    @RequestMapping("classsadd")
    @ResponseBody
    public Integer classsadd(Tclass tclass,String fu){
        Integer i=productService.addclass(tclass,fu);
        return i;
    }
}
