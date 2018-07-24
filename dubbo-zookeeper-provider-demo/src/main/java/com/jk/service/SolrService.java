package com.jk.service;

import com.jk.model.ResultModel;
import org.apache.solr.client.solrj.SolrServerException;

import java.io.IOException;


public interface SolrService {

    ResultModel search(String queryString, String basicname, String price, Integer page, String sort) throws IOException, SolrServerException;
}
