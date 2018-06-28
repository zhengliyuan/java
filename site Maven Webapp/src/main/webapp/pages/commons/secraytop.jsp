<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <div class="content">
    <nav class="navbar navbar-default">
	  <div class="container-fluid">
	  <!-- 索引 -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Brand</a>
	    </div>
	    <!-- 导航栏 -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    <!-- 左侧导航 -->
	      <ul class="nav navbar-nav">
	        <li><a href="${pageContext.request.contextPath}/secray/index">首页</a></li>
	        <li><a href="${pageContext.request.contextPath}/secray/attack">攻击</a></li>
	        <li><a href="${pageContext.request.contextPath}/secray/loop">漏洞</a></li>
	        <li><a href="${pageContext.request.contextPath}/secray/rank">风险</a></li>
	        
	      </ul>
	    </div>
	  </div>
	</nav>
  </div>
 
