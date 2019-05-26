<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>显示月度评教</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>

<link href="resources/css/jquery.mobile-1.3.2.min.css" rel="stylesheet">
<script src="resources/js/jquery-1.8.3.min.js"></script>
<script src="resources/js/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>
<div data-role="page">
    <div data-role="content">
    <ul data-role="listview" data-filter="true" data-filter-placeholder="请输入搜索内容">
    <c:forEach items="${list }" var="evaluation">
	 <li>
        <img src="<%=basePath%>resources/img/info.png" width="50%" height="60%">
            <h2><b>学期：</b>${evaluation.evaluationXueqi } &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; 
            <b>月份：</b>${evaluation.evaluationMonth } &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; 
            <b>教师姓名：</b>${evaluation.staffName } &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; 
               评教情况：${evaluation.evaluationContent }</h2>
            <p><b>任教课程：</b>${evaluation.disciplineName }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p><b>专业：</b>${evaluation.evaluationMajor } &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; 
            <b>班级：</b>${evaluation.className } </p>
            <p><b>建议：</b>${evaluation.evaluationNote } </p> 
			<p><b>评价时间：</b><fmt:formatDate value="${evaluation.evaluationTime }"/>  </p>
      </li>
  </c:forEach>

    </ul>
    </div>
</div>
</body>
</html>