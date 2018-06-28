package com.zly.site.dao;

import com.zly.site.model.CompanyLogin;

public interface CompanyLoginMapper {
    int insert(CompanyLogin record);

    int insertSelective(CompanyLogin record);
}