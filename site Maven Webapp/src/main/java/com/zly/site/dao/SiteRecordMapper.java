package com.zly.site.dao;

import com.zly.site.model.SiteRecord;

public interface SiteRecordMapper {
    int insert(SiteRecord record);

    int insertSelective(SiteRecord record);
}