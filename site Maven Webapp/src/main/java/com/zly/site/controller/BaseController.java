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
     * ������ݸ�ǰ̨ajax��������ʽ��({success:'true��false',message:'��ʾ��Ϣ'})
     *
     * @param obj
     */
    public void ajaxPrint(Object obj) {
        ajaxPrint(obj, "utf-8");
    }

    /**
     * ������ݸ�ǰ̨ajax��������ʽ��({success:'true��false',message:'��ʾ��Ϣ'})
     *
     * @param obj  �����List
     * @param code �����ַ���
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
