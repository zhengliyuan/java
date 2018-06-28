package com.zly.site.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;

@Controller
@RequestMapping("/baseController")
public class BaseController {
	@Autowired
    protected HttpServletRequest request;
    @Autowired
    protected HttpServletResponse response;
    @Autowired
    protected HttpSession session;
    /**
     * 输出内容给前台ajax参数，格式：({success:'true或false',message:'提示信息'})
     *
     * @param obj
     */
    public void ajaxPrint(Object obj) {
        ajaxPrint(obj, "utf-8");
    }

    /**
     * 输出内容给前台ajax参数，格式：({success:'true或false',message:'提示信息'})
     *
     * @param obj  对象或List
     * @param code 编码字符集
     */
    public void ajaxPrint(Object obj, String code) {
        response.setContentType("text/html;charset=" + code);
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        try {
            PrintWriter out = response.getWriter();
            if (obj instanceof List) {
                out.print(JSONArray.toJSONString(obj, SerializerFeature.WriteDateUseDateFormat, SerializerFeature.DisableCircularReferenceDetect, SerializerFeature.WriteMapNullValue));
            } else {
                out.print(JSON.toJSONString(obj, SerializerFeature.WriteDateUseDateFormat, SerializerFeature.DisableCircularReferenceDetect, SerializerFeature.WriteMapNullValue));
            }
        } catch (IOException e) {
        }
    }
}
