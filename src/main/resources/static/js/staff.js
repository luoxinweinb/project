
function validate_stmf01(){
	if(stmf01.staffName.value==""||stmf01.staffName.value==null){
		alert("姓名不能为空!");
		stmf01.staffName.focus();
		return false;
	}
	if(stmf01.staffNativePlace.value==""||stmf01.staffNativePlace.value==null){
		alert("籍贯不能为空!");
		stmf01.staffNativePlace.focus();
		return false;
	}
	
	if(stmf01.staffIdcard.value==""||stmf01.staffIdcard.value==null){
		alert("身份证不能为空!");
		stmf01.staffIdcard.focus();
		return false;
	}
	if(stmf01.staffEamil.value==""||stmf01.staffEamil.value==null){
		alert("Email不能为空!");
		stmf01.staffEamil.focus();
		return false;
	}
	if(stmf01.staffMobilePhone.value==""||stmf01.staffMobilePhone.value==null){
		alert("电话不能为空!");
		stmf01.staffMobilePhone.focus();
		return false;
	}
	if(stmf01.userNumber.value==""||stmf01.userNumber.value==null){
		alert("账号不能为空!");
		stmf01.userNumber.focus();
		return false;
	}
	if(stmf01.userPassowrd.value==""||stmf01.userPassowrd.value==null){
		alert("密码不能为空!");
		stmf01.userPassowrd.focus();
		return false;
	}
	
	return true;
}
