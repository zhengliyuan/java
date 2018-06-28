package com.zly.site.dao;

import com.zly.site.model.AllEmailSend;

public interface AllEmailSendMapper {
    int insert(AllEmailSend record);

    int insertSelective(AllEmailSend record);
}