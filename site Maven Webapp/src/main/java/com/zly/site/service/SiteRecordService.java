package com.zly.site.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Service;

import com.zly.site.dao.SiteRecordExtMapper;

@Service
public class SiteRecordService {
	@Resource
	private SiteRecordExtMapper siteRecordExtMapper;
	
	public Map<String,Object> getBarByHour()
	{
		Map<String,Object> param=new HashMap<String,Object>();
		List<Map<String,Object>> list=siteRecordExtMapper.getCountByHour();
		//处理数据
		int size=list.size();
		int times[]=new int[size];
		int sums[]=new int[size];
		for(int i=0;i<size;i++)
		{
			times[i]=Integer.parseInt(list.get(i).get("time_").toString());
			sums[i]=Integer.parseInt(list.get(i).get("count_").toString());
		}
		param.put("times", times);
		param.put("sums", sums);
		return param; 
	}
	
	public Map<String,Object> getBarByDuration(){
		Map<String,Object> param=new HashMap<String,Object>();
		List<Map<String,Object>> list=siteRecordExtMapper.getCountByDuration();
		int size=list.size();
		int diff[]=new int[size];
		int sums[]=new int[size];
		for(int i=0;i<size;i++)
		{
			diff[i]=Integer.parseInt(list.get(i).get("timeDiff").toString());
			sums[i]=Integer.parseInt(list.get(i).get("count_").toString());
		}
		param.put("diff", diff);
		param.put("sums", sums);
		return param; 
	}
	
	public Map<String,Object> getBarByNative(){
		Map<String,Object> param=new HashMap<String,Object>();
		List<Map<String,Object>> list=siteRecordExtMapper.getCountByNative();
		int size=list.size();
		int areas[]=new int[size];
		int sums[]=new int[size];
		for(int i=0;i<size;i++)
		{
			areas[i]=Integer.parseInt(list.get(i).get("area").toString());
			sums[i]=Integer.parseInt(list.get(i).get("count_").toString());
		}
		param.put("areas", areas);
		param.put("sums", sums);
		return param; 
	}
	
	public Map<String,Object> getMapByProvince(){
		Map<String,Object> param=new HashMap<String,Object>();
		List<Map<String,Object>> list=siteRecordExtMapper.getCountByProvince();
		int size=list.size();
		List<Map<String,Object>> marklist=new ArrayList<Map<String, Object>>(); 
		for(int i=0;i<size;i++){
			Map<String, Object> tmp = new HashMap<String, Object>();
			tmp.put("name", list.get(i).get("name"));
			tmp.put("value", list.get(i).get("value")==null?0:list.get(i).get("value"));
			marklist.add(tmp);
		}
		param.put("mapData", marklist);
		return param;
	}
}
