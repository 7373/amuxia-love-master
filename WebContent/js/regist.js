/**
 * 注册页面
 */

	$(document).ready(function(){
		
			var compareCodeBtn_click_times = 1;
			var getCodeBtn_click_times = 1;
			p_code(2);
			/*匹配专属码*/
			$("#compareCodeBtn").click(function fn_1(){
				compareCodeBtn_click_times++;
				if(compareCodeBtn_click_times % 2 == 0){
					$("#compareCodeInput").css({
						"width": 200,
						"height": 30
					});
					$("#getCode").remove();
					$("#compareCodeBtn").after("<input type='text' name='specialCode' id='compareCode'>");
					$("#compareCodeGet").css({
						"width": 50,
						"height": 30
					});
					$("#getCode").css({"display":"none"});
				}else{
					$("#compareCodeInput").css({
						"width": 50,
						"height": 30
					});					
					$("#getCode").remove();
					$("#compareCode").remove();
				}
			});

			/*获取专属码*/
			$("#getCodeBtn").click(function fn_1(){
				getCodeBtn_click_times++;
				p_code(getCodeBtn_click_times);
			});
			
			function p_code(getCodeBtn_click_times){
				if(getCodeBtn_click_times % 2 == 0){
					$("#compareCodeGet").css({
						"width": 200,
						"height": 30
					});
					$("#getCodeBtn").after("<input type='text' name='specialCode' id='getCode' readonly='readonly'>");
					$("#compareCodeInput").css({
						"width": 50,
						"height": 30
					});
					$("#getCode").val(productCode());

					$("#compareCode").remove();
					
				}else{
					$("#compareCodeGet").css({
						"width": 50,
						"height": 30
					});
					$("#getCode").remove();
					$("#compareCode").remove();
				}
			}

			/*生成专属码*/
			function productCode(){
				var specialCodeArray = 
				[
					'1','2','3','4','5','6','7','8','9','0',
					'a','b','c','d','e','f','g','h','i','j',
					'k','l','m','n','o','p','q','r','s','t',
					'u','v','w','x','y','z',
					'A','B','C','D','E','F','G','H','I','J',
					'K','L','M','N','O','P','Q','R','S','T',
					'U','V','W','X','Y','Z'
				];
				var specialCode = "";
				for(var i = 0 ; i < 9 ; i++){
					specialCode = specialCode + specialCodeArray[[Math.floor(Math.random() * 62)]] ;
				}
				return specialCode;
			}
			
			/*表单验证
			
			var flag = 0;
			var flag_realname = 0;
			var flag_username = 0;
			var flag_passwrod = 0 ;
			var flag_pid = 0;
			var flag_specialCode = 0;
			var flag_phone = 0;
			var flag_JiNianRi = 0;
			//真实姓名验证
			$("#realname").blur(function(){
		         //上一次在其他字段未通过验证，或在当前字段验证通过的情况下，不执行后面的验证代码 
		         if(flag!=0 && flag!=1 ) return;
		         var length = $(this).val().trim().length;
		         var v = "";
		         if(length<=0 || length>12)
		         {
		        	 //非零表示未通过
		            flag = 1;
		            v = $(this).val().substr(0,12);              
		            $(this).css({'border':'3px solid red'});
		            $("#msg_0").text("用户名必须大于0个字符，小于12个字符").show();
		            $(this).val(v);
		            setTimeout(function(){
		               $("#realname").focus();
		            },0);
		            return;
		         }
		         else
		         {
		            var letters="*# $&\\|/?!@%`,.-()";
		            for(var i=0;i<length;i++)
		            {   
		               var ch=$(this).val().charAt(i);
		               if(letters.indexOf(ch)>-1)
		               {
		            	 //非零表示未通过
		                  flag = 1;
		                  $(this).css({'border':'3px solid red'});
		                  $("#msg_0").text("用户名不能含有*、#， $、&符号").show();
		                  var v = $(this).val().substr(0,length-1);
		                  $(this).val(v);
		                  setTimeout(function(){
		                     $("#realname").focus();
		                  },0);
		                  return;
		               }else
		               {
		                  $(this).css({'border':'1px solid #ccc'});
		                  $("#msg_0").hide();
		                //通过
		                  flag = 0;
		                  flag_realname = 1;
		               }
		            } 
		         }
		      }); 
			//昵称验证
			$("#username").blur(function(){
		         //上一次在其他字段未通过验证，或在当前字段验证通过的情况下，不执行后面的验证代码 
		         if(flag!=0 && flag!=2 ) return;
		         var length = $(this).val().trim().length;
		         var v = "";
		         if(length<=0 || length>12)
		         {
		        	 //非零表示未通过
		            flag = 2;
		            v = $(this).val().substr(0,12);              
		            $(this).css({'border':'3px solid red'});
		            $("#msg_1").text("用户名必须大于0个字符，小于12个字符").show();
		            $(this).val(v);
		            setTimeout(function(){
		               $("#username").focus();
		            },0);
		            return;
		         }
		         else
		         {
		            var letters="*# $&\\|/?!@%`,.-()";
		            for(var i=0;i<length;i++)
		            {   
		               var ch=$(this).val().charAt(i);
		               if(letters.indexOf(ch)>-1)
		               {
		            	 //非零表示未通过
		                  flag = 2;
		                  $(this).css({'border':'3px solid red'});
		                  $("#msg_1").text("用户名不能含有*、#， $、&符号").show();
		                  var v = $(this).val().substr(0,length-1);
		                  $(this).val(v);
		                  setTimeout(function(){
		                     $("#username").focus();
		                  },0);
		                  return;
		               }else
		               {
		                  $(this).css({'border':'1px solid #ccc'});
		                  $("#msg_1").hide();
		                //通过
		                  flag = 0;
		                  flag_username = 1;
		               }
		            } 
		         }
		         //判断该昵称是否已存在
		         
		      }); 
			//密码验证
			$("#password").blur(function(){
			      if(flag!=0 && flag!=3 ) return; 
			      var length = $(this).val().trim().length;
			      if(length<=6)
			      {
			         flag = 3;
			         $(this).css({'border':'3px solid red'});
			         $("#msg_2").text("密码强度太弱，请重新输入").show();
			         setTimeout(function(){
			            $("#password").focus();
			         },0);
			         return;
			      }else 
			      {
			         if(length > 20){
			            $(this).val($(this).val().substr(0,20));                 
			         }else{
			            var testString = "/*\\$#%^&!@`~，。/？)(‘；";
			            for(var i=0;i<length;i++)
			            {
			               var ch=$(this).val().charAt(i);
			               if(testString.indexOf(ch)>-1)
			               {
			                  flag = 3;
			                  $(this).css({'border':'3px solid red'});
			                  $("#msg_2").text("密码不能包含/*\\$#%^&!@`~，。/？‘；等字符，请重新输入").show();
			                  $(this).val($(this).val().substr(0,length-1));
			                  setTimeout(function(){
			                     $("#password").focus();
			                  },0);
			                  return;
			               }
			               else
			               {
			                  $(this).css({'border':'1px solid #ccc'});
			                  $("#msg_2").hide();
			                  flag = 0;
			                  flag_passwrod = 1;
			               }
			            }
			         }
			      }
			   });
			//身份证验证
			$("#pid").blur(function(){
				 if(flag!=0 && flag!=4) return;
				 var length = $(this).val().trim().length;
				 var reg = new RegExp("^[0-9]*$");
				 if( length != 18){
					 //个数不对
					 flag = 4;
					 $(this).css({'border':'3px solid red'});
	                  $("#msg_3").text("输入错误!").show();
	                  setTimeout(function(){
	                     $("#pid").focus();
	                  },0);
					 return;
				 }else{
					 for(var i = 0 ; i < length ; i++ ){
						 var ch=$(this).val().charAt(i);
						 if(!reg.test(ch) ){
							//存在非法字符 
							 flag = 4;
							 $(this).css({'border':'3px solid red'});
			                  $("#msg_3").text("输入错误!").show();
			                  $(this).val($(this).val().substr(0,length-1));
			                  setTimeout(function(){
			                     $("#pid").focus();
			                  },0);
							 return;
						 }else{
							 flag = 0;
							 $(this).css({'border':'1px solid #ccc'});
			                  $("#msg_3").hide();
							 flag_pid = 1;
							 return;
						 }
					 }
				 }
			});
			//专属码验证
			$("#specialCode").blur(function(){
				 if(flag!=0 && flag!=5) return; 
				 
			});
			//手机号码验证
			$("#tel").blur(function(){
			     if(flag!=0 && flag!=6) return; 
			     if($(this).val().trim().search(/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/)!= -1)
			     {
			         $(this).css({'border':'1px solid #ccc'});
			         $("#msg_5").text("").hide();
			         flag = 0;
			         flag_phone = 1;
			      }else
			      { 
			         flag = 6;
			         $(this).css({'border':'1px solid red'});
			         $("#msg_5").text("电话号码格式错误!").show();
			         setTimeout(function(){
			            $("#tel").focus();
			         },0);
			         return;  
			      }
			   
			   });
			
			//纪念日验证
	
			$("#JiNianRi").blur(function(){
				if($(this).val().trim() == null){
					flag_JiNianRi = 0;
				}
			});
			
			//注册
			$("#submitBut").click(function(){
				var code = $("input[name='specialCode']").val().trim();
				alert(code);
				if(code == null){
					//专属码为空
					 $("#msg_4").text("请输入专属码!").show();
					 return false;
			}else{
				if(flag_username ==0 && flag_realname ==0 && flag_password ==0 && flag_pid == 0 && flag_JiNianRi ==0){
					alert("请完善信息!");
					return false ; 
				}
			}
				
			});*/
		});