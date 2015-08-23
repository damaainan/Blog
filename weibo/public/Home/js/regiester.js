//手机号验证
 		window.onload=Reg; 
 		function  Reg(){
			    var Pho=false;//检测手机号
			    var Pass=false;//检测密码
					//注册账号获取交点事件
 					$('input[name=name]').focus(function(){
 						$('#regTipPho').html('请输入你的手机号').css('display','block');	
                      });  
					//丧失焦点事件
					$('input[name=name]').blur(function(){
						 $('#regTipPho').html('');
						//验证用户名
						var reg = /^1[3-8]\d{9}$/;
						//获取用户名的值
						var v = $(this).val();
						 //进行正则验证
						var res = reg.test(v);

					 //验证是否成功
					if(!res){
						$('#regTipPho').html('手机号码格式错误');
							 Pho=false;
						}else{
							 Pho=true;
							 //判断ajax请求
							 $.get("reg",{name:v},function(data){
 							 	if(data !=0 ){
								// alert(data);
								$('#regTipPho').html('该用户已存在,请重新输入');

 							 	}


							 }) 
						}
					});

				//密码框获取焦点事件
				$('input[name=password]').focus(function(){
					  $('#regTipPwd').html('请输入6~16位字母数字下划线').css('display','block');
				});
				//密码框失去焦点事件
				$('input[name=password]').blur(function(){
						$('#regTipPwd').html('');
					 	//验证用户名
						var reg = /^\S{6,16}$/;
						//获取用户名的值
						var v = $(this).val();
						 //进行正则验证
						var res = reg.test(v);	
					 if( !res){

					 	Pass=false;
                         $('#regTipPwd').html('你输入的密码格式错误，请重新输入');

					 }else{
					 	Pass=true;
					 }

				});
				//发送验证码按钮绑定单击事件
						$('#send').click(function(){
						//获取手机后
						var v = $('input[name=name]').val();
						//设置正则
						var reg = /^1[3-8]\d{9}$/;
						var res = reg.test(v);
						if(!res){
							 
							$('#regTipPwd').html('手机号格式错误');
							alert('请输入正确的手机号 接受验证码');
						}else{
							//倒计时操作
							var t = 10;
							var inte = setInterval(function(){
								//设置按钮不可点
								$("#send").attr('disabled',true);
								//设置文本
								var str = t+"秒后重新发送";
								$('#send').html(str);
								//时间递减
								t--;
								if(t==0){
									//清空定时器
									clearInterval(inte);
									$('#send').html('点击再次发送验证码');
									//移除disabled属性
									$('#send').removeAttr('disabled');
								}
							},1000);
							//发送ajax 将手机号发给服务器
							/*alert(v);return false;*/
							$.ajax({
								url:"sendMessage",
								data: {name:v},
								type:'get',
								async : true,
								success : function(data){
									if(data != 0){
										alert('发送失败');
									}else{
										alert('发送成功');
									}
								}

							})
						}

						return false;
					});
					$('button').click(function(){
						$('input[name=name]').blur();
						$('input[name=password]').blur();
                           
						if(Pho && Pass){
							return true;
						}

						  return false;
					})

				
}
 