<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>缴费信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/jquery.mobile-1.3.2.min.css" rel="stylesheet">
<script src="resources/js/jquery-1.8.3.min.js"></script>
<script src="resources/js/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>

<div data-role="page">

    <div data-role="content">
    <ul data-role="listview" data-filter="true" data-filter-placeholder="请输入搜索内容">
     
     <c:forEach items="${list }" var="payment">
      <li>
        <img src="<%=basePath%>resources/img/xuefei.jpg" width="50%" height="50%">
            <h3>${payment.paymentSituation }&nbsp;&nbsp;&nbsp;&nbsp;
             <b>欠款：</b>${payment.debtAmount }&nbsp;&nbsp;&nbsp;&nbsp; </h3>
             <p><b>缴费方式：</b><s:dataname dataId="${payment.paymentMethod }"/> &nbsp;&nbsp;&nbsp;&nbsp;
               <b>应交金额：</b>${payment.shouldAmount } </p>
			 <p><b>优惠金额：</b>${payment.discountAmount }&nbsp;&nbsp;&nbsp;&nbsp; 
			 <b>实交金额：</b>${payment.realAmount } </p>
			 <p><b>缴费时间：</b><fmt:formatDate value="${payment.paymentTime }"/>  </p>

             <p><b>备注：</b>${payment.paymentRemark }</p>
      </li>      
 </c:forEach>
    </ul>
    </div>
</div>
</body>
</html>