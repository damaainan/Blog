  	window.onload=Regs;	
  	 function Regs(){	 
             var Pho=false;//检测手机号
			 var Pas=false;//检测密码
			 // var cv=false;//检测验证码
			 //邮箱获取焦点事件
            		$('input[name=name]').focus(function(){
            			$('#regTipPho').html('请输入正确的邮箱地址').css('display','block');		 


            		});
            	//丧失焦点事件
            		$('input[name=name]').blur(function(){
            				$('#regTipPho').html('');
	            			//获取邮箱的值
	                       	var v=$(this).val();
	                       	//进行正册验证
	                       	var reg=/^\w+@\w+\.(com|cn|com\.cn|net|org|edu)$/;

	 						var res=reg.test(v);

 						if(!res){
 							Pho=false;
 							 $('#regTipPho').html('输入的邮箱格式有误');
 						}else{
 							Pho=true;
 						}

            		});
            	//密码框获取焦点事件
            		$('input[name=password]').focus(function(){
					  $('#regTipPwd').html('请输入6~16位字母数字下划线').css('display','block');
					});
				//密码框失去焦点事件
				$('input[name=password]').blur(function(){
					$('#regTipPwd').html('');
					 	//验证密码
						var reg = /^\S{6,16}$/;
						//获取密码的值
						var v = $(this).val();
						 //进行正则验证
						var res = reg.test(v);	
						 
					 if(!res){
					 	Pas=false;
                         $('#regTipPwd').html('你输入的密码格式错误，请重新输入');
                        }else{
                         Pas=true;
                        }
					 
 					 
				});

				//验证码获取焦点事件
				  $('input[name=vcode]').focus(function(){
					 	 $('#regTipVer').html('请输入验证码').css('display','block');
						});			

				//验证码丧失焦点事件
				   $('input[name=vcode]').blur(function(){
						$('#regTipVer').html('');
					      var v = $(this).val();
					        
					    //发送ajax请求
					     $.get("{:U('Home/Common/checkVcode')}",{vcode:v},function(data){
					        if(data != 0){ //验证失败
					           alert('验证失败'); 
					                $('#regTipVer').html('验证码错误');
					                cv = false;
					         }else{
				            	alert('验证成功'); 
			                 
			                cv = true;
			         	   }
			      	  });
			  	  }); 	
			   
 				$("botton").click(function(){

 			      $('input[name=name]').blur();
				  $('input[name=password]').blur();
	               
	             
	             
				if(Pho && Pas){
					alert("登陆成功");
				 return true;
					}else{				
 					alert("登陆失败");return false;

 				}	
 			})

}



 
            