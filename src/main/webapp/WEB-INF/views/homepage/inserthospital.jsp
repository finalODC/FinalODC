<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ohdogcat.odc.homepage.member.model.vo.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>메인페이지</title>
<meta charset="UTF-8">
<c:set var="path" value="${pageContext.servletContext.contextPath }"
	scope="application" />

<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">

<!-- Stylesheets -->
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
<link rel="stylesheet" href="${ path }/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ path }/resources/css/style.css" />
<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

<style>
#aaa {
	margin-left: 10%;
}

#map {
	
}
.par { border: 1px solid #000; }
</style>
</head>
<body>
  <jsp:include page="common/menubar.jsp"/>

	
	<div class="container" style="padding-top: 150px;">
		<div class="row">


			<div class="col-lg-12 mb-4">

				<!-- Approach -->
				
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">동물 병원</h6>
					</div>
					<div class="sea"
						style="width: 100%; height: 452px; padding: 41px 35px;">
						<div class="par" style="width: 50%; height: 370px; float: left;">

							<!-- <div name="image" style="width: 100%; height: 400px; padding: 1%">이미지</div> -->

						</div>
						<div class="ssa" style="width: 50%; height: 370px;  float: right;">
						
							<div
								style="width: 100%; height: 370px; border: none; resize: none; text-align: center;" readonly>병원소개</div>

						</div>

					</div>
					<div style="width: 100%; border-top: 1px solid #ebebeb"></div>
					<div class="two" style="width: 100%; padding: 41px 35px;">
						<div id="map" style="width: 100%; height: 300px; margin-bottom: 20px"></div>

					<textarea
						style="width: 90%; height: 200px; border: none; resize: none;"
						readonly>상세주소</textarea>
					</div>
				</div>
			</div>
			

			<div class="col-lg-12 mb-4">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">의료진</h6>
					</div>
					<div class="card-columns" id="cccbody" style="column-count: 1;">
						
						<div class="card" style="width: 200px; height: auto; display: inline-block; margin: 41px 35px;" id="copy">
							<div class="card-body text-center">
								<img class="card-body text-center docImage" name="docImage" id="docImage" style="width: 90%; height: 200px;">
								<br> <br> 
								<input type="text" style="text-align: center; width: 100px; border: none;" placeholder="의사이름">
								<hr>
								<textarea style="width: 150px; height: 200px; border: none; resize: none;" placeholder="간단한 소개"></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-12 mb-4">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
					</div>
					<table class="table table-bordered" align="center" width="100%" >
						<tbody id="reply"></tbody>
					
					</table>
					
					<div>
						<ul id="paging" class="pagination justify-content-center pagination-sm">
                            
                            </ul>
					</div>
					
					<table align="center" width="510" border="1" cellspacing="0">
						<tr>
							<td>
								<textarea rows="3" cols="55" id="hrContent" style="resize: none; border:0;"></textarea>
							</td>
							<td>
								<button onclick="insertComment()">등록하기</button>
							</td>
						</tr>
					</table>
					
					<table align="center" width="510" border="0" cellspacing="0" id="rtb">
						<thead>
							<tr>
								<td colspan="3"><b id="hrCount"></b></td>
							</tr>
							</thead>
						<tbody>

						</tbody>
					</table>
				</div>
			</div>

		</div>

		<!-- Footer Section -->

		<br>
		<hr>
		<br>
		<footer class="footer">
			<div class="container">
				<div class="copyright">
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					권한은 전적으로 나한테 있습니다.

				</div>
		</footer>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e673705a792756e975aa786d62b3807&libraries=services"></script>
				<script>
				
					var area="${hm.hAddress}";
					var name="${hm.hName}";

					var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };  
					
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch(area, function(result, status) {
					
					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {
					
					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					
					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
					
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+name+'</div>'
					        });
					        infowindow.open(map, marker);
					
					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);
					    } 
					});    
					</script>
					 <script>
					 
					 var mxp;
                            	$(document).ready(function(){
                            		pigo("${hm.hId}",1);
                            	})
                            	
                            	function pigo(hId, currentPage){
                            		$.ajax({
                            			url:"getcomment.ho",
                            			type:"post",
                            			data:{hId:hId, currentPage:currentPage},
                            			success:function(data){
                            				
                            				$("#reply").empty();
                            				var list = data["list"];
                            				var pi = data["pi"];
                            				console.log(list);
                            				console.log(pi)
                            				mxp =  Math.ceil((pi.listCount+1)/10)
                            				
                            				for(var i in list){
                            					var $tr = $("<tr width='100%'height='9%'>");
                            					var $td0 = $("<td> ")
                            					var $in = $("<input type='hidden'>").val(list[i].rId);
                            					var $td1= $("<td width='12%'>").text(list[i].rWriter).append($in);
                            					var $div = $("<div height='100%' width='100%'>").html(list[i].rContent);
                            					var $td2= $("<td  width='60%'>").append($div);
                            					var $td3= $("<td width='10%'>").text(list[i].rCreateDate);
                            					var $td4= $("<td width='30%'>");
                            			
                            					
                            					
                            					
                            					$tr.append($td1).append($td2).append($td3).append($td4)
                            					if(list[i].level ==2){
                            						
                            						$tr.css("background","lightgray");
                            						
                            						$td1.html('<svg class="bi bi-arrow-return-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">'+
                            								  '<path fill-rule="evenodd" d="M10.146 5.646a.5.5 0 01.708 0l3 3a.5.5 0 010 .708l-3 3a.5.5 0 01-.708-.708L12.793 9l-2.647-2.646a.5.5 0 010-.708z" clip-rule="evenodd"/>'
                            								+' <path fill-rule="evenodd" d="M3 2.5a.5.5 0 00-.5.5v4A2.5 2.5 0 005 9.5h8.5a.5.5 0 000-1H5A1.5 1.5 0 013.5 7V3a.5.5 0 00-.5-.5z" clip-rule="evenodd"/>' 
                            								  +'</svg>'
    
                            								 +"${hm.hName}")
                            					
                            		
                            						
                            					}else{
                            				
                            						if(list[i].rWriter == "${loginUser.userId}" && list[i].rStatus == 'Y'){
                            							$td4.append("<button class='update btn btn-primary'>수정</button> &nbsp;&nbsp;<button class='del btn btn-danger'>삭제</button>");
                            						}
                            						
                            					}
                            					
                            					if(list[i].rStatus =='N'){
                        							$div.text("삭제된 댓글입니다.")
                        						}
                            					
           
                            					
                            					$td0.css("background","white");
                            					
                            					$("#reply").append($tr);
                            				}
                            				
                            		
                            				
                            				$(".update").click(function(){
                            					var rid = $(this).parents("td").siblings(":eq(0)").children("input").val();
         										var text = $(this).parents("td").siblings(":eq(1)").children("div").html();
         										$(".update").siblings(".del").remove();
         										$(".update").after("&nbsp;&nbsp;<button class='del btn btn-danger'>삭제</button>");
         										$(this).siblings(".del").remove();
         										
         										text=text.replace(/<br>/g, '\n');
                            					
                            					$(".writeComment").remove();
                            					$tr = $("<tr class='writeComment'>");
                            					$td1= $("<td>").html('<svg class="bi bi-chevron-compact-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">'+
                      								  '<path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 01.671.223l3 6a.5.5 0 010 .448l-3 6a.5.5 0 11-.894-.448L9.44 8 6.553 2.224a.5.5 0 01.223-.671z" clip-rule="evenodd"/>'
                  									  +'</svg>' +"수정")
                  									  
                            					$td2 =$("<td colspan='2'>").html("<textarea id='recommentT' cols='100', rows ='4'>"+text+"</textarea>");
                            					
                            					console.log($("#recommentT"));
                            					$button = $("<button class='btn btn-primary'onclick ='update("+rid+")'>").text("수정하기");
                            					$td3 =$("<td>").append($button);
                            			
                            					$(this).parents("tr").after($tr.append($td1).append($td2).append($td3))
                            					
                            				});
                            				
                            				$(".del").click(function(){
                            					
                            					var rId= $(this).parents("tr").find("input[type=hidden]").val();
                            					if(!confirm("댓글을 삭제 하시겠습니까?")){
                            						return false;
                            					}
                            					console.log($(".cu").text());
                            				 	$.ajax({
                            						url:"delhreply.ho",
                            						type:"get",
                            						data:{rId:rId},
                            						success:function(result){
                            							if(result>0){
                            								pigo(hId,$(".cu").text());
                            							}
                            						},error:function(){
                            							alert("에러");
                            						}
                            					}); 
                            					
                            					
                            				})
                            				$("#paging").empty();
                            				var sp= pi.startPage;
                                			var ep= pi.endPage;
                                			var mp= pi.maxPage;
                                			var cu = pi.currentPage
                                			var onepli = $('<li class="page-item ">');
                                			var onepbu = $('<button class="page-link" onclick=pigo('+hId+","+1+')>').text('<<');
                                			
                                			var prevli = $('<li class="page-item ">');
                                			var prevbu = $('<button class="page-link" onclick=pigo('+hId+","+(cu-1)+')>').text('<');
                                			
                                			if(cu==1){
                        						onepbu.attr("disabled",true);
                        						prevbu.attr("disabled",true);
                                			}
                                			
                                			$("#paging").append(onepli.append(onepbu)).append(prevli.append(prevbu));
                                			

                                			 for(var i = sp; i<=ep; i++){
                                				var $li = $('<li class="page-item ">');
                                				var $button = $('<button class="page-link" onclick=pigo('+hId+","+i+')>').text(i);
                                				if(cu == i){
                                					$button.attr("disabled",true).css("color","tomato").addClass("cu");
                                				} 
                                				$("#paging").append($li.append($button));
                                			}
                                			 
                                			 
                                			 
                                			var nextli = $('<li class="page-item ">');
                                  			var nextbu = $('<button class="page-link" onclick=pigo('+hId+","+(cu+1)+')>').text('>');
                                			 
                                			var maxli = $('<li class="page-item ">');
                                 			var maxbu = $('<button class="page-link" onclick=pigo('+hId+","+mp+')>').text('>>');

                                 			if(cu==mp){
                                 				nextbu.attr("disabled",true);
                                 				maxbu.attr("disabled",true);
                                 			}
                                 			
                                 			$("#paging").append(nextli.append(nextbu)).append(maxli.append(maxbu));
                            				//mxp= mp;
                            			},error:function(){
                            				alert("pigo에러")
                            			}
                            		})
                            		
                            		
                            	}
                            	
                            	function insertComment(){
                            		console.log($("#hrContent").val());
                            		if($("#hrContent").val()==""){
                            			alert("댓글내용이 비어있습니다.")
                            			return false;
                            		}
                            		var arr = $("#hrContent").val().split("\n");
                            		$.ajax({
                            			url:"insertRe.ho",
                            			type:"post",
                            			data:{refHid:"${hm.hId}",
                            				rContent:arr.join("<br>"),
                            				rWriter:"${loginUser.userId}"},
                            			success:function(data){
                            				console.log("여기"+data)
                            				
                            					$("#hrContent").val("");
                            					console.log(mxp)
                            					pigo("${hm.hId}",mxp);
                            					if(data>0){
                            				}
                            			},error:function(request,status,error){
                            		        alert("에러");
                            		       }
                        			
                        		});
                            	}
                            	
                            	function update(rId){
                            		
                            		if($("#recommentT").val()==""){
                            			alert("댓글내용이 비어있습니다.")
                            			return false;
                            		}
                            		var arr = $("#recommentT").val().split("\n");
                            
                            		
                            		$.ajax({
                            			url:"updateRe.ho",
                            			type:"post",
                            			data:{rId:rId,
                            				rContent:arr.join("<br>")
                            				},
                            			success:function(data){
                            				if(data>0){
                            					pigo("${hm.hId}",$(".cu").text());
                            				}
                            			}
                            		})
                            		
                        			
                        		}
                            
                            </script>
		
			
</body>
</html>
