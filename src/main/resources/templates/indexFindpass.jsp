<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
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
        <table width="35%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" height="38" align="center"><span class="login_txt_bt"><font color="#0060BF"><h2>&nbsp;</h2></font></span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td height="21">
              <table cellSpacing="0" cellPadding="0" width="90%" border="0" id="table211" height="328">
                  <tr>
                  <td>&nbsp;</td>
                  </tr>
                  <tr>
                  <td>&nbsp;</td>
                  </tr>
                  <tr>
                  <td align="center"><h3>找回密码</h3>
                    <font color="red" style="display:${findRes!=null?'block':'none' } ">
					<i class="icon-coffee red"></i> ${findRes }
			        </font>
			       </td>
                  </tr>
                  <tr>
                    <td height="164" colspan="2" align="middle">
                    <form name="mf1" action="<%=basePath%>system/list1.do" method="post" onsubmit="return validate3()">
                        <table cellSpacing="0" cellPadding="0" width="100%" border="0" height="143" id="table212">
                          <tr>
                            <td width="40%" height="38" class="top_hui_text"  align="right"><span class="login_txt">请输入账号：&nbsp;&nbsp; </span></td>
                            <td width="60%" height="38"  class="top_hui_text" ><input name="userNumber" id="userNumber" type="text" class="editbox4" value="" size="20">  </td>
                          </tr>
                          <tr>
                            <td  height="35" class="top_hui_text" align="right"><span class="login_txt" > 请输入用户姓名：&nbsp;&nbsp; </span></td>
                            <td  height="35"  class="top_hui_text"><input class="editbox4" type="text" size="20" id="staffName" name="staffName" >
                               </td>
                          
                          </tr>    
                          <tr>
                            <td  height="35" class="top_hui_text" align="right"><span class="login_txt" > 请输入手机号码：&nbsp;&nbsp; </span></td>
                            <td  height="35"  class="top_hui_text"><input class="editbox4" type="text" size="20" id="staffMobilePhone" name="staffMobilePhone" >
                             </td>
                          </tr>        
                          <tr>
                            <td height="35" >&nbsp;</td>
                            <td height="35" >
                            <input name="Submit" type="submit"   id="Submit" value="确认"/>
                            &nbsp;&nbsp;
                            <input name="reset" type="reset"     id="cs" value="取消"/>
                            &nbsp;&nbsp;
                            <input name="reset" type="button"  onclick="javascript:location='view/index.html'"    id="cs" value="返回"/>
                            </td>
                          </tr>
                        </table>
                        <br>
                    </form></td>
                  </tr>
                 
              </table></td>
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