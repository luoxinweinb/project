//后台系统登录表单验证
function validate(){
	var inputCode = document.getElementById("inputCode").value;
	if(myform.userNumber.value==""||myform.userNumber.value==null){
		alert("用户名不能为空!");
		myform.userNumber.focus();
		return false;
	}
	if(myform.userPassowrd.value==""||myform.userPassowrd.value==null){
		alert("密码不能为空!");
		myform.userPassowrd.focus();
		return false;
	}
	/*
	if(myform.inputCode.value==""||myform.inputCode.value==null){
		alert("验证码不能为空!");
		myform.inputCode.focus();
		return false;
	}
	*/
	if (inputCode.length <= 0) 
    {
        alert("验证码不能为空！");
        return false;
    }
    else if (inputCode.toUpperCase() != code.toUpperCase()) 
    {
        alert("验证码输入有误！");
        createCode();  //此时从新产生一个验证码
        return false;
    }
	return true;
}


//回车登录
$(document).keydown(function(e){
	if(e.keyCode == 13) {
		 validate();
	}
});

//学生登录
function studentlogin(){
	window.open("view/login_phone.jsp", "学生登录","height=600,width=800,top=100,left=100,toolbar=yes,menubar=yes,scrollbars=yes, resizable=no,location=yes, status=yes");
}



//学生登录表单验证
function validate1(){
	if(myform1.studentNumber.value==""||myform1.studentNumber.value==null){
		alert("用户名不能为空!");
		myform1.studentNumber.focus();
		return false;
	}
	if(myform1.studentPassword.value==""||myform1.studentPassword.value==null){
		alert("密码不能为空!");
		myform1.studentPassword.focus();
		return false;
	}
	return true;
}


//学生修改登录密码验证
function validate2(){
	if(myform2.studentPassword.value==""||myform2.studentPassword.value==null){
		alert("原密码不能为空!");
		myform2.studentPassword.focus();
		return false;
	}
	if(myform2.studentPassword1.value==""||myform2.studentPassword1.value==null){
		alert("新密码不能为空!");
		myform2.studentPassword1.focus();
		return false;
	}
	if((myform2.studentPassword2.value==""||myform2.studentPassword2.value==null)){
		alert("再次输入的新密码不能为空!");
		myform2.studentPassword2.focus();
		return false;
	}
	if(myform2.studentPassword1.value!=myform2.studentPassword2.value){
		alert("两次输入的新密码不一致!");
		myform2.studentPassword2.focus();
		return false;
	}
	return true;
}

//用户找回密码（教师或管理员)
function validate3(){
	if(mf1.userNumber.value==""||mf1.userNumber.value==null){
		alert("账号不能为空!");
		mf1.userNumber.focus();
		return false;
	}
	if(mf1.staffName.value==""||mf1.staffName.value==null){
		alert("姓名不能为空!");
		myform2.staffName.focus();
		return false;
	}
	if((mf1.staffMobilePhone.value==""||mf1.staffMobilePhone.value==null)){
		alert("手机号不能为空!");
		mf1.staffMobilePhone.focus();
		return false;
	}
	
	return true;
}