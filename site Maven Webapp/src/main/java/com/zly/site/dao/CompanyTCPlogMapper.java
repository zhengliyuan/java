package com.zly.site.dao;

import com.zly.site.model.CompanyTCPlog;

public interface CompanyTCPlogMapper {
    int insert(CompanyTCPlog record);

    int insertSelective(CompanyTCPlog record);
}