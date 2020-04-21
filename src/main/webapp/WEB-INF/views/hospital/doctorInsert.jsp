<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ohdogcat.odc.hospital.model.vo.*" %>
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
			
			<form action="indoc.ho" method="post" enctype="multipart/form-data">
			<!-- <form action="updatehosinfo.ho" method="post" enctype="multipart/form-data"> -->
				<div class="row">
					<input type="text" name="refHid" id="userId" value="1">

					<div class="col-lg-11 mb-4">
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">의료진</h6>
							</div>
							<div class="card-columns" id="cccbody" style="column-count: 1;">
								
								<div class="card t1"
									style="width: 200px; height: auto; display: inline-block; margin: 25px 0 0 25px;"
									id="copy">
									<div class="card-body text-center">
										<img class="card-body text-center docImage" name="docImage"
											id="docImage" style="width: 90%; height: 200px;"> <label
											class="btn btn-primary "> 사진등록 <input type="file" name="docFile"
											class="img-fluid docGetfile" id="docGetfile" alt=""
											style="display: none;">
										</label> <br> <br> <input type="text"
											style="text-align: center; width: 100px; border: none;" name="docName"
											placeholder="의사이름">
										<hr>
										<textarea
											style="width: 150px; height: 200px; border: none; resize: none;" name="docIntro"
											placeholder="간단한 소개"></textarea>
									</div>
								</div>
							</div>
							<!-- <div style="text-align: center;">
                            <input type="button" value="의사 등록" class="btn btn-primary">
                        </div> -->
							<div style="text-align: center;">
								<input id="ss" type='button' class='btn btn-primary copy'
									value='의사추가' style="width: 100px;"> <input id="ss"
									type='button' class='btn btn-primary delete' value='의사삭제'
									style="width: 100px;">
									 <button type="submit"class="btn btn-primary" value="">등록</button> <br> <br>
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
		
		// 병원 설명 등록
		$(function(){
			$('#updatehosinfo').on('click',function(){
				var hFile = $('#preview').val();
				var hComment = $('#hComment').val();
				var add1 = $('#add1').val();
				var add2 = $('#add2').val();
				var add3 = $('#add3').val();
				$.ajax({
					url : "updatehosinfo.ho",
					type : "GET",
					data : {
						userId : '${loginUser.userId}',
						hFile:hFile,
						hComment:hComment,
						add1:add1,
						add2:add2,
						add3:add3
					},success:function(data){
						if(data!=1){
							location.href="chart.ho";
							alert("변경 성공");
						}
					},error:function(data){
						alert("실패");
					}
				});
			});
		})
	</script>

	


	<script>
		$(function() {
			$('.copy').click(function() {
				/* var a = $("#copy").clone(true) */
				$div = "<div class='card-columns' id='cccbody' style='column-count: 1; display:inline-block'>"
				+ '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' 
				+ "<div class='card t1' style='width: 200px; height: auto; display: inline-block;'id='copy'>"
				+ "<div class='card-body text-center'>"
				+ "<img class='card-body text-center docImage' name='docImage' id='docImage' style='width: 90%; height: 200px;'>"
				+ "<label class='btn btn-primary'>"
				+ "사진등록"
				+ "<input type='file' class='img-fluid docGetfile'  alt='' style='display: none;'>"
				+ "</label>"
				+ "<br> <br>"
				+ "<input type='text' style='text-align: center; width: 100px; border: none;' placeholder='의사이름'>"
				+ "<hr>"
				+ "<textarea	style='width: 150px; height: 200px; border: none; resize: none;' placeholder='간단한 소개'>"
				+ "</textarea>"
				+ "</div>"
				+ "</div>"
				+ "</div>"
				$("#cccbody").append($div);
			});

			var checkTag = $('div#cccbody');
			console.log(checkTag);

			$('.delete').click(function() {
				if ($('.t1').length == 1) {
					alert('삭제할수 없습니다.');
				} else {
					$(".card-columns").eq($('.card-columns').length - 1).detach();
						}
				});
			});
		// 의료진 사진 등록
		$("#cccbody").mouseenter(function() {
			$(".docGetfile").click(	function() {
				//var image = document.querySelector(".docGetfile")
				var image = $(this)[0];
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

						image2.parent().siblings(".docImage").prop("src", reader.result);
					};
				};
			});
		});
		
		$("adsadsa").click(function(){
			$("#").submit()
		})
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