<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1">
<title>비밀번호 찾기</title>

<!-- 개별페이지 CSS -->
<link href="css/clean-blog.min.css" rel="stylesheet">

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<!-- 폰트 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap"
	rel="stylesheet">





<style>
* {
	zoom: 100%;
}

body, html {
	width: 100%;
	height: 100%;
	background:
		url("https://s3.amazonaws.com/codecademy-content/projects/adoptly/bg.jpg")
		no-repeat center center;
	position: relative;
}

body {
	background-size: cover;
	background-repeat: no-repeat;
	letter-spacing: -0.2px;
	font-family: 'Noto Sans KR', sans-serif;
}

.container {
	align-content: center;
}

a {
	text-decoration: none;
	color: #555;
}

/* 이 영역에서 카드 사이즈 수정 */
.card {
	height: 370px;
	margin-top: auto;
	margin-bottom: auto;
	border: 0;
	background: none;
}

.social_icon span {
	font-size: 60px;
	margin-left: 10px;
	color: #FFC312;
}

.social_icon span:hover {
	color: white;
	cursor: pointer;
}

.card-header h3 {
	color: white;
}

.card-body {
	flex: 0 1 auto;
	padding: 0;
}

.card-footer {
	font-size: 18px;
}

.social_icon {
	position: absolute;
	right: 20px;
	top: -45px;
}

.input-group-prepend span {
	width: 50px;
	background-color: #FFC312;
	color: black;
	border: 0 !important;
}

input:focus {
	outline: 0 0 0 0 !important;
	box-shadow: 0 0 0 0 !important;
}

.remember {
	color: white;
}

.remember input {
	width: 20px;
	height: 20px;
	margin-left: 15px;
	margin-right: 5px;
}

.login_btn {
	color: white;
	background-color: #30627e;
	margin-top: 40px;
	width: 70%;
	height: 60px;
}

.login_btn:hover {
	color: black;
	background-color: white;
}

.links {
	color: white;
}

.links a {
	margin-left: 4px;
}

.input_area {
	width: 100%;
	height: 68px;
	border: 0;
	padding-left: 50px;
}

.input-groupp {
	border-bottom: 1px solid #e5e5e5e5;
}

.inputgroup {
	border: 1px solid #a5a5a5;
}

::placeholder {
	color: #919191;
}

.chkType2 {
	margin-top: 20px;
	position: relative;
	overflow: hidden;
}

.linkBtn {
	position: absolute;
	bottom: 6px;
	right: 0;
	margin-top: 0;
}

.chkType2 label {
	padding-left: 5px;
	display: inline-block;
	vertical-align: middle;
	min-height: 20px;
	line-height: 20px;
}

.ndd {
	height: 200px;
}

#footer {
	clear: both;
	margin: 0 auto;
	text-align: center;
}

#footer ul {
	margin: 0 0 9px 0;
}

#footer ul li {
	font-size: 12px;
	position: relative;
	display: inline;
	padding: 0 3px 0 7px;
	white-space: nowrap;
}

#footer * {
	font-size: 12px;
	font-style: normal;
	line-height: normal;
	margin: 0;
	padding: 0;
	list-style: none;
	color: #333;
}

hr {
	margin-top: 0;
	margin-bottom: 0;
}

.header {
	text-align: center;
}

.loginArea {
	color: black;
	font-weight: 600;
}

.chkinfo {
	position: relative;
	margin-bottom: 29px;
}

.wrapper {
	position: relative;
	height: 100%;
	overflow: hidden;
}

@media screen and (max-width: 758px) {
	body {
		font-size: 15px;
	}
}

@media screen and (max-width: 758px) {
	.loginArea {
		font-size: 33px;
	}
}

@media screen and (max-width: 758px) {
	.container {
		width: auto;
		padding: 60px 3% 0px;
	}
}

@media screen and (max-width: 758px) {
	#footer {
		width: auto;
		margin-top: 10px;
	}
}

@media screen and (min-width: 758px) {
	#footer {
		width: auto;
		margin-top: 20px;
	}
}

@media screen and (min-width: 758px) {
	.container {
		width: auto;
		padding: 150px 3%;
	}
}

.loginlogo {
	text-align: center;
	margin-bottom: 50px;
}

