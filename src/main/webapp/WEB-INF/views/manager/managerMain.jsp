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
									<h6 class="m-0 font-weight-bold text-primary" >공지 &nbsp;<input type="button" value="+" class="btn btn-primary btn-sm"></h6>
								</div>
								<div class="card-body">
									<table class="table table-hover" style="font-size: 12px;">
										<tr>
											<th>글번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>날짜</th>
										</tr>
										<tr>
											<td name="num">4</td>
											<td name="title">월드컵제목</td>
											<td name="writer">기업1</td>
											<td name="date">2020-01-20</td>
										</tr>
										<tr>
											<td name="num">3</td>
											<td name="title">월드컵제목</td>
											<td name="writer">기업1</td>
											<td name="date">2020-01-20</td>
										</tr>
										<tr>
											<td name="num">2</td>
											<td name="title">월드컵제목</td>
											<td name="writer">기업1</td>
											<td name="date">2020-01-19</td>
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


							<!-- Color System -->

						</div>

						<div class="col-lg-6 mb-4">

							<!-- Approach -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary" >문의 &nbsp;<input type="button" value="+" class="btn btn-primary btn-sm"></h6>
								</div>
								<div class="card-body">

									<table class="table table-hover" style="font-size: 12px;">
										<tr>
											<th>문의번호</th>
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