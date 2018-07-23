package com.jk.controller;

import com.jk.model.*;
import com.jk.service.IProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("basicController")
public class BasicController {
    @Resource
    private IProductService productService;
    /**
     * 点击退出清空session
     */
    @RequestMapping("tuichu")
    public String tuichu(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("userid");
        session.removeAttribute("user");
        return "heji/missSixty";
    }
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
    /**
     * 商品参数跳转页面
     */
    @RequestMapping("parameterye")
    public String parameterye(){
        return "merchandise/parameterlist";
    }
    /**
     * 查询商品参数信息
     */
    @RequestMapping("parameterlist")
    @ResponseBody
    public List<Tparameter> parameterlist(){
        List<Tparameter> list=productService.parameterlist();
        return list;
    }
    /**
     * 删除商品参数信息
     */
    @RequestMapping("parameterdelete")
    @ResponseBody
    public Integer parameterdelete(String parameterid){
        Integer i=productService.deleteparameter(parameterid);
        return i;
    }
    /**
     * 商品参数新增
     */
    @RequestMapping("parameteradd")
    @ResponseBody
    public  Integer parameteradd(Tparameter tparameter,String paixu){
        Integer i=productService.addparameter(tparameter,paixu);
        return i;
    }
    /**
     * 商品参数修改查询
     */
    @RequestMapping("parameterupdateye")
    public String parameterupdateye(String id,Model ma){
        Tparameter tparameter=productService.parameterlistbyid(id);
        ma.addAttribute("tp",tparameter);
        return "merchandise/parameterupdate";

    }
    /**
     * 商品参数新增
     */
    @RequestMapping("parameterupdate")
    @ResponseBody
    public  Integer parameterupdate(Tparameter tparameter){
        Integer i=productService.updateparameter(tparameter);
        return i;
    }
    /**
     * 新增购物车商品信息
     */
    @RequestMapping("addshpping")
    @ResponseBody
    public Integer addshpping(Cart cart,HttpServletRequest request){
        String userid= (String) request.getSession().getAttribute("userid");
        cart.setCartuserid(userid);
        cart.setCartbasicid("d54fc22f0e6a459792d0b4dd55e3034e");
        cart.setBasicname("交罚款");
        cart.setBasicprice(230.23);
        cart.setBasicsize("M");
        cart.setBasicsumprice(230.23);
        cart.setBasicnumber("3243");
        cart.setBasiccount(1);
        cart.setBasiccolor("蓝色");
      Integer i= productService.addshpping(cart);
        return i;
    }

    /**
     * 查询购物车中的商品信息
     */
    @RequestMapping("querygwlist")
    public ModelAndView querygwlist(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        String userid= (String) request.getSession().getAttribute("userid");
        if(userid==null){
            mav.setViewName("login");
        }else{
            List<Cart> list = productService.querygwlist(userid);
            if(list.size()>0&&list!=null){
                mav.addObject("car",list);
                mav.setViewName("cart/newlist");
            }else {
                mav.setViewName("cart/cart4");
            }

        }



        return mav;
    }

    /**
     * 删除购物车的商品
     * @param id
     * @return
     */
    @RequestMapping("deleteList")
    public String deleteList(String id){
        productService.deleteList(id);
        return "redirect:querygwlist.do";
    }

    /**
     * 进入结算页面，查询购物车以及地址列表
     * @param jiage
     * @param jianshu
     * @param shangid
     * @param dingid
     * @return
     */
    @RequestMapping("jiesuan")
    public String jiesuan(Double jiage,Integer jianshu,String shangid,String dingid,Model ma,HttpServletRequest request){
        String userid = (String) request.getSession().getAttribute("userid");
        List<Cart> list = productService.querygwlist(userid);
        List<Receiveraddress> dizhi = productService.queryreciverlist(userid);
        ma.addAttribute("jiage",jiage);
        ma.addAttribute("jianshu",jianshu);
        ma.addAttribute("shangid",shangid);
        ma.addAttribute("gouwuid",dingid);
        ma.addAttribute("list",list);
        ma.addAttribute("dizhi",dizhi);
        return "cart/cart2";
    }
    /**
     * 跳转我的账户页面
     */
    @RequestMapping("mehost")
    public  String mehost(){
        return "cart/mehost";
    }
    /**
     * 添加用户收货地址
     */
    /*@RequestMapping("addaddress")
    @ResponseBody
    public List<Receiveraddress> addaddress(Receiveraddress  receiver,HttpServletRequest request){
        String useid="1";
        receiver.setUserid(useid);
        List<Receiveraddress> list = productService.addreceiver(receiver,useid);
        return list;
    }*/
    /**
     * 新增订单信息
     */
    @RequestMapping("adddingdan")
    public String adddingdan(String shangpinid,String gouwuid,Double jine,Integer jianshu,String shouname,HttpServletRequest request,Model ma){
        String useid=(String) request.getSession().getAttribute("userid");

         Management  management=new Management();
         management.setManagementpaymentid(shangpinid);
         management.setManagementconsignee(shouname);
         management.setManagementamount(jine);
         management.setManagementdeliverystatus(jianshu);
         management.setManagementmemberid(useid);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String date = df.format(new Date());
        management.setManagementcreatdate(date);
        SimpleDateFormat dd = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
        String dat = dd.format(new Date());
        management.setManagementnumber("hj"+dat);
        productService.adddingdan(management,gouwuid);
       ma.addAttribute("bianhao","hj"+dat);
       ma.addAttribute("jine",jine);
       ma.addAttribute("userid",useid);
       ma.addAttribute("shangpinid",shangpinid);
        return "cart/cart3";
    }
    /**
     * 点击支付修改订单状态
     */
    @RequestMapping("chenggongupdate")
    public String chenggongupdate(String bianhao,String userid,String shangpinid,String jine){
         productService.updatedingdan(bianhao,userid,shangpinid,jine);
        return "redirect:querygwlist.do";
    }
}
