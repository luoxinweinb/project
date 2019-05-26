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
<title>学生信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/jquery.mobile-1.3.2.min.css" rel="stylesheet">
<script src="resources/js/jquery-1.8.3.min.js"></script>
<script src="resources/js/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>
<div data-role="page">
    <div data-role="content">
    <ul data-role="listview" >
      <li>
        <img src="resources/img/infor.jpg" width="50%" height="70%">
         <h3>${stuinfo.studentName }</h3>
         <p><b>学号：</b>${stuinfo.studentNo }     </p>
         <p><b>班级：</b>${stuinfo.className }     </p>
         <p><b>性别：</b>${stuinfo.studentSex }   </p>
         <p><b>出生日期：</b>${stuinfo.studentBirthday }  </p>
         <p><b>身份证号码：</b>${stuinfo.studentIdcard } </p>
         <p><b>民族：</b>${stuinfo.studentNational }</p>
         <p><b>籍贯：</b>${stuinfo.studentNative }</p>
         <p><b>入学时间：</b>${stuinfo.inDate } </p>
         <p><b>健康状况：</b>${stuinfo.studentHealth }</p>
         <p><b>是否党团员：</b>${stuinfo.studentIsleague }</p>
         <p><b>电话号码：</b>${stuinfo.studentTellphone }</p>	
         <p><b>QQ：</b>${stuinfo.studentQq }  </p>	
         <p><b>家庭地址：</b>${stuinfo.studentAddress }</p>
         <p><b>家庭电话：</b>${stuinfo.familyTellphone }</p>
         <p><b>专业：</b>${stuinfo.studentPro }  </p>
         <p><b>班级：</b>${stuinfo.className }  </p>
         <p><b>所在分院：</b>${stuinfo.studentSchool }  </p>
         <p><b>学制：</b>${stuinfo.studentEduSys }  </p>
         <p><b>城市：</b>${stuinfo.studentProCity }  </p>
         <p><b>学籍状态：</b>${stuinfo.studentState }  </p>
         <p><b>备注：</b>${stuinfo.studentDesc }  </p>
      </li>      
    </ul>
    </div>
</div>
</body>
</html>