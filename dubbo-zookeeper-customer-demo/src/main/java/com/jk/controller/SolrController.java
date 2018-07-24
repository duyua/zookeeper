package com.jk.controller;

import com.jk.model.ResultModel;
import com.jk.service.SolrService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.net.URLDecoder;

@Controller
@RequestMapping("solr")
public class SolrController {
    @Resource
    private SolrService solrService;
    @RequestMapping("/list")
    //根据条件和分页信息检索商品数据：
    public String proList(String queryString, String name,
             String price, Integer page, String sort,Model model) throws Exception{
       String basicname = URLDecoder.decode(name, "UTF-8");

        //调用service层的方法得到检索后的数据：
        ResultModel resultModel  = solrService.search(queryString, basicname, price, page, sort);
        //将检索得到的数据返回给页面：
        model.addAttribute("result", resultModel);   //注意：这里的名称必须和jsp页面上获取数据的名称保持一致
        //回显查询条件：
        model.addAttribute("queryString", queryString);//这里的条件回显时，名称也必须和jsp页面上获取数据的名称保持一致
        model.addAttribute("basicname", basicname);
        model.addAttribute("price", price);
        model.addAttribute("sort", sort);
        return "heji/search";
    }


}
