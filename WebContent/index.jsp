<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="net.jvsun.model.*"%>
<%@page import="net.jvsun.dao.*"%>
<%@page import="net.jvsun.tools.*"%>
<%@page import="net.jvsun.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>终身伴侣</title>
  <meta name="viewport" content="width=device-width">
  <script src="js/jquery-3.0.0.min.js"></script>
  <script src="js/jquery.slides.js"></script>
  <link rel="stylesheet" type="text/css" href="css/index_2.css">


</head>
<body>

  <!--  导航 begin   -->
  <div class="banner">
    <div class="leftBanner ban">
      <ul>
        <li><a href="index.jsp" class="index">首页</a></li>
        <li><a href="/yuanJu/OurWordsServlet">恋爱日记</a></li>
        <li><a href="/yuanJu/GetPublicWordsServlet">恩爱社区</a></li>
      </ul>
    </div>

    <div class="centerLogo ban"><a href="/yuanJu/TreeInitialSelvet"></a></div>

    <div class="rightBanner ban">
      <ul>
        <li><a href="about.jsp">恋爱协议</a></li>
        <li><a href="/yuanJu/ShowOrNotServlet">恋爱相册</a></li>
        <%
        if(session.getAttribute("username") == null){%>
            <li><a href="login.jsp">登录</a></li>
        <%}else{%>
            <li><a href="/yuanJu/logout.do">注销</a></li>
        <%}%>
        <!-- <li><a href="/yuanJu/logout.do">注销</a></li> -->
      </ul>
    </div>
  </div>
<!--    导航 end   -->

<!--   名言警句 begin  -->
  <div class="warning">
    <span class="warningWords">
      有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。原来，一个人可以难过到没有情绪，
      没有言语，是你，让我知道，原来，难过的极限不是痛彻心扉，而是无言以对。
    </span>
  </div>
    
<!--       名言警句  end  -->

<!--   轮播图 begin  -->
  <div class="container">
    <div id="slides" style="width:100%;max-height:500px;min-height:150px  ;">
      <img src="images/example-slide-1.jpg" style=" width:80%; height:80%; display:inline-block;">
      <img src="images/example-slide-2.jpg" style=" width:80%; height:80%; display:inline-block;">
      <img src="images/example-slide-3.jpg" style=" width:80%; height:80%; display:inline-block;">
      <img src="images/example-slide-4.jpg" style=" width:80%; height:80%; display:inline-block;">
    </div>
  </div>
<!--  轮播图 end -->

<!-- 文章推荐 begin -->
<!-- 
<div class="article">
    <div class="recomment">
      <span class="recommentWords">为您精心推荐</span><hr>
    </div>
    <div class="cnt"></div>
    <div class="contentWrapper">
      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。原来，一个人可以难过到没有情绪，没有言语，是你，让我知道，原来，难过的极限不是痛彻心扉，而是无言以对。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。原来，一个人可以难过到没有情绪，没有言语，是你，让我知道，原来，难过的极限不是痛彻心扉，而是无言以对。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。原来，一个人可以难过到没有情绪，没有言语，是你，让我知道，原来，难过的极限不是痛彻心扉，而是无言以对。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>

      <span class="goodArticle"> <p> <a href=""> 有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。</a></p></span>
    </div> -->
    
<!--     <div class="rightMessages">
   
        <div class="music"  style="background-image:url(images/偏偏喜欢你.jpg);background-size:100% 100%;">
        <audio loop="loop" src="mp3/偏偏喜欢你.mp3"  id="msc_1">
			您的浏览器不支持 audio 标签
		</audio>
        </div>
		
		<div class="music"  style="background-image:url(images/求佛.jpg);background-size:100% 100%;">
			<audio loop="loop" src="mp3/誓言 - 求佛.mp3"  id="msc_2">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
		
		<div class="music"  style="background-image:url(images/一剪梅.jpg);background-size:100% 100%;">
			<audio loop="loop" src="mp3/一剪梅.mp3"  id="msc_3">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
		
		<div class="music"  style="background-image:url('images/咱们结婚吧.jpg');background-size:100% 100%;">
			<audio loop="loop" src="mp3/咱们结婚吧.mp3"  id="msc_4">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
        
    
        <div class="music"  style="background-image:url(images/偏偏喜欢你.jpg);background-size:100% 100%;">
        <audio loop="loop" src="mp3/偏偏喜欢你.mp3"  id="msc_1">
			您的浏览器不支持 audio 标签
		</audio>
        </div>
		
		<div class="music"  style="background-image:url(images/求佛.jpg);background-size:100% 100%;">
			<audio loop="loop" src="mp3/誓言 - 求佛.mp3"  id="msc_2">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
		
		<div class="music"  style="background-image:url(images/一剪梅.jpg);background-size:100% 100%;">
			<audio loop="loop" src="mp3/一剪梅.mp3"  id="msc_3">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
		
		<div class="music"  style="background-image:url('images/咱们结婚吧.jpg');background-size:100% 100%;">
			<audio loop="loop" src="mp3/咱们结婚吧.mp3"  id="msc_4">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
    
        <div class="music"  style="background-image:url(images/偏偏喜欢你.jpg);background-size:100% 100%;">
        <audio loop="loop" src="mp3/偏偏喜欢你.mp3"  id="msc_1">
			您的浏览器不支持 audio 标签
		</audio>
        </div>
		
		<div class="music"  style="background-image:url(images/求佛.jpg);background-size:100% 100%;">
			<audio loop="loop" src="mp3/誓言 - 求佛.mp3"  id="msc_2">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
		
		<div class="music"  style="background-image:url(images/一剪梅.jpg);background-size:100% 100%;">
			<audio loop="loop" src="mp3/一剪梅.mp3"  id="msc_3">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
		
		<div class="music"  style="background-image:url('images/咱们结婚吧.jpg');background-size:100% 100%;">
			<audio loop="loop" src="mp3/咱们结婚吧.mp3"  id="msc_4">
				您的浏览器不支持 audio 标签。
			</audio>
		</div>
		
      </div>  -->
      
      
      
      
 <!--  </div>  -->
