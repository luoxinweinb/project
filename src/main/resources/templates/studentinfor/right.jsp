<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=basePath%>/resources/css/jquery.mobile-1.3.2.min.css" rel="stylesheet">
<script src="<%=basePath%>/resources/js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath%>/resources/js/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>
           <div>
                <div class="ui-block-b"><a href="<%=basePath%>/view/studentinfor/student_info.jsp" data-ajax="false" data-role="button"><img src="<%=basePath%>resources/img/grxx.png" width="40%" height="40%"/></a></div>
               <div class="ui-block-a"><a href="studentscore/list.do?studentId=${stuinfo.studentId }" data-ajax="false" data-role="button"><img src="<%=basePath%>resources/img/cjxx.png" width="40%" height="40%"/></a></div>
               <div class="ui-block-b"><a href="studentinfor/studentpayment/list.do?studentId=${stuinfo.studentId }" data-ajax="false" data-role="button"><img src="<%=basePath%>resources/img/jfxx.png" width="40%" height="40%"/></a></div>
           </div>
           <div>
                <div class="ui-block-a"><a href="studentevaluationxueqi/list.do?studentId=${stuinfo.studentId }" data-ajax="false" data-role="button"><img src="<%=basePath%>resources/img/yuedupjxx.png" width="40%" height="40%"/></a></div>
               <div class="ui-block-a"><a href="evaluationinfor/list.do?studentId=${stuinfo.studentId }" data-ajax="false" data-role="button"><img src="<%=basePath%>resources/img/xueqipjxx.png" width="40%" height="40%"/></a></div>
             
           </div>	
</body>
</html>