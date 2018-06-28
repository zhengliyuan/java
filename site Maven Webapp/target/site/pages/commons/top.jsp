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
	        <li class="active"><a href="${pageContext.request.contextPath}/companyIndex/index">index</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">department<span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/depatment/departmentHR">HR</a></li>
	            <li><a href="${pageContext.request.contextPath}/depatment/departmentFD">FD</a></li>
	            <li><a href="${pageContext.request.contextPath}/depatment/departmentRDC">RDC</a></li>
	            <li><a href="${pageContext.request.contextPath}/depatment/departmentGM">GM</a></li>
	            <li><a href="${pageContext.request.contextPath}/depatment/departmentAUTO">AUTO</a></li>
	          </ul>
	        </li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">exception<span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/exceptionExt/exception1">one</a></li>
	            <li><a href="${pageContext.request.contextPath}/exceptionExt/exception2">two</a></li>
	            <li><a href="${pageContext.request.contextPath}/exceptionExt/exception3">three</a></li>
	            <li><a href="${pageContext.request.contextPath}/exceptionExt/exception4">four</a></li>
	            <li><a href="${pageContext.request.contextPath}/exceptionExt/exception5">five</a></li>
	            <li><a href="${pageContext.request.contextPath}/exceptionExt/exception6">six</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
  </div>
 
