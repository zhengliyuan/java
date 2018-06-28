package com.zly.site.dao;

import java.util.List;
import java.util.Map;

import com.zly.site.model.SiteRecord;

public interface SiteRecordExtMapper {
	/**
	 * 获得各个时间结点的上网人数
	 * @return
	 */
    List<Map<String,Object>> getCountByHour();
    
    /**
     * 获得上网时长不同的上网人数
     * @return
     */
    List<Map<String,Object>> getCountByDuration();
    
    /**
     * 获取籍贯获得上网人数
     * @return
     */
    List<Map<String,Object>> getCountByNative();
    
    List<Map<String,Object>> getCountByProvince();
}