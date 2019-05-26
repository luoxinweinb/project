 
function stuvalidate(){
	if(smf1.studentNo.value==""||smf1.studentNo.value==null){
		alert("学号不能为空!");
		smf1.studentNo.focus();
		return false;
	}
	
	if(smf1.studentName.value==""||smf1.studentName.value==null){
		alert("姓名不能为空!");
		smf1.studentName.focus();
		return false;
	}
	if(smf1.studentNative.value==""||smf1.studentNative.value==null){
		alert("籍贯不能为空!");
		smf1.studentNative.focus();
		return false;
	}
	
	if(smf1.studentTellphone.value==""||smf1.studentTellphone.value==null){
		alert("本人电话不能为空!");
		smf1.studentTellphone.focus();
		return false;
	}
	if(smf1.studentQq.value==""||smf1.studentQq.value==null){
		alert("QQ号不能为空!");
		smf1.studentQq.focus();
		return false;
	}
	
	if(smf1.studentIdcard.value==""||smf1.studentIdcard.value==null){
		alert("身份证号不能为空!");
		smf1.studentIdcard.focus();
		return false;
	}
	
	if(smf1.studentNumber.value==""||smf1.studentNumber.value==null){
		alert("账号不能为空!");
		smf1.studentNumber.focus();
		return false;
	}
	if(smf1.studentPassword.value==""||smf1.studentPassword.value==null){
		alert("密码不能为空!");
		smf1.studentPassword.focus();
		return false;
	}
	return true;
}
