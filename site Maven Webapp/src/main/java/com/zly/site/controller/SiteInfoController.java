package com.zly.site.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zly.site.service.SiteInfoService;
@Controller
@RequestMapping("/siteInfo")
public class SiteInfoController {
	@Resource
	private SiteInfoService siteInfoService;
	
	@RequestMapping("/index")
	public String test(HttpServletRequest request)
	{
//		String one=siteInfoService.test1();
		int one=siteInfoService.getCount();
		request.setAttribute("one", one);
		return "/test";
	}
	@RequestMapping("/getTest")
	public String getTest()
	{
		return "/exam21";
	}
}
