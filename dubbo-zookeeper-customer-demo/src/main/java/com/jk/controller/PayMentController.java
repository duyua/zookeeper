package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.jk.service.PayMentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("payMent")
public class PayMentController {
    @Autowired
    private PayMentService payMentService;

    /**
     *查询收款信息
     * @return
     */
    @RequestMapping("queryPayMent")
    @ResponseBody
    public String queryPayMent(){

        List  list=payMentService.queryPayMent();
        System.out.println("++++++++++++++"+list.toString());

        return JSON.toJSONString(list);
    }

    /**
     * 删除收款管理信息
     * @param id
     * @return
     */
    public String deletePayMent(String id){
        payMentService.deletePayMent(id);
        return "success";
    }

    /**
     * 查询发货管理
     * @return
     */
    @RequestMapping("queryDelivery")
    @ResponseBody
    public String queryDelivery(){

        List  list=payMentService.queryDelivery();

        return JSON.toJSONString(list);
    }

    /**
     * 批量删除发货管理信息
     * @param ids
     * @return
     */
    @RequestMapping("deleteDelivery")
    @ResponseBody
    public String deleteDelivery(String ids){
        payMentService.deleteDelivery(ids);
        return "success";
    }

    /**
     * 查询退货管理信息
     * @return
     */
    @RequestMapping("queryReturn")
    @ResponseBody
    public String queryReturn(){
        List  list=payMentService.queryReturn();
        return JSON.toJSONString(list);
    }

    /**
     * 删除退货管理信息
     * @param ids
     * @return
     */
    @RequestMapping("deleteReturn")
    @ResponseBody
    public String deleteReturn(String ids){
        payMentService.deleteReturn(ids);
        return "success";
    }


    /**
     * 跳转收款管理页面
     * @return
     */
    @RequestMapping("jumpPayMent")
   public String jumpPayMent(){
        return "WEB-INF/payment/list";
   }
    /**
     * 跳转发货管理页面
     * @return
     */
    @RequestMapping("jumpDelivery")
    public String jumpDelivery(){
        return "WEB-INF/delivery/list";
    }
    /**
     * 跳转退货管理页面
     * @return
     */
    @RequestMapping("jumpReturn")
    public String jumpReturn(){
        return "WEB-INF/return/list";
    }







}
