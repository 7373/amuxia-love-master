/**
 * show or hide picture on home page
 */

$(function(){
			Initial();
			function Initial(){
				$(".1").parent().css({
					'box-shadow': "0 0 10px 5px green",
					'opacity': 0.7
				});
				$(".0").parent().css({
					'box-shadow': "0 0 10px 5px gray",
					'opacity': 1
				});
			}
			
			$(".pictureBox").click(function(){
				var id = $(this).attr("id");
				var isShow = $(this).children().text();	
				if(isShow == 1){
					$("#"+id).css({
						'box-shadow': "0 0 10px 5px gray",
						'opacity': 1
					});
					
					$(this).children().text("0");
					
					var type = "hide";
					send(id,type,isShow);
					
				}else{
					$("#"+id).css({
						'box-shadow': "0 0 10px 5px green",
						'opacity': 0.7
					});
					
					$(this).children().text("1");
					var type = "show";
					send(id,type,isShow);
				}
			});

			function send(id,type,isShow){
				var url = "/yuanJu/ShowOrHidePictureServlet";
				var time = new Date();				
				var argus = {'id':id,'time':time,'type':type,'isShow':isShow};
				$.getJSON(url,argus,function(data){});

			}
		});