package com.jk.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jk.mapper.AttributeMapper;


import com.jk.model.*;
import com.jk.service.AttributeService;
import com.jk.util.ConsConf;
import com.jk.util.HttpClientUtil;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service("attributeService")
public class AttributeServiceImpl implements AttributeService{
    @Autowired
    private AttributeMapper attributemapper;


    public List<Tattribute> selectattributeshow() {
        List<Tattribute> list= attributemapper.selectattributeshow();
        return list;
    }


    public List<Tclass> selecttclass() {
        List<Tclass> list= attributemapper.selecttclass();
        return list;
    }


    public void saveattribute(Tattribute attr,String attrname) {
        attr.setAttributeid(UUID.randomUUID().toString());
        attributemapper.saveattribute(attr);
       String [] uname= attrname.split(",");
        Checkattr checkattr = new Checkattr();
       for(int i=0;i<uname.length;i++){
           checkattr.setAttrid(attr.getAttributeid());
           checkattr.setAttrname(uname[i]);
           attributemapper.savecheckedattr(checkattr);
       }

    }


    public List<Checkattr> selectchecked(String attributeid) {
        List<Checkattr> listt= attributemapper.selectchecked(attributeid);
        return listt;
    }


    public void deleteall(String ids) {
        attributemapper.deleteall(ids);
        attributemapper.deleteallcheck(ids);
    }


    public List<Tbrand> selectbrandshow() {
        List<Tbrand> listt= attributemapper.selectbrandshow();
        return listt;
    }


    public void saveatbrand(Tbrand brr) {
        brr.setBrandid(UUID.randomUUID().toString());
        attributemapper.saveatbrand(brr);
    }


    public void deletebrandall(String ids) {
        attributemapper.deletebrandall(ids);
    }


    public  Tattribute selectattributeupdate(String ids) {
        Tattribute list= attributemapper.selectattributeupdate(ids);
        return list;
    }


    public List<Checkattr> selectcheckedall(String ids) {
        List<Checkattr> listt= attributemapper.selectcheckedall(ids);
        return listt;
    }


    public void updateattribute(Tattribute attr, String attrname) {
        attributemapper.updateattribute(attr);
        attributemapper.deletechecked(attr.getAttributeid());
        String [] uname= attrname.split(",");
        Checkattr checkattr = new Checkattr();
        for(int i=0;i<uname.length;i++){
            checkattr.setAttrid(attr.getAttributeid());
            checkattr.setAttrname(uname[i]);
            attributemapper.savecheckedattr(checkattr);
        }
    }


    public Tbrand selecttbandupdate(String ids) {
        Tbrand list= attributemapper.selecttbandupdate(ids);
        return list;
    }


    public void updateatbrand(Tbrand brn) {
        attributemapper.updateatbrand(brn);
    }


    public JSONObject selectname(Memberbasic user, String sessionCode, String validataCode) {
        JSONObject jsonObj = new JSONObject();
        Integer flag = 0;// 0:用户名不存在 1：密码错误 2：登录成功
        List<Memberbasic> list= attributemapper.selectname(user.getMemberbasicphone());
        if(list != null && list.size() > 0){
            flag = 1;
            Memberbasic newUser  = list.get(0);
            if(user.getMemberbasicmima().equals(newUser.getMemberbasicmima())){

                //登录成功时，将 数据库中查出来的user对象存到json对象中 返回controller层 存储到session中
                if(validataCode.equalsIgnoreCase(sessionCode)){
                    //验证码一致
                    flag = 2;
                } else {
                    //验证码错误
                    flag = 4;

                }
                jsonObj.put("nuser", newUser);
            }
        }
        jsonObj.put("flag", flag);
        return jsonObj;
    }
   /* //注入redis
    @Autowired
    private RedisTemplate<String, String> redisTemplate;*/
    /* (non-Javadoc)
     * @see com.jk.service.IUserService#phonenumber(java.lang.String)
     */
    public HashMap<Object, Object> phonenumber(String userphone) {
        //new 一个HashMap
        HashMap<Object, Object> retuleMap = new HashMap<Object,Object>();
        //查询手机号码是否存在
        Memberbasic uss=attributemapper.selectusersphone(userphone);
        if(uss!=null) {
            //构建请求接口数据体
            HashMap<String, Object> params = new HashMap<String,Object>();
            //获取格式化的时间
            SimpleDateFormat sd = new SimpleDateFormat("yyyyMMddHHmmss");
            String format = sd.format(new Date());
            //生成时间戳
            String sig= DigestUtils.md5Hex(ConsConf.PHONE_HTTP_Key+ConsConf.PHONE_HTTP_TUKEN+format);
            //调用随机数方法
            String randomNum = createRandomNum(6);//随机生成6位数的验证码

            params.put("accountSid",ConsConf.PHONE_HTTP_Key);
            params.put("to",userphone);

            params.put("smsContent","【爱约旅网】您的验证码为{"+randomNum+"}，请于{2}分钟内正确输入，如非本人操作，请忽略此短信。");

            params.put("timestamp",format);
            params.put("sig",sig);
            params.put("respDataType","JSON");
            //调用短信API接口
            String weather = HttpClientUtil.post(ConsConf.PHONE_PATH, params);
            //将字符串转换为JSON对象
            JSONObject parse = (JSONObject) JSON.parse(weather);
            //获取状态码
            String status = parse.get("respCode").toString();
            //如果状态码不是成功的，返回错误码，否则就去解析json数据
            if(status.equals("00000")) {
                params.put("suiji", randomNum);
              /*  redisTemplate.opsForHash().putAll("suiji", params);
                //设置过期时间
                redisTemplate.expire("suiji", 20, TimeUnit.MINUTES);*/
                retuleMap.put("result", "<font color='green'>发送成功！</font>");
                return retuleMap;
            }else {


                retuleMap.put("result","<font color='red'>发送频繁,请稍后再试！</font>");

            }

        }else {

            retuleMap.put("result", "<font color='red'>该号码未注册,请先去注册！</font>");
        }


        return retuleMap;
    }


