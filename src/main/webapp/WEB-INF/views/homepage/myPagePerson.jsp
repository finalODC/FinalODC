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
	<!-- Header Section end -->

	<div class="container" style="padding-top: 150px;">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<section class="page-section portfolio">
					<div id="right1" class=".float-right col-md-8 order-md-1 container">
						<div>
							<table align="center" width="420px">
								<tr style="text-align: center;">
									<td width="140px"><span class="btn btn-outline-info">개인정보
											변경&nbsp;</span></td>
									<td width="140px"><a href="mypagepet.do"
										class="btn btn-outline-primary">&nbsp;반려동물 정보&nbsp;</a></td>
									<td width="140px"><a href="mypageQNA.do"
										class="btn btn-outline-primary">&nbsp;문희하러가기&nbsp;</a></td>
								</tr>
							</table>
						</div>
						<br>
						<div class="col-md-8 order-md-1" id="aaa">
							<h4 class="mb-3">개인정보 변경</h4>
							<hr>
							<form class="needs-validation" action="" method="POST"
								onsubmit="return validate()">

								<div class="mb-3">

									<label for="username">아이디</label> <input type="text"
										class="form-control" style="width: 30%;" id="username"
										placeholder="Username" value="아이디" readonly>
								</div>
								<br>
								<div class="mb-3">
									<label>변경할 비밀번호</label> <span>[영문대소문자,특수문자(!@#$%*)사용가능,
										8자 이상]</span> <input type="password" class="form-control"
										style="width: 30%;" id="pwd">
								</div>

								<div class="mb-3">
									<label>변경할 비밀번호 확인</label><br> <input type="password"
										class="form-control" style="width: 30%;" id="pwd2">
								</div>
								<br>

								<div class="mb-3">
									<label for="gender">성별</label><br> <input type="radio"
										name="gender" id="male" value="M" checked><label
										for="male">남</label> &nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="gender" id="female" value="F" disabled><label
										for="female">여</label>
								</div>

								<div class="mb-3">
									<label>나이</label><br> <input type="text"
										class="form-control" style="width: 30%;" id="years" disabled>
								</div>

								<div class="mb-3">
									<label>가입일</label><br> <input type="date"
										class="form-control" style="width: 30%;" id="hireDate"
										value="2020-02-20" disabled>
								</div>



								<div class="mb-3">
									<label>전화</label> <br> <input type="text"
										class="form-control" style="width: 30%;" id="phone"
										placeholder="-제외" maxlength="12">
								</div>
								<br>

								<div class="mb-3">
									<label for="country">지역</label><br> <select
										class="custom-select " style="width: 30%;" id="country"
										required="">
										<option value="seoul">서울</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
									</select>
								</div>




								<button class="btn btn-primary btn-lg" type="submit"
									style="float: right;">확인</button>

							</form>
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
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>
