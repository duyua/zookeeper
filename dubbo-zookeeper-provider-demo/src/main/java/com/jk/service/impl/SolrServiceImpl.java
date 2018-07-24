package com.jk.service.impl;

import com.jk.model.ResultModel;
import com.jk.model.Tbasic;
import com.jk.service.SolrService;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Service;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@Service("solrService")
public class SolrServiceImpl implements SolrService {
    // solr 部署的url
    private static final String url = "http://192.168.3.114:8180/solr";
    // home
    private static final String uri = "my_code";
    //定义常量，代表每页显示的商品条数：
    private final static Integer PAGE_SIZE = 18;
    @Override
    public ResultModel search(String queryString, String basicname, String price, Integer page, String sort) throws IOException, SolrServerException {
        //1、封装查询条件对象，因为需要调用dao层的方法，dao层的检索方法就需要一个solr服务的查询条件对象：
        SolrQuery solrQuery = new SolrQuery();

        /*//2、设置默认查询的域(该默认的域已经在solrHome/collection1/conf/schema.xml配置文件中配置了业务域)：
        solrQuery.setQuery("product_keywords");*/
        //3、设置查询的关键字:
        if(basicname!=null && !"".equals(basicname)){
            solrQuery.setQuery("basicname:"+basicname);
        }else{
            //如果没有查询的关键字，则默认查询所有商品数据：
            solrQuery.setQuery("*:*");
        }
        //4、按照商品价格排序展示商品数据：
        if("1".equals(sort)){
            solrQuery.setSort("basicprice", SolrQuery.ORDER.asc);
        }else if("2".equals(sort)){
            solrQuery.setSort("basicprice", SolrQuery.ORDER.desc);
        }
        //5.按照商品上架日期排序   新品
        if("3".equals(sort)){
            solrQuery.setSort("basiccreatdate", SolrQuery.ORDER.desc);
        }
        //7、分页查询商品数据：
        //首先校验数据合法性，如果当前页的值为空或小于1，则默认开始查询第一页数据：
        if(page == null){
            page = 1;
        }
        if(page < 1){
            page = 1;
        }
        //计算起始索引：
        Integer startIndex = (page-1) * PAGE_SIZE;
        //设置起始索引：
        solrQuery.setStart(startIndex);
        //设置每页显示的商品记录数：
        solrQuery.setRows(PAGE_SIZE);
         /*hl
         *  是否高亮 ,如hl=true*/
        solrQuery.setHighlight(true);
        //得到查询连接
        SolrClient sc = getSolrClient();
        SolrDocumentList results =sc.query(solrQuery).getResults();
        //3、处理结果集：
                 //专门用于存放响应结果集中的个个商品数据的集合
                 List<Tbasic> productList = new ArrayList<Tbasic>();
                 //用于将检索到的并处理好的数据封装到ResultModel对象中，用于返回给Service层：
                 ResultModel resultModel = new ResultModel();
                 //做非空校验，如果检索到的结果集不为空的话，就进行处理并封装结果数据：
                 if(results != null){
                         //(1)、封装查询到的商品总数：
                         resultModel.setRecordCount(results.getNumFound());
                         //(2)、遍历响应中的结果集，并将数据一一封装进ProductModel对象中：
                         for (SolrDocument document : results) {
                                 //创建Tbasic对象：
                             Tbasic tbasic = new Tbasic();
                                 //商品id：
                             tbasic.setBasicid(String.valueOf(document.get("id")));
                                 //商品名称：
                             tbasic.setBasicname(String.valueOf(document.get("basicname")));
                                 //商品价格：
                                 if(String.valueOf(document.get("basicmarket"))!=null &&
                                                 !"".equals(String.valueOf(document.get("basicmarket")))){
                                     tbasic.setBasicmarket(Double.valueOf(String.valueOf(document.get("basicmarket"))));
                                     }
                             //商品售价：
                             if(String.valueOf(document.get("basicprice"))!=null &&
                                     !"".equals(String.valueOf(document.get("basicprice")))){
                                 tbasic.setBasicprice(Double.valueOf(String.valueOf(document.get("basicprice"))));
                             }
                                 //商品图片：
                             tbasic.setImgname(String.valueOf(document.get("imgname")));
                                 //将当前遍历并封装好的ProductModel对象添加到存放商品数据的集合中：
                                 productList.add(tbasic);
                             }
                         //循环处理并封装好结果集之后，将存放商品数据的集合设置到ResultModel对象中：
                         resultModel.setProductList(productList);
                     }
        //8、根据封装后的SolrQuery查询对象查询商品数据：
        //设置当前页数：
        resultModel.setCurPage(page);
        //计算总页数：
        Long pageCount = (long) Math.ceil((resultModel.getRecordCount()*1.0) / PAGE_SIZE);
        //设置总页数：
        resultModel.setPageCount(pageCount);

        return resultModel;
    }

    public static SolrClient getSolrClient() {
        HttpSolrClient HttpSolrClient= new  HttpSolrClient(url + "/" + uri);
        return HttpSolrClient;
    }
}
