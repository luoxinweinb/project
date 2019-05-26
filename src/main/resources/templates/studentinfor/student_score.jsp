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
<title>成绩信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/jquery.mobile-1.3.2.min.css" rel="stylesheet">
<script src="resources/js/jquery-1.8.3.min.js"></script>
<script src="resources/js/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>
<div data-role="page">
    <div data-role="content">
    <ul data-role="listview" data-filter="true" data-filter-placeholder="请输入搜索内容">
      
      <c:forEach items="${list }" var="swg">
      <li>
        <img src="<%=basePath%>resources/img/xycj.png"  width="50%" height="60%">
            <h2>
            <b>课程：</b>${swg.disciplineName }&nbsp;&nbsp;&nbsp;&nbsp;
            <b>成绩：</b>${swg.writeGrade } &nbsp;&nbsp;&nbsp;&nbsp;
            </h2>
            <p><b>学年：</b>${swg.writeGradeXuenian }  &nbsp;&nbsp;&nbsp;&nbsp;
            <b>学期：</b>${swg.writeGradeXueqi } &nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>   <b>登分人：</b>${swg.staffName } </p>
			<p>   <b>登分时间：</b> <fmt:formatDate value="${swg.writeGradeTime }"/></p>
             <p>${swg.writeGradeNote }</p>
      </li>      
     </c:forEach>
    </ul>
    </div>
</div>
</body>
</html>