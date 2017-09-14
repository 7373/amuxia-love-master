 $(function()
 {
	 	TreeInitial();
	 	CloudInitial();
	 	function TreeInitial(){
	 		var value_water = $("#value_water_index").text();
	 		var value_sunshine = $("#value_sunshine_index").text();
	 		var  pro_width = $("#progress").width();
	 		value_water = pro_width *value_water / 100 ;
	 		value_sunshine = pro_width *value_sunshine / 100 ;
	 		$("#value_sunshine").css({"width":value_sunshine});
	 		$("#value_water").css({"width":value_water});
	 	}

	 	function treeHealth_sun(){
	 		var water_value = parseInt($("#value_water_index").text());
	 		var sun_value = parseInt($("#value_sunshine_index").text());
	 		if(sun_value -  water_value >= 30){
	 			//水 与 阳光 之间相差大于 30
	 			return false;
	 		}
	 		else{
	 			if(!sun_enough()){
	 				alert(" I need her love ");
	 				return false;
	 			}
	 		}
	 		return true;
	 	}
	 	function sun_enough(){
	 		var sun_value = parseInt($("#value_sunshine_index").text());
	 		if(sun_value == 100){
	 			//阳光值 已为100
	 			return false;
	 		}
	 		return true;
	 	}
	 	
	 	function treeHealth_water(){
	 		var water_value = parseInt($("#value_water_index").text());
	 		var sun_value = parseInt($("#value_sunshine_index").text());
	 		if(water_value - sun_value  >= 30){
	 			//水 与 阳光 之间相差大于 30
	 			return false;
	 		}else{
	 			if(!water_enough())
	 			{
	 				alert("I need his love");
	 				return false;
	 			}
	 		}
	 		return true;
	 	}
	 	
	 	function water_enough(){
	 		var water_value = parseInt($("#value_water_index").text());
	 		if(water_value == 100){
	 			//水 值 为100
	 			return false;
	 		}
	 		return true;
	 	}
	 	
              /*  阳 光*/
	 	var $sun = $("#sun");
	 	 /*var checkTimes = 0;*/
	 	$sun.click(function(){
        	if(treeHealth_sun())
        	{
        		//tree is healthy
        		 sunMove();
        		 listern();
        		 
        	}else{
        		//tree is unhealthy
	 			alert("I need more water !");        		
        	}
        	function listern()
        	{
        		     document.addEventListener('webkitAnimationEnd',function(){
        		    		 var sun_effective = document.getElementById("sun_effective");
        		    		 sun_effective.classList.remove("sun_effective_add");
        		    		 increaseSunValue();
        		    		 setTimeout(function(){
        		    			 deliverSunValueToServer(); 
        		    		 },3000);
        		    		    	               
        		     });
        	}
	 		function sunMove(){
	 			$sun.transition({
	 				bottom: '55%',
	 				left: '47%'
	 			}, 1500, 'ease-out', function() {});

	 			var sun_effective = document.getElementById("sun_effective");
	 			setTimeout(function(){
	 				sun_effective.classList.add("sun_effective_add");
	 			},1500);
	 		} 

            function increaseSunValue(){
            	 var  value_sunshine = parseInt($("#value_sunshine_index").text()) + 1;
            	 if(value_sunshine >100){
            		 value_sunshine--;
            	 }
                 var value_sunshine_index = value_sunshine + "%" ;
                 var  pro_width = $("#progress").width() ;
                 value_sunshine = pro_width * value_sunshine / 100;
                 $("#value_sunshine").css({"width":value_sunshine});
                 $("#value_sunshine_index").text(value_sunshine_index);             
                 $sun.css({'left':'80%','bottom':'76%'});
            }
            function deliverSunValueToServer(){
            	            	//数据传输到后端              
            		var url = "/yuanJu/TreeUpdateServlet"
        	 		var time = new Date();
        	 		var username = $("#username").text().trim();
        	 		var sun_value = parseInt($("#value_sunshine_index").text());
/*        	 		alert("sun_value" + sun_value);*/
        	 		var sun = "sun";
        	 		var water_value = parseInt($("#value_water_index").text());
/*        	 		alert("water_value" + water_value);*/
        	 		var argus = {'time':time,'username':username,'sun_value':sun_value,'water_value':water_value,'type':sun};
        	 		$.getJSON(url,argus,function(data){
        			});
            }
        });

         /*   水壶&雨水*/
        var $water = $("#water"); 
        $water.click(function(){
        	 if(treeHealth_water()){
        		 // tree is healthy
        		 waterMove();
        		 listernWater();
        	 }else{
        		 // tree is unhealthy
        		 alert("tree is unhealthy I need more sunshine ");
        	 }
        	 
        	function waterMove(){
        		$water.transition({
        			bottom: '40%',
        			left: '43%'
        		}, 1500, 'ease-out', function() {}); 
        		var water =  document.getElementById("water");
        		setTimeout(function(){
        			water.classList.add("water_effective_add");
        		},1500);
        	}
            
            function listernWater(){
            	//检测动画执行的次数是否为 1 ，
            	var checkTimes = 0;
            	document.addEventListener('webkitAnimationEnd',function(){
            		checkTimes++;
            		if(checkTimes == 1)
            		{
                        	$water.css({
                                '-moz-transform': 'rotateZ(70deg)',
                                '-webkit-transform': 'rotateZ(70deg)',
                                '-ms-transform': 'rotateZ(70deg)',
                                'transform': 'rotateZ(70deg)'
                            });
            				var water_effective =document.getElementById("water_effective");
            				$("#water_effective").css({'display' : "inline"});
            				snowflake();
            				var water =  document.getElementById("water");
            				water.classList.remove("water_effective_add");
            				increaWaterValue();
            				waterBack();
            				setTimeout(function(){
            					deliverWaterValueToServer();
            				},3000);
            				
            		}
            	});
            }
                      
            function increaWaterValue(){
            	var  value_water = parseInt($("#value_water_index").text()) + 1;
                var  value_water_index = value_water + "%" ;
                var  pro_width = $("#progress").width() ;
                value_water = pro_width * value_water / 100;
                $("#value_water").css({"width":value_water});
                $("#value_water_index").text(value_water_index);            
            }
            function waterBack(){
                setTimeout(function()
                {
/*                	alert("waterback");*/
                	$water.css({
                        'left':'9%',
                        'bottom':'15%',
                        '-moz-transform': 'rotateZ(0deg)',
                        '-webkit-transform': 'rotateZ(0deg)',
                        '-ms-transform': 'rotateZ(0deg)',
                        'transform': 'rotateZ(0deg)'
                    });
                },5000);
            }
            function deliverWaterValueToServer()
            {
            		//数据传输到后端              
            		var url = "/yuanJu/TreeUpdateServlet"
            		var time = new Date();
            		var username = $("#username").text().trim();
            		var water_value = parseInt($("#value_water_index").text());
/*            		alert("water_value" + water_value);*/
            		var water= "water";
            		var sun_value = parseInt($("#value_sunshine_index").text());
/*            		alert("sun_value" + sun_value );*/
            		var argus = {'time':time,'username':username,'sun_value':sun_value,'water_value':water_value,'type':water};
            		$.getJSON(url,argus,function(data){});
            }
        });

         var container = $('#water_effective');
         visualWidth = container.width();
         visualHeight = container.height();
         var snowflakeURl = [
         'images/rain.png',
         'images/rain.png',
         'images/rain.png',
         'images/rain.png',
         'images/rain.png',
         'images/rain.png'
         ]

        ///////
        //飘雪花 //
        /////
        function snowflake() {

            // 雪花容器
            var $flakeContainer = $('#water_effective');
            // 随机六张图
            function getImagesName() {
                // 随机获取图片地址
                return snowflakeURl[[Math.floor(Math.random() * 6)]];
            }
            // 创建一个雪花元素
            function createSnowBox() {
                var url = getImagesName();
                
                return $('<div class="snowbox" />').css({
                    'width': 8,
                    'height': 16,
                    'position': 'absolute',
                    'backgroundSize': 'cover',
                    'zIndex': 100000,
                    'top': '10px',
                    'backgroundImage': 'url(' + url + ')'
                }).addClass('snowRoll');
            }
            // 开始飘花
            var rainTimes = 0;
            var rainStart = setInterval(function() {
                rainTimes++;
                if(rainTimes > 50){
                    clearInterval(rainStart);
                    return false;
                }
                // 运动的轨迹
                var startPositionLeft = Math.random() * visualWidth - 4,
                startOpacity    = 1,
                endPositionTop  = visualHeight - 41,
                endPositionLeft = startPositionLeft + 8,
                duration        = visualHeight * 10 + Math.random() * 500;
                console.log("visualHeight" +visualHeight + ";endPositionTop" + endPositionTop);
                // 随机透明度，不小于0.5
                var randomStart = Math.random();
                randomStart = randomStart < 0.5 ? startOpacity : randomStart;

                // 创建一个雪花
                var $flake = createSnowBox();

                // 设计起点位置
                $flake.css({
                    left: startPositionLeft,
                    opacity : randomStart
                });
                // 加入到容器
                $flakeContainer.append($flake);
                // 开始执行动画
                $flake.transition({
                    top: endPositionTop,
                    left: endPositionLeft,
                    opacity: 0.7
                }, duration, 'ease-out', function() {
                    $(this).remove() //结束后删除
                });
            }, 100);
        }
         
        /* 云*/
         function CloudInitial(){
        	 var duration = 100;
       	 	var $cloud_0 = $(".cloud_0");
        	 var DestLeft = 0;
        	 
        	 var bodyWidth = ($("body").width() + 30);
    		 var stepEachTimes = bodyWidth / 5000 ; 

       var cloudStart;
       	var cloudMove = function(){
	 		/*console.log(document.getElementById("cloud_0").offsetLeft);*/
	 		DestLeft = DestLeft + stepEachTimes;
	 		if(document.getElementById("cloud_0").offsetLeft > bodyWidth){
	 			/*$cloud_0.css({'left':0});*/
	 			clearInterval(cloudStart);
	 			/*alert("stop");*/
	 			setTimeout(function(){
	 				/*console.log("again");*/
	 				DestLeft = -400;
	 				cloudStart = setInterval(cloudMove,duration);
	 			},300);
	 		}
	 		$cloud_0.transition({
                left: DestLeft   
            }, 10, 'ease');	
	 	}
        cloudStart = setInterval(cloudMove,duration);
     }
       
});



 