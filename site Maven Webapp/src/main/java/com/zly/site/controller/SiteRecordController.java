package com.zly.site.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.zly.site.controller.*;
import com.zly.site.service.SiteRecordService;

@Controller
@RequestMapping("/siteRecord")
public class SiteRecordController extends BaseController{
	@Resource
	private SiteRecordService siteRecordService;
	
	
	@RequestMapping("/home")
	public String home(){
		return "/holder";
	}
	@RequestMapping("/index")
	public String index()
	{
		return "/exam21";
		//return "/sumOfHour";
	}
	@RequestMapping(value="/time",method=RequestMethod.POST )
	@ResponseBody
	public void time()
	{
		Map<String,Object> param=new HashMap<String,Object>();
		param=siteRecordService.getBarByHour();
		ajaxPrint(param);
	}
	
	@RequestMapping("/durationIndex")
	public String durationIndex(){
		return "/exam22";
	}
	@RequestMapping(value="/duration",method=RequestMethod.POST )
	@ResponseBody
	public void duration()
	{
		Map<String,Object> param=new HashMap<String,Object>();
		param=siteRecordService.getBarByDuration();
		ajaxPrint(param);
	}
	
	@RequestMapping("/nativeIndex")
	public String nativeIndex()
	{
		return "/exam23";
	}
	@RequestMapping(value="/native",method=RequestMethod.POST )
	@ResponseBody
	public void countByNative(){
		Map<String,Object> param=new HashMap<String,Object>();
		param=siteRecordService.getBarByNative();
		ajaxPrint(param);
	}
	
	@RequestMapping(value="/nativeMap",method=RequestMethod.POST)
	@ResponseBody
	public void nativeMap(){
		Map<String,Object> param=new HashMap<String,Object>();
		param=siteRecordService.getMapByProvince();
		ajaxPrint(param);
	}
	
	@RequestMapping("/dateIndex")
	public String dateIndex(){
		return "/exam24";
	}
	
}