<!-- 文章推荐 end   -->
  


<!--       视频展示  begin  -->

  <div class="videoShow">

    <div class="VideoTitle">
      <span class="VideoTitle_words">深情告白</span>
    </div>

    <div class="videoShow_warning">
      <span class="videoShow_warningWords">
        有时候，情到深处，无处可消愁，我就会变得面无表情，变得没有言语。原来，一个人可以难过到没有情绪，
        没有言语，是你，让我知道，原来，难过的极限不是痛彻心扉，而是无言以对。
      </span>
    </div>

    <div class="videoPlay">
      <div class="videoP videoP_1">
        <video controls="controls" width="100%" height="100%"> 
          <source src="cartoonLove.mp4" type="video/mp4">   
          <source src="cartoonLove.ogg" type="video/ogg">    
          <source src="cartoonLove.webm" type="video/webm"> 
          您的浏览器还不支持 Video Tag
        </video>
      </div>
      <div class="videoP videoP_2">
        <video src="" controls="controls" width="100%" height="100%">   
          您的浏览器还不支持 Video Tag
        </video>    
      </div>
      <div class="videoP videoP_3">
        <video src="" controls="controls" width="100%" height="100%">        
          您的浏览器还不支持 Video Tag
        </video>
        
      </div>
    </div>
    <div class="video_Bg"></div>
  </div>

<!--       视频展示  end  -->

<!--        功能介绍 begin   -->

  <div class="functionIntroduction">
    <span>功能介绍</span>
    <div class="function">

      <div class="function_part func_1">
        <span class="func_pic func_pic_1"></span>
        <p class="func_word func_word_1">恋爱日记</p>
      </div>

      <div class="function_part func_2">
        <span class="func_pic func_pic_2"></span>
        <p class="func_word func_word_2">爱情树</p>
      </div>

      <div class="function_part func_3">
        <span class="func_pic func_pic_3"></span>
        <p class="func_word func_word_3">恋爱相册</p>
      </div>

      <div class="function_part func_4">
        <span class="func_pic func_pic_4"></span>
        <p class="func_word func_word_4">爱情协议</p>
      </div>

      <div class="function_part func_5">
        <span class="func_pic func_pic_5"></span>
        <p class="func_word func_word_5">APP</p>
      </div>

      <div class="function_part func_6">
        <span class="func_pic func_pic_6"></span>
        <p class="func_word func_word_6">秀恩爱</p>
      </div>
    </div>
    <span>常见问题</span>
    <div class="problem">
      <span class="prob prob_1">
        <p class="probTitle probT_1">我们的宗旨</p>
        <p class="probWord probW_1">
        从20016年起，我们为超过20万对情侣提供了服务，新版两个人重装上线，希望可以成为你们爱情的忠实见证者。
        </p>
      </span>

      <span class="prob prob_2">
        <p class="probTitle probT_2">关于终身伴侣</p>
        <p class="probWord probW_2">
          <!--  -->
          “终身伴侣”是一个定位于情侣的综合性网站，它的分类模块化为情侣们提供了一个记录日常生活中的点点滴滴的平台。
         它与一般网站的最大区别就是一生只能注册一次，象征着真爱的永恒。
         除此之外，该网站中的“浇树”功能，见证着情侣们的成长印记。力图打造一个强大暖心的网站，共同见证情侣们的成长瞬间！
        终身伴侣是最好的给情侣共同使用的一个云端网络服务，包括网站以及移动设备的支持。在这里可以记录你们的甜蜜时刻，回味那些美好的回忆。
        </p>
      </span>

      <span class="prob prob_3">
        <p class="probTitle probT_3">数据在你们这里安全吗？</p>
        <p class="probWord probW_3">
        	以专属码的方式为两个人的所有信息保密，有私密的云端数据存储。在这里，只要您不选择公开，可以看到您记录点滴的永远只有您的伴侣！
        </p>
      </span>


    <!--   <span class="prob prob_1">
        <p class="probTitle probT_1"></p>
        <p class="probWord probW_1"></p>
      </span> -->
    </div>

  </div>


