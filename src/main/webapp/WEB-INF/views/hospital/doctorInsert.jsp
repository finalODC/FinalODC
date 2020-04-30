<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ohdogcat.odc.hospital.model.vo.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
<%-- <c:if test="${!empty msg}">
	<script>
	$(function(){
		alert("${msg}");
	})
		
	</script>
	</c:if> --%>

	<div id="wrapper">

		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="mainpage.do">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-home"></i>
				</div>
				<div class="sidebar-brand-text mx-3"></div>
			</a>

			<div class="sidebar-heading">메뉴</div>

			<hr class="sidebar-divider">

			<li class="nav-item"><a class="nav-link" href="info.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>내 병원 관리</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="insertdoc.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>의사 관리</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="comdoc.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>댓글 관리</span></a></li>

			<li class="nav-item"><a class="nav-link" href="hosP.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>계정정보 변경</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="hlogout.do"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>로그아웃</span></a></li>

			<hr class="sidebar-divider">
		</ul>
		<!-- Content Wrapper -->
		<div class="container-fluid">
			<!-- 컨텐츠 머리글 -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
			</div>
				<div class="row">
					<div class="col-lg-11 mb-4">
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">의료진</h6>
							</div>
							<div class="card-columns " id="cccbody" style="column-count: 1; margin: 25px 0 0 25px; display: inherit;">
								<c:if test="${hospital.doctor[0]!=null }">
								<c:forEach var="b" items="${hospital.doctor }">
									<form class="form1" action="updateDoc.ho" method="post">
								<div class="card t1" style="width: 200px; height: auto;"id="copy">
									<div class="card-body text-center">
										<img class="card-body text-center docFile" name="docFile" src="/odc/resources/docImages/${b.docFile }"
											id="docFile" style="width: 90%; height: 200px;"> <label
											class="btn btn-primary docImage"> 사진변경
											<input type="file" name="docImage"  class="img-fluid updateImage imageCh" style="display: none;">
										</label> 
										<br> <br> 
										<input type="text" style="text-align: center; width: 100px; border: none;" name="docName" class="docName"
											value="${b.docName }">
										<hr>
										<textarea
											style="width: 150px; height: 200px; border: none; resize: none;" name="docIntro" class="docIntro"
											placeholder="간단한 소개">${ b.docIntro }</textarea>
									 <input type="hidden" class="oriImg" value="${b.docFile }">
									 <input type="hidden" class="dId" name="dId" value="${b.dId }">
									 <input type="button"class="btn btn-primary deleteDoc" name="deleteDoc" value="삭제">
									 <input type="button"class="btn btn-primary updateDoc" name="updateDoc" value="수정">
									</div>
								</div>
									</form>
								</c:forEach>
								</c:if>
							</div>
							
							<div style="text-align: center;">
								<input id="ss" type='button' class='btn btn-primary copy'
									value='의사추가' style="width: 100px;">
									<br> <br>
							</div>
						 </div>
					</div>
				</div>
			</div>
		</div>

	<script>
	
	// 의사 삭제
	$(function(){
		$('.deleteDoc').click(function(){
			var dId = $(this).prev('.dId').val();
			if(confirm('삭제하시겠습니까?')){
				
			 $.ajax({
				url : "deleteDoc.ho",
				type : "post",
				data : {
					dId:dId

				},success:function(data){
					 if(data==1){
						alert("삭제되었습니다.");
						location.href="insertdoc.ho";
						
					} 
				},error:function(result){
					alert("실패");
				}
			}); 
		}
		});
	});
 
	// 의사 수정
	$(function(){
		$('.updateDoc').click(function(){
			if(confirm('수정하시겠습니까?')){
			var form = $(this).parents(".form1");
			
			var formData = new FormData(form[0]);

			var dId = $(this).siblings('.dId').val();
			var docImage = $(this).siblings('.imageCh').val();
			
			var docIntro =$(this).siblings('.docIntro').val();
			var docName = $(this).siblings('.docName').val();
			var oriImg = $(this).siblings('.oriImg').val();
			 $.ajax({
				url : "updateDoc.ho",
				type : "post",
	             processData : false,
	             contentType : false,
				data : formData
				,success:function(data){
					console.log(data);
					 if(data==1){
						
						alert("수정되었습니다.");
						location.href="insertdoc.ho";
					} 
				},error:function(result){
					alert("실패");
				} 
			});
			};
		});
	});
		
	</script>

	<script>
		$(function() {
			$('.copy').click(function() {
				/* var a = $("#copy").clone(true) */
				$div = "<form action='indoc.ho' method='post' enctype='multipart/form-data'style='display:inline-block;'>"
				+ "<input type='hidden' name='refHid' id='refHid' value='${ hospital.hId }'>"
				+ "<div class='card-columns cccbody' id='cccbody' style='column-count: 1; display:inline-block'>"
				+ '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' 
				+ "<div class='card t2 ' style='width: 200px; height: auto; display: inline-block;'id='copy'>"
				+ "<div class='card-body text-center '>"
				+ "<img class='card-body text-center ImageDoc' name='docFile' id='docFile' style='width: 90%; height: 200px;'src='/odc/resources/docImages/${b.docFile }'>"
				+ "<label class='btn btn-primary'>"
				+ "사진등록"
				+ "<input type='file' class='img-fluid docGetfile docImage' required alt='' style='display: none;' name='docImage'>"
				+ "</label>"
				+ "<br> <br>"
				+ "<input type='text' style='text-align: center; width: 100px; border: none;' required placeholder='의사이름' class='docName' id='docName' name='docName' value='${b.docName }'>"
				+ "<hr>"
				+ "<textarea required style='width: 150px; height: 200px; border: none; resize: none;' id='docIntro' class='docIntro' name='docIntro' placeholder='간단한 소개'>${ b.docIntro }"
				+ "</textarea>"
				+ "<button type='submit' class='btn btn-primary insertdoc' id='indoc' value=''>등록</button>"
				+ "&nbsp"
				+ "<input type='button' class='btn btn-primary deldoc' id='deldoc' value='삭제'>"
				+ "</div>"
				+ "</div>"
				+ "</div>"
				+ "</form>"
				$("#cccbody").append($div);
			
			});

			var checkTag = $('div.cccbody');
			console.log(checkTag);
			
			});
		
		// 의료진 사진 등록
		$("#cccbody").mouseenter(function() {
			$(".docGetfile").click(	function() {
				var image = $(this)[0];
				var image2 = $(this);

				image.onchange = function() {

					var fileList = image.files;

					var reader = new FileReader();
					reader.readAsDataURL(fileList[0]);
					reader.onload = function() {

						var tempImage = new Image();
						tempImage.src = reader.result;
						image2.parent().siblings(".ImageDoc ").prop("src", reader.result);
					};
				};
			});
		});
		
		// 의료진 사진 변경
		$(".updateImage").click(function() {
			var image = $(this)[0];
			var image2 = $(this);

			image.onchange = function() {

				var fileList = image.files;

				var reader = new FileReader();
				reader.readAsDataURL(fileList[0]);
				reader.onload = function() {

					var tempImage = new Image();
					tempImage.src = reader.result;
					image2.parent().siblings(".docFile ").prop("src", reader.result);
				};
			};
		});

		/* $("#cccbody").mouseenter(function() {
		$('.insertdoc').on(function(){
			if(confirm('등록하시겠습니까?')){
				return true;
			} else{
				return false;
			};
		});
		});
		 */


		$("#cccbody").mouseenter(function() {
			$('.deldoc').click(function() {
				
				if ($('.t2').length == 1) {
					console.log('삭제할수 없습니다.');
					
				} else {
					$(".card-columns ").eq($('.cccbody').length - 1).detach();
					//alert('삭제할수 없습니다.');
				}
				
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





</body>

</html>