<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<a class="sidebar-brand d-flex align-items-center justify-content-center"
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

			<li class="nav-item"><a class="nav-link" href="hosP.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>계정정보 변경</span></a></li>

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

			<form action="hinsert.ho" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-lg-11 mb-4">

						<!-- Approach -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">내 병원</h6>
							</div>
							<div class="card-columns">

								<div class="card" style="width: 100%">
									<div class="card-body text-center">

										<img class="card-body text-center" name="hImage" id="preview"
											style="width: 100%; height: 250px;"> 
											<label class="btn btn-primary ">사진등록 
												<input type="file"class="img-fluid" alt="" id="getfile" style="display: none;">
											</label> 
											<label class="btn btn-primary">사진변경 
												<input type="file" class="img-fluid" style="display: none" id="changfile">
											</label>

									</div>
								</div>

								<div class="card" style="width: 500px text-align=center;">
									<div class="card-body text-center">

										<textarea
											style="width: 90%; height: 200px; border: none; resize: none;" placeholder="병원소개"></textarea>

										<br> <br>

										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#myModal">글 수정</button>
									</div>
								</div>

								<div class="card" style="width: 500px text-align=center;">
									<div class="card-body text-center">

										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#myModal">주소 변경</button>
									</div>
								</div>


							</div>
						</div>

					</div>

					<div class="col-lg-11 mb-4">
						<div class="card shadow mb-4" >
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">의료진</h6>
							</div>
							<div class="card-columns" id="cccbody" style="column-count: 1;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div class="card t1"
									style="width: 200px; height: auto; display: inline-block;"
									id="copy">
									<div class="card-body text-center">
										<img class="card-body text-center docImage"  name="docImage" id="docImage"
											style="width: 90%; height: 200px;">
											<label class="btn btn-primary "> 사진등록 <input
												type="file" class="img-fluid docGetfile" id="docGetfile" alt="" style="display: none;">
											</label>
										
										<br> <br> <input type="text"
											style="text-align: center; width: 100px; border: none;"
											placeholder="의사이름">
										<hr>
										<textarea
											style="width: 150px; height: 200px; border: none; resize: none;"placeholder="간단한 소개"></textarea>
									</div>
								</div>
							</div>
							<!-- <div style="text-align: center;">
                            <input type="button" value="의사 등록" class="btn btn-primary">
                        </div> -->
							<div style="text-align: center;">
								<input id="ss" type='button' class='btn btn-primary copy'
									value='추가' style="width: 50px;">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#myModal">등록</button>
								<input id="ss" type='button' class='btn btn-primary delete'
									value='삭제' style="width: 50px;"> <br> <br>
							</div>

						</div>
					</div>

					<div class="col-lg-11 mb-4">
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
							</div>
							<div class="card-body">

								<div class="commentArea"
									style="width: 100%; height: 100%; text-align: left;">

									<div class="commentList">
										<span>user1 : ooo맛있어요 </span> &nbsp;&nbsp; <span
											class="report-comment" style="color: red;">삭제하기</span>
									</div>
									<div class="commentList">
										<span>user2 : ooo는 별로 </span> &nbsp;&nbsp; <span
											class="report-comment" style="color: red;">삭제하기</span>
									</div>
									<div class="commentList">
										<span>user3 : ooo?? </span> &nbsp;&nbsp; <span
											class="report-comment" style="color: red;">삭제하기</span>
									</div>
									<div class="commentList">
										<span>user4 : ooo!!!!! </span> &nbsp;&nbsp; <span
											class="report-comment" style="color: red;">삭제하기</span>
									</div>
									<br>


									<!-- 일반사용자 전용  -->
									<!-- <span>아이디 : </span> &nbsp; <input type="text" style="width: 70%;" placeholder="댓글을 입력해주세요"> &nbsp; <input type="button" value="등록"> -->

								</div>

							</div>


						</div>
					</div>

				</div>

			</form>
		</div>



	</div>

	<script>
		

		
		// 사진 등록
		var file = document.querySelector('#getfile');

		file.onchange = function() {
			var fileList = file.files;

			var reader = new FileReader();
			reader.readAsDataURL(fileList[0]);

			reader.onload = function() {

				document.querySelector('#preview').src = reader.result;

				var tempImage = new Image();
				tempImage.src = reader.result;

			};
		};
		</script>
		
		<script>
		$(function() {
			$('.copy').click(function() {
				/* var a = $("#copy").clone(true) */
				$div = "<div class='card-columns' id='cccbody' style='column-count: 1; display:inline-block'>"
				+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
				+"<div class='card t1' style='width: 200px; height: auto; display: inline-block;'id='copy'>"
				+"<div class='card-body text-center'>"
				+"<img class='card-body text-center docImage' name='docImage' id='docImage' style='width: 90%; height: 200px;'>"						
				+"<label class='btn btn-primary'>" 
				+"사진등록"
				+"<input type='file' class='img-fluid docGetfile'  alt='' style='display: none;'>"
				+"</label>"
				+"<br> <br>"
				+"<input type='text' style='text-align: center; width: 100px; border: none;' placeholder='의사이름'>"
				+"<hr>"
				+"<textarea	style='width: 150px; height: 200px; border: none; resize: none;' placeholder='간단한 소개'>"
				+"</textarea>"
				+"</div>"
				+"</div>"
				+"</div>"
					$("#cccbody").append($div);
			});

			var checkTag = $('div#cccbody');
			console.log(checkTag);

			$('.delete').click(function() {

				if ($('.t1').length == 1) {
					alert('삭제할수 없습니다.');
				} else {
					$("#copy").detach();
				}

			});
		});
		// 의료진 사진 등록
		 $("#cccbody").mouseenter(function(){
		 $(".docGetfile").click(function(){ 
			 //var image = document.querySelector(".docGetfile")
			 var image= $(this)[0];
			 var image2 = $(this);

			image.onchange = function() {

			
			var fileList = image.files;
	
			var reader = new FileReader();
			reader.readAsDataURL(fileList[0]);
			
			reader.onload = function() {
				
				/* document.querySelector('#docImage').src = reader.result; */
				
				/* document.querySelector('.docImage').src = reader.result; */
				
				var tempImage = new Image();
				tempImage.src = reader.result;
				
				image2.parent().siblings(".docImage").prop("src",reader.result);
			};
		}; 
		 });
		});
	</script>

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