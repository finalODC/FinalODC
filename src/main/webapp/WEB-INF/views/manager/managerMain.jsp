<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="page-top">
	<div id="wrapper">
  
 	<jsp:include page="managerInclude.jsp"/>

    <!-- End of Sidebar -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">



				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- 컨텐츠 머리글 -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">마이 페이지</h1>
					</div>

 

					<!-- Content Row -->
					<div class="row">

						<!-- Content Column -->
						<div class="col-lg-6 mb-4">

							<!--업무 이동! -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary" >공지 &nbsp;<input type="button" value="+" id="gonotice" class="btn btn-primary btn-sm"></h6>
								</div>
								<div class="card-body">
									<table class="table table-hover" style="font-size: 12px;">
									<thead>
										<tr>
											<th>글번호</th>
											<th>제목</th>
											<th>날짜</th>
											<th>상태</th>
										</tr>
									</thead>
										<tbody id="tbody1">
										
										</tbody>
                                    </table>
                                    
                                    
								</div>
							</div>
							<script>
							$(document).ready(function(){
								getList();
								$("#gonotice").click(function(){
									location.href="gonoticelist.do";
								});
								
							});
							
							 function getList(){
						        	$.ajax({
						        		url:"getNoticeList.do",
						        		type:"post",
						        		data:{
						        			currentPage:1
						        		},success:function(data){
						         			$tbody=$('#tbody1');
						        			$tbody.html(""); 

						        			$.each(data,function(index,value){
						        				if(index <5){
						        					$tr=$('<tr>');
							        				$td1=$('<td>').text(value.nId);
							        				$td2=$('<td>').text(value.nTitle);
							        				$td3=$('<td>').text(value.nCreateDate);
							        				$td4=$('<td>').text(value.nStatus);
							        				
							        				$tr.append($td1);
							        				$tr.append($td2);
							        				$tr.append($td3);
							        				$tr.append($td4);
							        				$tbody.append($tr);
							        				
						        				}
						        				
						/*                         <th>번호</th>
						                        <th>제목</th>
						                        <th>작성날짜</th>
						                        <th>상태</th> */
						        			});
						        			
						        			console.log(data);
						        			
						        	          $("#tbody1 td").click(function(){  
						        	               if(!$(this).prop("cellIndex")==0){
						        	                var id = $(this).parent("tr").find("td").eq("0").text();
						        	                location.href="NoticeDetail.do?nId="+id;
						        	               } 
						        	            });
						        			
						        		},error:function(data){
						        			
						        		}
						        	});
						        }
							
							
							</script>


							<!-- Color System -->

						</div>
		
							<!-- Approach -->
							<div class="col-lg-6 mb-4">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="font-weight-bold text-primary" style="display:inline-block;" id="askcount" ></h6>
									<input type="button" value="+" class="btn btn-primary btn-sm" onclick="goqna();">
								</div>
								<div class="card-body">

									<table class="table table-hover"  style="font-size: 12px; text-align:center;"  >
									<thead>
										<tr>
											<th style="width:15%">문의번호</th>
											<th style="width:50%">제목</th>
											<th style="width:15%">작성자</th>
											<th style="width:20%">작성일자</th>
						
										</tr>
										</thead>
										<tbody id="askbody">
										
										</tbody>
									</table>

							<!-- 		<nav aria-label="Page navigation example">
										<ul class="pagination pagination-sm justify-content-center" id="askpaging">
										</ul>
									</nav> -->

								</div>
							</div>
							</div>
		
						
						
						<script>	
						  $(function(){
					        	pegination(1);
					        });
						  
						  function goqna(){
							  location.href="mAsk.ma?check=1"
						  }
					        
					        function pegination(currentPage){
					        	$.ajax({
					        		url:"mAskAjax.ma",
					        		type:"post",
					        		data:{currentPage:currentPage, check:1},
					        		success:function(data){
					        			var pi = data["pi"];
					        			var list = data["list"];
					        			var tb = $("#askbody");
					        			tb.empty();
					        			$("#askcount").text("답변대기 : " + pi.listCount)
					        			for(var i in list){
					        				var $tr = $("<tr>")
					        				var $td1 = $("<td>").text(list[i]["qId"]);
					        				var $td2 = $("<td>").text(list[i]["qTitle"]);
					        				var $td3 = $("<td>").text(list[i]["qWriter"]);
					        				var $td4 = $("<td>").text(list[i]["qDate"]);
					        			
					     
					        				 
					        				tb.append($tr.append($td1).append($td2).append($td3).append($td4));//
					        			}
					        			var cu;
					        			
					        			 $("#askbody tr").click(function(){
							                    var qId=$(this).find("td:eq(0)").text();
							                    console.log(qId);
											
							                    location.href="askread.ma?qId="+qId +"&currentPage=1&check=1";
							                  });
					        			 
 					        			
					        		},error:function(){
					        			alert("ajax에러")
					        		}
							               

					        		
					        		
					        	})
					        	
					        	
					        }
						
						</script>

						<br>
						
						<div class="col-lg-6 mb-4">

							<!-- Approach -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">신고 &nbsp;<input type="button" value="+" class="btn btn-primary btn-sm"></h6>
									
								</div>
								<div class="card-body">

									<table class="table table-hover" style="font-size: 12px;">
										<tr>
											<th>게시글</th>
											<th>분류</th>
											<th>상태</th>
											<th>제목</th>
											<th>작성일</th>
										</tr>
										<tr>
											<td>2020-001</td>
											<td>월드컵 관련</td>
											<td>검토</td>
											<td>월드컵 어케만드냐</td>
											<td>2020-01-10</td>
										</tr>
										<tr>
											<td>2020-004</td>
											<td>포인트 관련</td>
											<td>검토</td>
											<td>롤 스킨구매관련 예산신청</td>
											<td>2020-01-20</td>
										</tr>
										<tr>
											<td>2020-007</td>
											<td>기타사항</td>
											<td>완료</td>
											<td>담배피게 보내주세요</td>
											<td>2020-01-20</td>
										</tr>
									</table>

									<nav aria-label="Page navigation example">
										<ul class="pagination pagination-sm justify-content-center">
											<li class="page-item disabled"><a class="page-link"
												href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
													<span class="sr-only">Previous</span>
											</a></li>
											<li class="page-item disabled"><a class="page-link"
												href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true">&raquo;</span>
													<span class="sr-only">Next</span>
											</a></li>
										</ul>
									</nav>

								</div>
							</div>

						</div>
					</div>





				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->


			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

</body>
</html>