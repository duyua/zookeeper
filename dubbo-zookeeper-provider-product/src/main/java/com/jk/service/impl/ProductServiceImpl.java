package com.jk.service.impl;

import com.jk.mapper.ProductMapper;
import com.jk.model.*;
import com.jk.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service("productService")
public class ProductServiceImpl implements IProductService {
   @Autowired
   private ProductMapper productMapper;

    /**
     * 测试用方法
     * @return
     */
    public String productquery() {
        return "测通了";
    }

    /**
     * 查询商品信息列表
     * @return
     */
    public List<Tbasic> queryList() {
        List<Tbasic> list= productMapper.queryList();
        return list;
    }

    /**
     * 查询商品分类列表
     * @return
     */
    public List<Tclass> typelist() {

      //  String pid="0";
        List<Tclass> list=productMapper.typelist();

        return list;
    }
    /**
     * 递归查询分类列表
     */
   /* public List<Tclass> typelist(String pid){
        List<Tclass> list=productMapper.typelist(pid);
        for(Tclass tclass:list){
            List<Tclass> typelist = typelist(tclass.getId());
            if(typelist.size()>0&&typelist!=null){
                tclass.setChildren(typelist);
            }
        }
        return list;
    }*/

    /**
     * 查询商品品牌列表
     * @return
     */
    public List<Tbrand> pinpailist() {
        List<Tbrand> list=productMapper.pinpailist();
        return list;
    }

    public void addinsert(Tbasic tbasic,Tmembers tmembers) {
        if(tbasic.getMembered()!=null){
            String s = UUID.randomUUID().toString().replaceAll("-", "");
            if(tmembers.getGoidmembers()==null){
                 tmembers.setGoidmembers(1.0);
            }
            if(tmembers.getPlatinummember()==null){
                tmembers.setPlatinummember(1.0);
            }
            if(tmembers.getRegularmembers()==null){
                tmembers.setSilvermember(1.0);
            }
            if(tmembers.getSilvermember()==null){
                tmembers.setSilvermember(1.0);
            }
            if(tmembers.getVipmember()==null){
                 tmembers.setVipmember(1.0);
            }
            tmembers.setMemberid(s);
            int i=productMapper.addmembers(tmembers);
            tbasic.setMembersid(s);
        }
        String set = UUID.randomUUID().toString().replaceAll("-", "");
        tbasic.setBasicid(set);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        String ft = sdf.format(new Date());
        tbasic.setBasiccreatdate(ft);
        if(tbasic.getMembered()==null){
            tbasic.setMembered(0);
            tbasic.setMembersid("null");
        }

        productMapper.addinsert(tbasic);
    }

    public Integer deletebasic(String basicid) {
        Integer i=productMapper.deletebasic(basicid);
        return i;
    }

    public Tbasic querybasicbyid(String id) {
        Tbasic bas=productMapper.querybasicbyid(id);
        return bas;
    }

    public Integer updatebasic(Tbasic tbasic, Tmembers tmembers) {
        if(tbasic.getMembered()!=null){
            if(tmembers.getGoidmembers()==null){
                tmembers.setGoidmembers(1.0);
            }
            if(tmembers.getPlatinummember()==null){
                tmembers.setPlatinummember(1.0);
            }
            if(tmembers.getRegularmembers()==null){
                tmembers.setSilvermember(1.0);
            }
            if(tmembers.getSilvermember()==null){
                tmembers.setSilvermember(1.0);
            }
            if(tmembers.getVipmember()==null){
                tmembers.setVipmember(1.0);
            }

            int i=productMapper.updatemembers(tmembers);

        }else{
           productMapper.deletemembers(tmembers.getMemberid());
        }
        if(tbasic.getMembered()==null){
            tbasic.setMembered(0);
            tbasic.setMembersid("null");
        }
        System.out.println(tbasic);
      Integer i=  productMapper.updatebasic(tbasic);
        return i;
    }

    public Integer deleteclass(String id) {
        Integer i=productMapper.deleteclass(id);
        return i;
    }

    public Integer updateclass(Tclass tclass, String fu) {
         productMapper.deletebrandclass(tclass.getId());
        if (fu!=null) {
            String[] brandid = fu.split(",");
            for (int i=0;i<brandid.length;i++){
                String uuid = UUID.randomUUID().toString().replaceAll("-", "");
                productMapper.addbrandclass(uuid,tclass.getId(),brandid[i]);
            }
        }
        Integer i=productMapper.updateclass(tclass);
        return i;
    }

    public List<BrandClass> guanlianlist(String id) {
        return productMapper.guanlianlist(id);
    }

    public Integer addclass(Tclass tclass, String fu) {
        String ids=UUID.randomUUID().toString().replaceAll("-","");
        if (fu!=null) {
            String[] brandid = fu.split(",");
            for (int i=0;i<brandid.length;i++){
                String uuid = UUID.randomUUID().toString().replaceAll("-", "");
                productMapper.addbrandclass(uuid,ids,brandid[i]);
            }
        }
        tclass.setId(ids);
        Integer i=productMapper.addclass(tclass);
        return i;
    }

    public List<Tparameter> parameterlist() {
        String ll="";
        List<Tparameter> list=productMapper.parameterlist();
        for (int i=0;i<list.size();i++){

            List<Parameterdetailed> listpara=productMapper.parameterdetailed(list.get(i).getParameterid());
             for (int j=0;j<listpara.size();j++){
                 ll+=" "+listpara.get(j).getMinutename();

             }

            list.get(i).setMinutename(ll);
              ll="";
        }
        return list;
    }

