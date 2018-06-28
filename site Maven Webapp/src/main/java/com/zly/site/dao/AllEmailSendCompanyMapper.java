package com.zly.site.dao;

import com.zly.site.model.AllEmailSendCompany;

public interface AllEmailSendCompanyMapper {
    int insert(AllEmailSendCompany record);

    int insertSelective(AllEmailSendCompany record);
}