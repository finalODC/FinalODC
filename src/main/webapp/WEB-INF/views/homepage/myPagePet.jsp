<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>메인페이지</title>
<meta charset="UTF-8">
<meta name="description" content="Real estate HTML Template">
<meta name="keywords" content="real estate, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">


<!-- Stylesheets -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/slicknav.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet" href="css/style.css" />

<style>
#aaa {
	margin-left: 10%;
}
</style>
</head>
<body>

	<jsp:include page="common/menubar.jsp"/>

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
									<td width="140px"><a href="mypageQNA.do"
										class="btn btn-outline-primary">&nbsp;문희하러가기&nbsp;</a></td>
								</tr>
							</table>
						</div>
						<br>


						<div class="col-md-8 order-md-1" id="aaa">
							<h4 class="mb-3">함께하는 반려동물 정보</h4>
							<hr>


							<table class="table table-striped table-hover"
								style="width: 100%;">
								<thead>
									<tr>
										<th>
											<h5>사진</h5>
										</th>
										<th>등록번호</th>
										<th>분류</th>
										<th>이름</th>
										<th>출생년월</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<div style="width: 150px; height: 100px; background: red">사진이
												들어감</div>
										</td>

										<td>B165486135424</td>
										<td>웰시코기</td>
										<td>상두</td>
										<td>2016-08</td>


									</tr>
									<tr>
										<td>
											<div style="width: 150px; height: 100px; background: red">사진이
												들어감</div>
										</td>

										<td>B165486135424</td>
										<td>웰시코기</td>
										<td>상두</td>
										<td>2016-08-16</td>


									</tr>
									<!-- <tr>
								
									<div style="width: 100%; height: 100px; background:red">사진이 들어감</div>
								
								
								
							</tr> -->
								</tbody>

							</table>
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
				<script>document.write(new Date().getFullYear());</script>
				권한은 전적으로 나한테 있습니다.

			</div>
	</footer>
	<!-- Footer Section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>
