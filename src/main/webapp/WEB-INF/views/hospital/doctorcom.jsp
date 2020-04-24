<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ohdogcat.odc.homepage.member.model.vo.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0061)https://blackrockdigital.github.io/startbootstrap-sb-admin-2/ -->
<html lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="path" value="${pageContext.servletContext.contextPath }"
	scope="application" />


<link href="${ path }/resources/css/manager/sb-admin-2.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<title>내 병원 관리</title>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - 로고 -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="../intranet/intranet_main.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-home"></i>
				</div>
				<div class="sidebar-brand-text mx-3"></div>
			</a>

			<!-- Divider -->

			<div class="sidebar-heading">메뉴</div>

			<hr class="sidebar-divider">



			<!-- Nav Item - 품의 관리 -->
			<li class="nav-item"><c:url var="chart" value="chart.ho" /> <a
				class="nav-link" href="${chart }"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>진료기록 조회 / 처방</span></a></li>

			<li class="nav-item"><a class="nav-link" href="info.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>내 병원 관리</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="insertdoc.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>의사 관리</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="comdoc.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>댓글 관리</span></a></li>

			<li class="nav-item"><a class="nav-link" href="hosP.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>계정정보 변경</span></a></li>
			<li class="nav-item"><a class="nav-link" href="hosinfo.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>병원상세</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">


		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div class="container-fluid">
			<!-- 컨텐츠 머리글 -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
			</div>
			<!-- Content Row -->

			<!-- <form action="updatehosinfo.ho" method="post" enctype="multipart/form-data"> -->
				<div class="row">
					

					<div class="col-lg-12 mb-4">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
					</div>
					
					<div class="commentArea" width="100%" height="100%" cellspacing="0">
						<table border="1" class="table table-bordered" width="100%" cellspacing="0">
							<tbody id="reply" ></tbody>
						</table>
                                
                                <!-- 일반사용자 전용  -->
                                <!-- <span>아이디 : </span> &nbsp; <input type="text" style="width: 70%;" placeholder="댓글을 입력해주세요"> &nbsp; <input type="button" value="등록"> -->

                            </div>
                            <br>
                            <div >
                            <ul id="paging" class="pagination justify-content-center pagination-sm">
                            
                            </ul>
                            </div>
                            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e673705a792756e975aa786d62b3807&libraries=services">
						
						
						</script>
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e673705a792756e975aa786d62b3807">
					
					
					</script>
						
					<script >
					
					var mapContainer = document.getElementById('map'), 
				    mapOption = {
				        center: new kakao.maps.LatLng(33.450701, 126.570667), 
				        level: 3 
				    };  

				var map = new kakao.maps.Map(mapContainer, mapOption); 

				// 주소-좌표 변환 객체
				 var geocoder= new kakao.maps.services.Geocoder();
				var addr = "${hospital.hAddress}".split("//");
				var hname ="${hospital.hName}"
				console.log(addr);
				geocoder.addressSearch(addr[1], function(result, status) {

				
				     if (status === kakao.maps.services.Status.OK) {

				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				      
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });

				     
				        var infowindow = new kakao.maps.InfoWindow({
				            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+hname+'</div>'
				        });
				        infowindow.open(map, marker);

				        map.setCenter(coords);
				    } 
				});    
					
						
					
					</script>
                            <script>
                            	$(document).ready(function(){
                            		pigo("${loginUser.hId}",1);
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
                            				var listCount 
                            				for(var i in list){
                            					var $tr = $("<tr>");
                            					var $td0 = $("<td width='3%' height='9%'> ")
                            					var $td1= $("<td width='3%'>").text(list[i].rId);
                            					var $div = $("<div height='100%' width='100%'>").html(list[i].rContent);
                            					var $td2= $("<td  width='67%'>").append($div);
                            					var $td3= $("<td width='8%'>").text(list[i].rWriter);
                            					var $td4= $("<td width='8%'>").text(list[i].rCreateDate);
                            					var $td5= $("<td width='10%'>");
                            					
                            					
                            					
                            					$tr.append($td1).append($td2).append($td3).append($td4).append($td5)//.append($td6);
                            					if(list[i].level ==2){
                            						
                            						$tr.prepend($td0.html('<svg class="bi bi-arrow-return-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">'+
                            								  '<path fill-rule="evenodd" d="M10.146 5.646a.5.5 0 01.708 0l3 3a.5.5 0 010 .708l-3 3a.5.5 0 01-.708-.708L12.793 9l-2.647-2.646a.5.5 0 010-.708z" clip-rule="evenodd"/>'
                            								+' <path fill-rule="evenodd" d="M3 2.5a.5.5 0 00-.5.5v4A2.5 2.5 0 005 9.5h8.5a.5.5 0 000-1H5A1.5 1.5 0 013.5 7V3a.5.5 0 00-.5-.5z" clip-rule="evenodd"/>' 
                            								  +'</svg>'

                              			        )).css("background","lightgray");
                            					
                            						$td5.append("<button class='del btn btn-danger'>삭제</button><br> <button class='update btn btn-default'>수정</button>");
                            						/* if(list[i].rStatus =='N'){
                            							$tr.empty();
                            						} */
                            						
                            					}else{
                            						/* $td1.after($td0); */
                            						$td2.attr("colspan","2")
                            						$td5.append("<button class='addRe btn btn-primary'>댓글달기</button>");
                            						//$td6.append("<button>신고하기</button>");
                            						
                            					}
                            					
                            					if(list[i].rStatus =='N'){
                        							$div.text("삭제된 댓글입니다.")
                        						}
                            					
           
                            					
                            					$td0.css("background","white");
                            					
                            					$("#reply").append($tr);
                            				}
                            				
                            				$(".addRe").click(function(){
                            					var ParentHrid = $(this).parents("td").siblings(":eq(0)").text();
                            				//$(".writeComment").css("display","none");
         									
                            					$(".writeComment").remove();
                            					$tr = $("<tr class='writeComment'>");
                            					$td1= $("<td>").html('<svg class="bi bi-chevron-compact-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">'+
                      								  '<path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 01.671.223l3 6a.5.5 0 010 .448l-3 6a.5.5 0 11-.894-.448L9.44 8 6.553 2.224a.5.5 0 01.223-.671z" clip-rule="evenodd"/>'
                  									  +'</svg>')
                            					$td2 =$("<td colspan='4'>").append("<textarea id='recommentT' cols='120', rows ='4'>");
                            					$button = $("<button class='btn btn-primary'onclick ='recomment("+hId+","+ParentHrid+");'>").text("입력");
                            					$td3 =$("<td>").append($button);
                            					//$td2 =$("<td>").append()
                            					
                            					//console.log(hId);
                            					$(this).parents("tr").after($tr.append($td1).append($td2).append($td3))
                            					
                            				});
                            				
                            				$(".update").click(function(){
                            					var rid = $(this).parents("td").siblings(":eq(1)").text();
                            				//$(".writeComment").css("display","none");
         										var text = $(this).parents("td").siblings(":eq(2)").children("div").html();
         										text=text.replace(/<br>/g, '\n');
                            					console.log(text)
                            					$(".writeComment").remove();
                            					$tr = $("<tr class='writeComment'>");
                            					$td1= $("<td>").html('<svg class="bi bi-chevron-compact-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">'+
                      								  '<path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 01.671.223l3 6a.5.5 0 010 .448l-3 6a.5.5 0 11-.894-.448L9.44 8 6.553 2.224a.5.5 0 01.223-.671z" clip-rule="evenodd"/>'
                  									  +'</svg>')
                            					$td2 =$("<td colspan='4'>").html("<textarea id='recommentT' cols='120', rows ='4'>"+text+"</textarea>");
                            					
                            					console.log($("#recommentT"));
                            					$button = $("<button class='btn btn-primary'onclick ='update("+rid+")'>").text("수정");
                            					$td3 =$("<td>").append($button);
                            					//$td2 =$("<td>").append()
                            					
                            					//console.log(hId);
                            					$(this).parents("tr").after($tr.append($td1).append($td2).append($td3))
                            					
                            				});
                            				
                            				$(".del").click(function(){
                            					
                            					var rId= $(this).parents("td").siblings(":eq(1)").text();
                            					if(!confirm(rId+"번 댓글을 삭제 하시겠습니까?")){
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
                            				
                            			},error:function(){
                            				alert("에러")
                            			}
                            		})
                            		
                            		
                            	}
                            	
                            	function recomment(hId,parentHrId){
                            		console.log($("#recommentT").val());
                            		if($("#recommentT").val()==""){
                            			alert("댓글내용이 비어있습니다.")
                            			return false;
                            		}
                            		var arr = $("#recommentT").val().split("\n");
                            
                            		
                            		$.ajax({
                            			url:"insertRe.ho",
                            			type:"post",
                            			data:{refHid:hId,
                            				parentHrid:parentHrId,
                            				rContent:arr.join("<br>"),
                            				rWriter:"${loginUser.hName}"},
                            			success:function(data){
                            				if(data>0){
                            					pigo(hId,$(".cu").text());
                            				}
                            			}
                            		})
                            		
                        			
                        		}
                            	
                            	function update(rId){
                            		console.log($("#recommentT").val());
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
                            					pigo("${loginUser.hId}",$(".cu").text());
                            				}
                            			}
                            		})
                            		
                        			
                        		}
                            
                            </script>
                            
					
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

			
		</div>



	</div>

	

	


	

	<!-- Footer -->
	<footer class="sticky-footer bg-white">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
				<span>Copyright © Your Website 2019</span>
			</div>
		</div>
	</footer>
	<!-- End of Footer -->



	<!-- Bootstrap core JavaScript-->




</body>

</html>