    public Integer deleteparameter(String parameterid) {
        Integer i=productMapper.deleteparameter(parameterid);
        return i;
    }

    public Integer addparameter(Tparameter tparameter,String paixu) {
        String uu=UUID.randomUUID().toString().replaceAll("-","");
        String [] ziduan=tparameter.getMinutename().split(",");
        String []  pai=paixu.split(",");
        for (int i=0;i<ziduan.length;i++){
            String st=UUID.randomUUID().toString().replaceAll("-","");
                   Parameterdetailed  parameterdetailed=new Parameterdetailed();
                   parameterdetailed.setDetailedid(st);
                   parameterdetailed.setDetailedparameterid(uu);
                   parameterdetailed.setMinutename(ziduan[i]);
                   parameterdetailed.setDetailedsort(Integer.parseInt(pai[i]));
                   productMapper.addparameterdetailed(parameterdetailed);
        }
        tparameter.setParameterid(uu);
        Integer i= productMapper.addparameter(tparameter);
        return i;
    }

    public Tparameter parameterlistbyid(String id) {
        String sty="";
        String  xuxu="";
        Tparameter list=productMapper.parameterlistbyid(id);
        List<Parameterdetailed> listpara=productMapper.parameterdetailed(list.getParameterid());
        for (int j=0;j<listpara.size();j++){
            sty+=","+listpara.get(j).getMinutename();
            xuxu+=","+listpara.get(j).getDetailedsort();
        }
        sty=sty.substring(1);
        xuxu=xuxu.substring(1);
        list.setDetailedsort(xuxu);
        list.setMinutename(sty);
        return list;
    }

    public Integer updateparameter(Tparameter tparameter) {
        productMapper.deleteparameterdetailed(tparameter.getParameterid());
         String paixu=tparameter.getDetailedsort();
        String []  pai=paixu.split(",");
        String [] ziduan=tparameter.getMinutename().split(",");
        for (int i=0;i<ziduan.length;i++){
            String st=UUID.randomUUID().toString().replaceAll("-","");
            Parameterdetailed  parameterdetailed=new Parameterdetailed();
            parameterdetailed.setDetailedid(st);
            parameterdetailed.setDetailedparameterid(tparameter.getParameterid());
            parameterdetailed.setMinutename(ziduan[i]);
            parameterdetailed.setDetailedsort(Integer.parseInt(pai[i]));
            productMapper.addparameterdetailed(parameterdetailed);
        }



        return productMapper.updateparameter(tparameter);
    }

    @Override
    public Integer addshpping(Cart cart) {
        Integer i=0;
        List<Cart> querygwlist = productMapper.querygwlisttwo(cart.getCartuserid(),cart.getCartbasicid(),cart.getBasicsize(),cart.getBasiccolor());
       if(querygwlist!=null&&querygwlist.size()>0){
         i= productMapper.updatecart(querygwlist.get(0).getCartid(),cart.getCartuserid(),cart.getBasicsumprice(),cart.getBasiccount());
       }else {
           String uuid = UUID.randomUUID().toString().replaceAll("-", "");
           cart.setCartid(uuid);
          i=productMapper.addcart(cart);
       }

        return i;
    }


    public List<Cart> querygwlist(String userid) {
        return productMapper.querygwlist(userid);
    }

    public void deleteList(String id) {
        productMapper.deleteList(id);
    }

   /* @Override
    public List<Receiveraddress> addreceiver(Receiveraddress receiver,String useid) {
          String di="";
          String si="";
            if(receiver.getSheng()=="11"){
                di="北京";
            }
        if(receiver.getSheng()=="21"){
            di="河北";
        }
        if(receiver.getSheng()=="31"){
            di="山东";
        }
        receiver.setSheng(di);
        if(receiver.getShi()=="41"){
            si="海淀区";
        }
        if(receiver.getShi()=="51"){
            si="朝阳区";
        }
        if(receiver.getShi()=="61"){
            si="曹县";
        }
        if(receiver.getShi()=="71"){
            si="邯郸";
        }
        receiver.setShi(si);
       String uuid= UUID.randomUUID().toString().replaceAll("-","");
       receiver.setId(uuid);
        productMapper.addaddress(receiver);
      List<Receiveraddress> list=productMapper.queryaddresslist(receiver.getUserid());
        return list;
    }
*/
    @Override
    public List<Receiveraddress> queryreciverlist(String userid) {
        List<Receiveraddress> list=productMapper.queryaddresslist(userid);
        return list;
    }

    @Override
    public void adddingdan(Management management, String gouwuid) {
        productMapper.deleteList(gouwuid);
       String uuid= UUID.randomUUID().toString().replaceAll("-","");
       management.setManagementid(uuid);
       management.setManagementstatus(1);
        productMapper.adddingdan(management);
    }

    @Override
    public void updatedingdan(String bianhao, String userid, String shangpinid,String jine) {
        productMapper.updatedingdan(bianhao);
        Tbasic tbasic=productMapper.querybasicbyid(shangpinid);
       Double ss= Double.parseDouble(jine);
        Integer zengsongjifen = tbasic.getZengsongjifen();
        productMapper.updatemanagement(userid,ss,zengsongjifen);
    }


}
