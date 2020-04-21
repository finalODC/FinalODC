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
					
					<div class="commentArea" style="width: 100%; height: 100%; text-align: left;">
						<table border="1">
							<tbody id="reply"></tbody>
						</table>

<!--                                 <div class="commentList"><span>user1 : ooo맛있어요 </span> &nbsp;&nbsp; <span
                                        class="report-comment" style="color:red;"></span></div>
                                <div class="commentList"><span>user2 : ooo는 별로 </span> &nbsp;&nbsp; <span
                                        class="report-comment" style="color:red;">삭제하기</span> </div>
                                <div class="commentList"><span>user3 : ooo?? </span> &nbsp;&nbsp; <span
                                        class="report-comment" style="color:red;">삭제하기</span> </div>
                                <div class="commentList"><span>user4 : ooo!!!!! </span> &nbsp;&nbsp; <span
                                        class="report-comment" style="color:red;">삭제하기</span> </div> -->
                                
                                <!-- 일반사용자 전용  -->
                                <!-- <span>아이디 : </span> &nbsp; <input type="text" style="width: 70%;" placeholder="댓글을 입력해주세요"> &nbsp; <input type="button" value="등록"> -->

                            </div>
                            <br>
                            <div >
                            <ul id="paging" class="pagination justify-content-center pagination-sm">
                            
                            </ul>
                            </div>
                            <script>
                            	$(document).ready(function(){
                            		pigo(1,1);
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
                            				var listCount 
                            				for(var i in list){
                            					var $tr = $("<tr>");
                            					var $td0 = $("<td>")
                            					var $td1= $("<td width='70px'>").text(list[i].rId);
                            					var $div = $("<div height='150px'>").html(list[i].rContent.split("|||"));
                            					
                            					var $td2= $("<td height='70px' width='300px'>").append($div);
                            					var $td3= $("<td>").text(list[i].rCreateDate);
                            					var $td4= $("<td>");
                            					var $td5= $("<td>");
                            					
                            					$tr.append($td1).append($td2).append($td3).append($td4).append($td5);
                            					if(list[i].level ==2){
                            						$tr.prepend($td0).css("background","lightgray");
                            						
                            						$td4.append("<button class='del'>삭제</button>");
                            						
                            					}else{
                            						/* $td1.after($td0); */
                            						$td2.attr("colspan","2")
                            						$td4.append("<button class='addRe'>댓글달기</button>");
                            						$td5.append("<button>신고하기</button>");
                            					}
                            					
                            					$td0.css("background","white");
                            					
                            					$("#reply").append($tr);
                            				}
                            				
                            				$(".addRe").click(function(){
                            					var ParentHrid = $(this).parents("td").siblings(":eq(0)").text();
                            				//$(".writeComment").css("display","none");
                            					$(".writeComment").remove();
                            					$tr = $("<tr class='writeComment'>");
                            					$td1= $("<td>").text("답글")
                            					$td2 =$("<td colspan='2'>").append("<textarea id='recommentT' cols='50', rows ='4'>");
                            					$button = $("<button onclick ='recomment("+hId+","+ParentHrid+");'>");
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
                            		for(var i = 0; i<arr.length; i++){
                            			arr[i] = arr[i]+"<br>"
                            		}
                            		
                            		$.ajax({
                            			url:"insertRe.ho",
                            			type:"post",
                            			data:{refHid:hId,
                            				parentHrid:parentHrId,
                            				rContent:arr.join("|||"),
                            				rWriter:"작성자"},
                            			success:function(data){
                            				if(data>0){
                            					pigo(hId,$(".cu").text());
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
	<script src="intranet/jquery.min.js"></script>
	<script src="intranet/bootstrap.bundle.min.js"></script>




</body>

</html>