    //-------------------------------------------------------------------------------------------------------
    //为获取短信验证码生成6位数的随机数
    /**
     * 生成随机数
     * @param num 位数
     * @return
     */
    public static String createRandomNum(int num){
        String randomNumStr = "";
        for(int i = 0; i < num;i ++){
            int randomNum = (int)(Math.random() * 10);
            randomNumStr += randomNum;
        }
        return randomNumStr;
    }
    @Override
    public HashMap<Object, Object> selectusersphone(Memberbasic user, String yanzheng, String sessionCode) {
        //构建返回参数体
        HashMap<Object, Object> retuleMap = new HashMap<Object,Object>();

        //手机号码与验证码登陆

            int minyan=0;
                    //查询数据库里的手机号码
            Memberbasic uss=attributemapper.selectusersphone(user.getMemberbasicphone());
                    if(uss!=null) {
                            minyan = 5;
                            retuleMap.put("user",uss);
                        retuleMap.put("minyan",minyan);
                        }else {
                        //手机号码或邮箱不存在
                        minyan=3;
                        retuleMap.put("minyan",minyan);
                  }

        return retuleMap;
    }

    @Override
    public HashMap<Object, Object> phonenumberzhuce(String userphone) {
        //new 一个HashMap
        HashMap<Object, Object> retuleMap = new HashMap<Object,Object>();
        //查询手机号码是否存在
        Memberbasic uss=attributemapper.selectusersphone(userphone);
        if(uss==null) {
            //构建请求接口数据体
            HashMap<String, Object> params = new HashMap<String,Object>();
            //获取格式化的时间
            SimpleDateFormat sd = new SimpleDateFormat("yyyyMMddHHmmss");
            String format = sd.format(new Date());
            //生成时间戳
            String sig= DigestUtils.md5Hex(ConsConf.PHONE_HTTP_Key+ConsConf.PHONE_HTTP_TUKEN+format);
            //调用随机数方法
            String randomNum = createRandomNum(6);//随机生成6位数的验证码

            params.put("accountSid",ConsConf.PHONE_HTTP_Key);
            params.put("to",userphone);

            params.put("smsContent","【爱约旅网】您的验证码为{"+randomNum+"}，请于{2}分钟内正确输入，如非本人操作，请忽略此短信。");

            params.put("timestamp",format);
            params.put("sig",sig);
            params.put("respDataType","JSON");
            //调用短信API接口
            String weather = HttpClientUtil.post(ConsConf.PHONE_PATH, params);
            //将字符串转换为JSON对象
            JSONObject parse = (JSONObject) JSON.parse(weather);
            //获取状态码
            String status = parse.get("respCode").toString();
            //如果状态码不是成功的，返回错误码，否则就去解析json数据
            if(status.equals("00000")) {
                params.put("suiji", randomNum);
              /*  redisTemplate.opsForHash().putAll("suiji", params);
                //设置过期时间
                redisTemplate.expire("suiji", 20, TimeUnit.MINUTES);*/
                retuleMap.put("result", "<font color='green'>发送成功！</font>");
                return retuleMap;
            }else {


                retuleMap.put("result","<font color='red'>发送频繁,请稍后再试！</font>");

            }

        }else {

            retuleMap.put("result", "<font color='red'>该号码以注册,请直接登陆！</font>");
        }


        return retuleMap;
    }

    @Override
    public void saveMemberbasic(Memberbasic basic) {
        attributemapper.saveMemberbasic(basic);
    }
}
