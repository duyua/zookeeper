package com.jk.service;

import com.jk.model.ResultModel;
import com.jk.model.Tbasic;

public interface SolrService {

    ResultModel search(String queryString, String basicname, String price, Integer page, String sort);
}
