package com.zly.site.dao;

import com.zly.site.model.CompanyEmail;

public interface CompanyEmailMapper {
    int insert(CompanyEmail record);

    int insertSelective(CompanyEmail record);
}