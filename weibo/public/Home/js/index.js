 window.onload=Init;
  function Init(){
   //发布新微博特效

         var inite=null;
         $("#publish").focus(function(){
         	$("#font5").css("color","gray");

         	inite=setInterval(function(){
         	var len=$("#publish").val().length;
         	var remain=140-len;
         	if(remain>0){
         	    $("#font5").html('还可输入<font style="font-weight:bold">'+remain+'</font>字');
            }
            else{
            	$("#font5").text('已达到字数限制，试试长微博？');
            	var allStr=$("#publish").val().slice(0,140);
            	$("#publish").innerHTML=allStr;
            }
         },100);
         });
        
         $("#publish").focusout(function(){
         	$("#font5").css("color","#EB7350");
         	clearInterval(inite);
         	$("#font5").text('内容  热门微博');
         	if($("#publish").val().length>140){
         		var allStr=$("#publish").val().slice(0,140);
            	$("#publish").val(allStr);
         	}
         });



          // 更多选项下拉列表 和  具体操作模块的调用 
             
        $("#elliChoice").click(function(e){
         $("#moreTopic").css("display","block");
         //阻止事件冒泡，否则事件会冒泡到下面的文档点击事件
         e.stopPropagation();
        });

         $(document).click(function(){
            $("#moreTopic").css("display","none");
         });

           //      显示高级搜索部分   js代码 
         
             $("#moreSearchBtn p b").click(function(){
               $(".contentBlock:has(#moreSearch)").css("display","block");
               $("#moreSearchBtn").parent().parent().css("display","none");
             });
             $("#moreSearch h2 span").click(function(){
               $(".contentBlock:has(#moreSearch)").css("display","none");
               $("#moreSearchBtn").parent().parent().css("display","block");
             })

//设置分组
        
          $("#haveAtten").mouseover(function(){
              $("#simset").css("display","block");
          });
          $("#simset").mouseover(function(){
              $("#simset").css("display","block");
          });
         $("#haveAtten").mouseout(function(){
              $("#simset").css("display","none");
          });

          $("#simset").mouseout(function(){
              $("#simset").css("display","none");
          });

          //分组模块
         $("#againSetGroup").click(function(){
              $("#groupAtten").css("display","block");
         });
         
        
          //创建新分组
         $("#addGroupBtn").click(function(){
          $(this).prev().append($("#groupAll li").last().clone(true));
         $("#groupAll").children("ul").children("li").last().children("p").replaceWith("<input type='text' id='newadd'  value=''>");
        
             $("#newadd").val("创建新分组");
             $("#newadd").attr('autofocus','autofocus');
         });
         
         var addgrp=setInterval(function(){
          var newEle=$("#newadd").val();
          if(newEle){
             $("#newadd").blur(function(){
                var str=$("#newadd").val();
                if(str=='创建新分组' || str==''){
                  $(this).parent().remove();
                }else{
                  $(this).replaceWith("<p class='shorttimeG'>"+str+"</p>");
                }
             });
          }    
      },500);
       //关闭分组模块
        $("#groupBlock h2 span").click(function(){
            $(".shorttimeG").parent().remove();
            $("#groupAtten").css("display","none");
       });
        $("#groupbtn2").click(function(){
            $(".shorttimeG").parent().remove();
            //$("#groupAll").children("ul").children("li")
            $("#groupAtten").css("display","none");
       });

        //ajax操作数据库
        $("#groupAll").children('ul').children('li').children('input').select(function(){
          var str=$(this).next("p").text();
          $(this).attr('value',str);
        })
        $("#groupbtn1").click(function(){
          var uid=$("#ajaxgroupID").text();//本人id
          var gid=$("#ajaxgroupUID").text();//被分组的人的id
          var cnum=$("#groupAll").children("ul").children("li").length;
          var grouparr=[];
          var k=0;
          for(var i=0;i<cnum;i++){
            if($("#groupAll").children("ul").children("li").eq(i).children('input').attr("checked")=="checked"){
              var str=$("#groupAll").children("ul").children("li").eq(i).children("p").text();  
              grouparr[k]=str;
              k++;
            };
          };
          
        });
          



//  js设置值   需要有数据  模版中有隐藏的数据
           /********************悬浮简介框特效****************************************/

 //视频播放器特效
    
    $(".videocon").click(function(){
        $(this).parent().after($(".player").last().clone(true));

        var srcV=$(this).parent().children("video").attr("src");
        //判断是否在转发内容当中
        if($(this).parent().parent().width()<515){
            $(".player").width(500);
            $(".player").css("margin-left",0);
        }

        $(this).parent().parent().children(".player").css("display","block");
        $(this).parent().parent().children(".player").children(".playerVideo").attr("src",srcV);
        $(this).parent().css("display","none");
    });
    $(".videoPutup").click(function(){
        $(this).parent().prev().css("display","block");
        $(this).parent().remove();
    });
 //音频播放器特效
    
    $(".musiccon").click(function(){
        $(this).parent().after($(".playerm").last().clone(true));

        var srcV=$(this).parent().children("audio").attr("src");
        
        $(this).parent().parent().children(".playerm").css("display","block");
        $(this).parent().parent().children(".playerm").children(".playerMusic").attr("src",srcV);
        $(this).parent().css("display","none");
    });
    $(".musicPutup").click(function(){
        $(this).parent().prev().css("display","block");
        $(this).parent().remove();
    });
              
// 单张图片 点击放大查看    js特效       
 //单张图片 点击放大查看    js特效 

    $(".conImage").click(function(){
        var countImg=$(this).parent().children("img").length;
        
        var numImg=$(this).parent().children("img").index(this);
        var srcS=Array();//定义一个数组 src
        var imgIdS=Array();//定义一个数组  id
        $(this).parent().children("img").each(function(i){
           srcS[i]=this.src;
           imgIdS[i]=$(this).attr("alt");
        });
        //判断是否在转发内容当中
        if($(this).parent().parent().width()<510){
            $(".zoomImg").width(503);
            $(".zoomImg").css("margin-left",0);
        }
        $(this).parent().after($(".zoomImg").last().clone(true));

        //判断图片数量
        if(countImg>1){
            $(this).parent().next(".zoomImg").after($(".showClickImg").last().clone(true));
            $(this).parent().parent().children(".showClickImg").css("display","block");
            //循环出所有图片
            //先 前7 张  判断图片数量是否小于7
            // var maxImg=0;
            // if(countImg>=7){
            //   maxImg=7;
            // }else{
            //   maxImg=countImg;
            // }
            for(var i=0;i<countImg;i++){
              $(this).parent().parent().children(".showClickImg").children(".showPre").after(document.createElement("img"));
            }
            for(var i=0;i<countImg;i++){
              $(this).parent().parent().children(".showClickImg").children("img").eq(i).attr("src",srcS[i]);
              $(this).parent().parent().children(".showClickImg").children("img").eq(i).attr("alt",imgIdS[i]);
            }
        }
         //多于七张
        if(countImg>6){
           for(var i=7;i<countImg;i++){
             $(this).parent().parent().children(".showClickImg").children("img").eq(i).css("display","none");
           }
        }
        $(this).parent().next(".zoomImg").css("display","block");
        $(this).parent().next(".zoomImg").children(".clickImg").attr("src",srcS[numImg]);
        $(this).parent().next(".zoomImg").children(".clickImg").attr("alt",imgIdS[numImg]);
         
        //设置小图片样式   不对   暂时无效
        if($(this).parent().parent().children(".showClickImg").length){ 
           $(this).parent().parent().children(".showClickImg").children("img").eq(numImg).addClass("showClickImgSel"); 
        }   
        $(".showClickImgSel").attr({border:"solid 2px red"}); 
        $(this).parent().css("display","none");
    });


    // 点击向前按钮
    $(".showPre").click(function(){
        var all=$(this).parent().children("img").length;
        
        var imgIndex=$(this).parent().children("img").filter(".showClickImgSel").index()-1;
        var currImg=0;
        var srcS=Array();//定义一个数组
        var imgIdS=Array();//定义一个数组  id
        $(this).parent().children("img").each(function(i){
           srcS[i]=this.src;
           imgIdS[i]=$(this).attr("alt");
        });
        console.log(all);
        console.log(imgIndex);
        if(imgIndex==0){
            alert("已经最前一张了");
        }
        else{
            currImg=imgIndex-1;
            $(this).parent().parent().children(".zoomImg").children("img").attr("src",srcS[currImg]);
            $(this).parent().parent().children(".zoomImg").children("img").attr("alt",imgIdS[currImg]);
            $(this).parent().children("img").filter(".showClickImgSel").removeClass("showClickImgSel");
            $(this).parent().children("img").eq(currImg).addClass("showClickImgSel");
            console.log(currImg);
        }
    });

    // 点击向后按钮
    $(".showNex").click(function(){
        var all=$(this).parent().children("img").length;
        
        var imgIndex=$(this).parent().children("img").filter(".showClickImgSel").index()-1;
        var currImg=0;
        var srcS=Array();//定义一个数组
        var imgIdS=Array();//定义一个数组  id
        $(this).parent().children("img").each(function(i){
           srcS[i]=this.src;
           imgIdS[i]=$(this).attr("alt");
        });
        console.log(all);
        console.log(imgIndex);
        if(imgIndex==6 || imgIndex==all-1){
            alert("已经最后一张了");
        }
        else{
            currImg=imgIndex+1;
            $(this).parent().parent().children(".zoomImg").children("img").attr("src",srcS[currImg]);
            $(this).parent().parent().children(".zoomImg").children("img").attr("alt",imgIdS[currImg]);
            $(this).parent().children("img").filter(".showClickImgSel").removeClass("showClickImgSel");
            $(this).parent().children("img").eq(currImg).addClass("showClickImgSel");
            console.log(currImg);
        }
    });


  // 收起
    $(".putup").click(function(){
        //显示原来的图片
        $(this).parent().parent().prev().css("display","block");
        //如果有展示小图片的内容  去除
        $(this).parent().parent().next().remove(".showClickImg");
        //去除 大图展示
        $(this).parent().parent().remove();
        

    });

        //  换模版   js  特效 

   //整个函数结尾 
 }                




    