@media screen and (max-width: 758px) {
	.login_btn {
		height: 45px;
		margin-top: 5px;
	}
}

@media ( min-width : 1200px) {
	.container {
		max-width: 1140px;
		height: 90%;
		padding: 180px;
	}
}

.tabbtn {
	width: 100%;
	table-layout: fixed;
	border-collapse: collapse;
}

.tabbtn a.on {
	color: #fff;
	background: #555;
}

.tabbtn a {
	display: table-cell;
	height: 60px;
	font-size: 18px;
	background: #fff;
	color: #555;
	text-align: center;
	vertical-align: middle;
}

@media screen and (max-width:1023px) {
	.tabbtn a {
		display: table-cell;
		width: 50%;
	}
}

@media screen and (max-width:758px) {
	.tabbtn a {
		height: 40px;
		font-size: 15px;
		line-height: 40px;
	}
}

@media screen and (max-width:1023px) {
	.tabbtn a:first-child {
		border-left: 0;
	}
}

@media screen and (max-width: 1023px) {
	.tabbtn {
		display: table;
	}
}

@media screen and (min-width: 1023px) {
	.tabbtn a {
		display: table-cell;
		width: 300px;
	}
}

.tabCon {
	padding: 20px 20px;
	background: #f5f6f7d0;
	text-align: center;
}

.txtmt {
	margin-top: 8px;
	line-height: 26px;
}

.txt {
	margin-top: 20px;
}

.btna a {
	margin-right: 10px;
}

.btna {
	background: #f5f6f7d0;
}

@media screen and (max-width: 758px) {
	.btna {
		padding-top: 20px;
		padding-bottom: 20px;
		text-align: center;
	}
}

@media screen and (min-width: 758px) {
	.btna {
		padding-top: 20px;
		padding-bottom: 20px;
		text-align: center;
	}
}

@media screen and (min-width: 1023px) {
	.btna {
		padding-top: 30px;
		padding-bottom: 30px;
		text-align: center;
	}
}
</style>

</head>


<body>


	<div class="wrapper">





		<div class="container">
			<div class="loginlogo">
				<h1 class="loginArea">비밀번호찾기</h1>
			</div>
			<div class="d-flex justify-content-center h-100">
				<div class="card" style="width: 600px;">
					<div class="card-body">
						<div class="card-header"
							style="width: 100%; font-size: x-large; text-align: center">
							비밀번호 변경</div>
						<div class="tabParent">
							<div class="tabCon on">
								<div class="iconArea">
									<input type="text" class="input_area" id="changePwd"
										placeholder="변경할 비밀번호 입력"> <input type="text"
										class="input_area" id="changePwd2" placeholder="비밀번호 확인">
									<input type="button" class="input_area" id="confirmPwd"
										value="비밀번호 변경하기"> 
										<input type="hidden" id="userId"
										value="${userId }">
									<p class="txtmt">
										본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집하므로<br> 인증 이외의 용도 또는 저장되지
										않습니다.
									</p>
								</div>

							</div>
						</div>
						<div class="btna">
							<a href="mloginp.do">로그인</a> <a href="msignin.do">회원가입</a>

						</div>
						<div id="footer">
							<ul>
								<li><a>이용약관</a></li>
								<li><strong><a>개인정보처리방침</a></strong></li>
								<li><a>책임의 한계와 법적고지</a></li>
								<li><a>회원정보 고객센터 </a></li>
							</ul>
							<address>
								<em class="copy">Copyright</em> <em class="u_cri">©</em> <a>
									Corp.</a> <span class="all_r">All Rights Reserved.</span>
							</address>
						</div>

					</div>
				</div>

			</div>
		</div>

	</div>



	<script>
		$('#confirmPwd').click(function() {
			var pwd1 = $('#changePwd').val();
			var pwd2 = $('#changePwd2').val();
			var userId = $('#userId').val();
			console.log(pwd2)
			if (pwd1 != pwd2) {
				alert('비밀번호를 다시 확인해 주세요');
				return false;
			}

			$.ajax({
				url : "confirmPwd.do",
				type : "post",
				data : {
					userId:userId,
					pwd:pwd2
				},success:function(data){
					if(data==1){
						alert('비밀번호가 변경되었습니다');
						location.href="index.jsp";
					}
				},error:function(){
					
				}
			})

		});
	</script>












</body>
</html>