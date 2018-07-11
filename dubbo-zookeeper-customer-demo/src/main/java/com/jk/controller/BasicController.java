package com.jk.controller;

import com.jk.model.Tbasic;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;
import com.jk.model.Tmembers;
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
}
