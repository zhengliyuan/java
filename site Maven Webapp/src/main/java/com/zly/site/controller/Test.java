package com.zly.site.controller;

import java.util.Arrays;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zly.site.service.TestService;

@Controller
@RequestMapping("/test")
public class Test extends BaseController{
	@Resource
	private TestService testService;
	/*@RequestMapping("index")
	public String index(){
		return "/company/companyIndex";
	}
	@RequestMapping("test")
	public String chulishuju(HttpServletRequest request){
		int result=testService.getallemail();
		request.setAttribute("test", result);
		return "/test";
	}*/
	
	@RequestMapping("index")
	public String index(){
		//testService.getAllInfo();
		//testService.emailConpamy();
		testService.getAllInfoToCompany();
		return "/test";
	}
	
	
	
	public static void main(String[] args) {
		Random random=new Random();
		int dl=0;
		int zdl=0;
		int zl=0;
		int zgl=0;
		int gl=0;
		StringBuffer data01=new StringBuffer();
		data01.append("[");
		for(int i=0;i<18;i++){
			int count=random.nextInt(100);
			data01.append(count+",");
			if(count>=0&&count<20){
				dl++;
			}else if(count>=20&&count<40){
				zdl++;
			}else if(count>=40&&count<60){
				zl++;
			}else if(count>=60&&count<80){
				zgl++;
			}else if(count>=80&&count<=100){
				gl++;
			}
		}
		data01.append("]");
		data01.delete(data01.length()-2, data01.length()-1);
		System.out.println(data01.toString());
		System.out.println(dl+","+zdl+","+zl+","+zgl+","+gl);
	}
}
