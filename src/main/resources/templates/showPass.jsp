<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>找回密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="resources/assets/css/ace.min.css" />
<link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />

<link rel="stylesheet" rev="stylesheet" href="<%=basePath%>/resources/css/login/style.css" type="text/css" media="all" />

<link href="<%=basePath%>/resources/css/login/validatecode.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="<%=basePath%>/resources/js/jquery-1.11.2.min.js"></script>
 <script type="text/javascript" src="<%=basePath%>/resources/js/login.js"></script>
 <script type="text/javascript" src="<%=basePath%>/resources/js/validatecode.js"></script>
</head>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}
-->
</style>
<link href="<%=basePath%>/resources/images/skin.css" rel="stylesheet" type="text/css">
<body >
<table width="100%" height="10" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
      <tr>
        <td width="1%" height="6">&nbsp;</td>
        <td height="6">&nbsp;</td>
        <td width="17%">&nbsp;</td>
      </tr>
</table>
<table width="100%" height="100" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top">
    <table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
      <tr>
        <td width="40%" align="right">
        <table width="60%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
           
            <tr>
              <td>&nbsp;</td>
              <td height="21">
              <table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table211" height="328">
                 
                  <tr>
                    <td height="164" colspan="2" align="middle">
                    <!-- 显示查找到的信息 -->  
 <h3 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">查找的信息如下：</h3>
	   <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label> 姓名: </label>
                <font   color="red">${list1.staffName }</font>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label> 手机号码：</label>
            	 <font   color="red">${list1.staffMobilePhone }</font>
              
            </div>
        </div>
        </div>
       <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label> 账户: </label>
            	<font   color="red">${list1.userNumber }</font>

            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label> 密码：</label>
            	<font   color="red">${list1.userPassowrd }</font>
               
            </div>
        </div>
      </div>
      <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	&nbsp;
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	   <a href="javascript:close( )">关闭</a>
            </div>
        </div>
      </div>
                    </td>
                  </tr>
              </table>
              </td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
  </tr>
</table>

 <!-- 包含版权信息 -->
    <jsp:include page="right.jsp"></jsp:include>

</body>
</html>