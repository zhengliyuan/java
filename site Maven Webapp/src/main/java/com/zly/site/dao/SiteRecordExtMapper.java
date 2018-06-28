package com.zly.site.dao;

import java.util.List;
import java.util.Map;

import com.zly.site.model.SiteRecord;

public interface SiteRecordExtMapper {
	/**
	 * ��ø���ʱ�������������
	 * @return
	 */
    List<Map<String,Object>> getCountByHour();
    
    /**
     * �������ʱ����ͬ����������
     * @return
     */
    List<Map<String,Object>> getCountByDuration();
    
    /**
     * ��ȡ��������������
     * @return
     */
    List<Map<String,Object>> getCountByNative();
    
    List<Map<String,Object>> getCountByProvince();
}