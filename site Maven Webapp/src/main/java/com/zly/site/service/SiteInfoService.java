package com.zly.site.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zly.site.dao.SiteInfoExtMapper;

@Service
public class SiteInfoService {
	
	@Resource
	private SiteInfoExtMapper siteInfoExtMapper;
	
	public int getCount(){
		int one=siteInfoExtMapper.getAllSiteCount();
		return one;
	}
	public String test1(){
		String one="Hello World!!!";
		return one;
	}
}