<!--        功能介绍 end   -->

<!--        应用数据展示 begin  -->

  <div class="dataShow">
    <div class="dataTitle">
      <span>-我要LOVE你一辈子-</span>
    </div>
    <div class="dataWords">
      <span>
        &nbsp;&nbsp;&nbsp;一起就拥有了一生相守的幸福；有人说，缘分是前世修来的，是五百次回眸的执着才换来今生的擦肩而过，是千年不变的守候才有了今生的默默相守；有人说，幸福是有形状的，你把它放在心里，它就是心的形状，你把它放在外面，它就虚无缥缈,今生的相伴，让我们天荒地老。
      </span>
    </div>

    <div class="dataDecimal">
      <span class="dataRegist dataPure">
        <p>220</p>
        <hr>
        <p>注册量</p>
      </span>

      <span class="dataRegist dataPure">
        <p>110</p>
        <hr>
        <p>情侣对</p>
      </span>

      <span class="dataRegist dataPure">
        <p>88</p>
        <hr>
        <p>每日活动用户</p>
      </span>
    </div>
  </div>

<!--        应用数据展示 end  -->

<!--       注册引导  begin  -->
  <div class="registLead">
    <span class="leadWords">陪伴是最长情的告白!</span>
    <span class="registBtn"><a href="regist.jsp">立即注册</a></span>
  </div>

<!--       注册引导  end  -->

<!--       页脚部 begin -->
  <div class="footer">
    <span>
      Copyright ? 2048 <a href="index.jsp">终身伴侣</a> | from <a href="index.jsp" target="_parent"></a> | 终身伴侣，您永远的港湾
    </span>
  </div>
<!--       页脚部 end -->



  <script>
    $(function() {
    	var bodyWidth = $("body").width() * 0.8 ;
    	console.log(bodyWidth);
      $('#slides').slidesjs({
        width: bodyWidth,
        height: 528,
        play: {
          active: true,
          auto: true,
          interval: 2000,
          swap: true
        }
      });

     moveWord(); 
    
      function moveWord(){
        var contentWrapper = $(".contentWrapper");
        contentWrapper.children().filter("span").each(function() {
          var span = $(this),
            container = $("<div>");
          span.next().appendTo(container);
          span.prependTo(container);
          container.appendTo(contentWrapper);
        });
        contentWrapper.css("overflow", "hidden");
        function animator(currentItem) {
          var distance = currentItem.height();
          duration = (distance + parseInt(currentItem.css("marginTop"))) / 0.015;
          currentItem.animate({ marginTop: -distance }, duration, "linear", function() {
          currentItem.appendTo(currentItem.parent()).css("marginTop", 0);
          animator(currentItem.parent().children(":first"));
          }); 
        };
        animator(contentWrapper.children(":first"));
        contentWrapper.mouseenter(function() {
          contentWrapper.children().stop();
        });
        contentWrapper.mouseleave(function() {
          animator(contentWrapper.children(":first"));
        });
      }
    
    
    
      musicControl();
	  function musicControl(){
		  
		    /* var music = document.getElementById("video");  */ 
		    $(".music").click(function(){
		    	
		    	var music =  this;														// 获得音乐对象
		    	/* alert(music.attr("id")); */
		    	var id = $(this).children().attr("id");
		    	var audio = document.getElementById(id);
		    	/* alert(audio.attr("src")); */
		    	/* audio.play();  */
		    	var newUri = "url(images/音乐动态效果.gif)";
		    	var oldSrc = ($(audio).attr("src").split(".",1)[0]).split("/",2)[1];
		    	console.log(oldSrc);
		    	
		    	var oldUri = "url("+"images/"+oldSrc+".jpg"+")";
		    	console.log("newUri:"+newUri + "oldSrc:" + oldSrc +"oldUri:" + oldUri);
		    	
		    	 if(audio.paused){    		 //判断是否处于播放状态
		    		p();
		    		console.log("newUri"+newUri);
		    		$(music).css({"background-image":newUri});
		    		
		    	}else{
		    		s();  		
		    		console.log("oldUri"+oldUri);
		    		$(music).css({"background-image":oldUri});
		    	} 
		    	
		    	
			    function p(){
			    	audio.play();						 // 开始播放
			    	if(audio.playState==8 ){//判断播放是否完毕   
			    		$(music).css({"background-image":oldUri});
			    		             
			    	}
			    }                                         

			    function s(){audio.pause();}                                       // 暂停播放
			    function add(){audio.volume += 0.1;}                         // 增大音量
			    function sub(){audio.volume -= 0.1;}                          // 减小音量
			    
		    
		    });

		  
	  }
	  
	  
    /* script end ............... */
  });

</script>
</body>
</html>