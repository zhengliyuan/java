package com.zly.site.dao;

import java.util.List;
import java.util.Map;

import com.zly.site.model.AllEmailCompany;

public interface AllEmailCompanyExtMapper {
    String selectNumByEmail(String email);
    
    List<Map<String,Object>> selectAllEmailCompany();
}