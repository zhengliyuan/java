package com.zly.site.dao;

import com.zly.site.model.AllEmailCompany;

public interface AllEmailCompanyMapper {
    int insert(AllEmailCompany record);

    int insertSelective(AllEmailCompany record);
}