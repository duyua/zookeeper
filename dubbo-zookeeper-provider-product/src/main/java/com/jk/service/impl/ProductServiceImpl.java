package com.jk.service.impl;

import com.jk.mapper.ProductMapper;
import com.jk.model.Tbasic;
import com.jk.model.Tbrand;
import com.jk.model.Tclass;
import com.jk.model.Tmembers;
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
        List<Tclass> list=productMapper.typelist();
        return list;
    }

    /**
     * 查询商品品牌列表
     * @return
     */
    public List<Tbrand> pinpailist() {
        List<Tbrand> list=productMapper.pinpailist();
        return list;
    }

    public void addinsert(Tbasic tbasic,Tmembers tmembers) {
        if(tbasic.getMembered()==1){
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
        if(tbasic.getMembered()==1){
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
      Integer i=  productMapper.updatebasic(tbasic);
        return i;
    }
}
