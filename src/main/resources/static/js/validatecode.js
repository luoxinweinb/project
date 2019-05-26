       var code; //用来保存生成的6位验证码
        function createCode() {
            code = "";
            var codeLength = 6; //验证码的长度
            var checkCode = document.getElementById("checkCode");//div元素对应的DOM对象
			//在JS数组中的元素类型可以不一致
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) 
            {
                var charNum = Math.floor(Math.random() * 62); //产生一个随机数作为数组元素的下标
                code += codeChars[charNum];
				//等价于: code=code+codeChars[charNum];
            }
            if (checkCode) 
            {
                checkCode.className = "code"; //将类选择器对应的样式应用到验证码对应的DIV上
                checkCode.innerHTML = code; //innerHTML 表示嵌入值到DOM元素中
            }
        }
		//验证码校验
        function validateCode() 
        {  //取出文本框中的内容
            var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0) 
            {
                alert("请输入验证码！");
            }
            else if (inputCode.toUpperCase() != code.toUpperCase()) 
            {
                alert("验证码输入有误！");
                createCode();  //此时从新产生一个验证码
            }
            else 
            {
                alert("验证码正确！");
            }        
        }   