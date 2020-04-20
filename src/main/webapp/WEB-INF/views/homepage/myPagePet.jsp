<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>메인페이지</title>
<meta charset="UTF-8">
<meta name="description" content="Real estate HTML Template">
<meta name="keywords" content="real estate, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!-- Google font -->
<c:set var="path" value="${pageContext.servletContext.contextPath }"
	scope="application" />
<!-- <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css"> -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400'
	rel='stylesheet' type='text/css'>
<link href="${path }/resources/css/stylne.css" rel='stylesheet'
	type='text/css'>
<link href="${path }/resources/css/bootstrap.min.css" rel='stylesheet'
	type='text/css'>
<link href="${path }/resources/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
<link href="${path }/resources/css/slicknav.min.css" rel='stylesheet'
	type='text/css'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link href="${path }/resources/css/style.css" rel='stylesheet'
	type='text/css'>


<style>
#aaa {
	margin-left: 10%;
}

#insertDog {
	background-image:
		url(https://post-phinf.pstatic.net/MjAxNzA5MjBfMjI1/MDAxNTA1ODg0NjMyNDgw.9GzMHmgvTppZHJAb2BOq1pdQJQqX79NTv003csX-Q6cg.k88VnGh5SQbQiZkDllPRYrmX0kWu1kd0u3CsqWPkfRsg.PNG/20170920_134618.png?type=w1200);
}

#insertCat {
	background-image:
		url("http://cdn.ppomppu.co.kr/zboard/data3/2019/0910/m_20190910001740_upyzieih.jpeg");
}
</style>
</head>
<body>


	<jsp:include page="common/menubar.jsp" />


	<div class="container" style="padding-top: 150px;">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<section class="page-section portfolio">
					<div id="right1" class=" col-md-8 order-md-1 container">
						<div>
							<table align="center" width="420px">
								<tr style="text-align: center;">
									<td width="140px"><a href="mypageperson.do"
										class="btn btn-outline-primary">개인정보 변경</a></td>
									<td width="140px"><span class="btn btn-outline-info">&nbsp;반려동물
											정보&nbsp;</span></td>
									<td width="140px"><a href="myqnalist.qn"
										class="btn btn-outline-primary">&nbsp;문희하러가기&nbsp;</a></td>
								</tr>
							</table>
						</div>
						<br>


						<div class="col-md-8 order-md-1" id="aaa">
							<h4 class="mb-3">함께하는 반려동물 정보</h4>
							<hr>


							<table id="petlist" class="table table-striped table-hover"
								style="width: 100%;">
								<thead>
									<tr>
										<th>이름</th>
										<th>등록번호</th>
										<th>분류</th>
										<th>성별</th>
										<th>출생년월</th>

									</tr>
								</thead>
								<tbody>
									
									<!-- <tr>
								
									<div style="width: 100%; height: 100px; background:red">사진이 들어감</div>
								
								
								
							</tr> -->
								</tbody>

							</table>
							<hr>
							<div id="insertDog"
								style="width: 600px; height: 300px; margin-top: 30px; margin-left: 50px; margin-right: 30px;">
							</div>
							<h2 align="center">반려견 등록하시개</h2>
							<div id="insertCat"
								style="width: 600px; height: 300px; margin-top: 30px; margin-left: 50px; margin-right: 30px;">
							</div>
							<h2 align="center">반려묘 등록하자냥</h2>
							<hr>
						</div>
					</div>
				</section>
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
	<!-- Footer Section end -->

	<!--====== Javascripts & Jquery ======-->

	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

	<script src="${path }/resources/js/bootstrap.min.js"></script>

	<script src="${path }/resources/js/jquery.slicknav.min.js"></script>

	<script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>

	<script src="${path }/resources/js/main.js"></script>

	<script>
		$(function(){
			alert("Hi");
			myPetList();
		});
		
		function myPetList(){
			$.ajax({
				url:"mypetlist.pe",
				dataType:"json",
				data:{mId:${loginUser.mId}},
				success:function(data){
					console.log(data);
					$tableBody=$("#petlist tbody");
					$tableBody.html("");
					
					for(var i in data){
						var $tr=$("<tr>");
						var $pName=$("<td>").text(data[i].pName);
						var $pCode=$("<td>").text(data[i].pCode);
						var $pBreed=$("<td>").text(data[i].breed);
						var $pGender=$("<td>").text(data[i].pGender);
						var $pBirth=$("<td>").text(data[i].pBirth);
					
						$tr.append($pName);
						$tr.append($pCode);
						$tr.append($pBreed);
						$tr.append($pGender);
						$tr.append($pBirth);
						
						$tableBody.append($tr);
					}
				},error:function(){
					alert("실패");
				}
			});
		}
		
		$("#insertDog").click(function(){
			location.href="signinPage.pe?pSpecies=DOG";
		});
		
		$("#insertCat").click(function(){
			location.href="signinPage.pe?pSpecies=CAT";
		});
	</script>


































































</body>
</html>
