<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>  
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("noticeContent") != null ? request.getParameter("noticeContent") : "";
%>  
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>管理</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
<script  type="text/javascript" src="resources/laydate/laydate.js"></script>
<script type="text/javascript">

	function setText(obj){
		$("#messafeContent").val(obj.value);
		
	}

</script>

<!-- 编辑器 -->
<link rel="stylesheet" href="<%=basePath%>resources/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="<%=basePath%>resources/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="<%=basePath%>resources/kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="<%=basePath%>resources/kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="<%=basePath%>resources/kindeditor/plugins/code/prettify.js"></script>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="noticeContent"]', {
				cssPath : '<%=basePath%>resources/kindeditor/plugins/code/prettify.css',
				uploadJson : '<%=basePath%>view/marketing/noticeinfo/upload_json.jsp',
				fileManagerJson : '<%=basePath%>view/marketing/noticeinfo/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>通知管理</li>
        <li>通知管理</li>
        <li>添加通知信息</li>
    </ul>
</div>

<form name="example" action="noticeinfo/send.do" method="post"  class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	 
    	<div class="row">
                <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="noticeId"  readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

           <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">标题</label>
                <div class="col-sm-9">
                	<input type="text" name="noticeTitle" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">发布时间</label>
                <div class="col-sm-9">
                	<input type="text" name="noticeTime"  onclick="laydate()"   class="form-control input-sm"  placeholder="格式:yyyy-mm-dd"/>
                </div>
            </div>
        
        </div>


    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">通知内容信息</h5>
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">通知内容</label>
                <div class="col-sm-9">
                	<textarea id="noticeContent" rows="13"  cols="140" name="noticeContent"  >
                	<%=htmlspecialchars(htmlData)%>
                	</textarea>
                </div>
            </div>
        </div>
     </div>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"   value="添加"/>&nbsp;&nbsp;
            <input  type="button" onclick="javascript:location='noticeinfo/list.do'"  value="返回上一级"/>
 
        </div>
    </div>
</form>
 <br/>
</body>
</html>