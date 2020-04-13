<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>메인페이지</title>
<meta charset="UTF-8">
<meta name="description" content="Real estate HTML Template">
<meta name="keywords" content="real estate, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">

<c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
  <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/slicknav.min.css" rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="${path }/resources/css/style.css" rel='stylesheet' type='text/css'>

<style>
#aaa {
	margin-left: 10%;
}

.btn{
	font-size:17px;
}
.form-control{
	font-size:15px;
}
.custom-select{
	font-size:15px;
}

.pwdcheck{
	display: none;
	font-size:15px;
}
</style>


</head>
<body>

	
  <jsp:include page="common/menubar.jsp"/>

	<!-- Header Section end -->

	<div class="container" style="padding-top: 150px; font-size: 23px">
		<div class="row">
			<div class="col-lg-12 col-md-12">

					<div id="right1" class=".float-right col-md-8 order-md-1 container">
						<div>
							<table align="center" width="420px" style="font-size: 20px">
								<tr style="text-align: center;">
									<td width="140px"><span class="btn btn-outline-info">개인정보
											변경&nbsp;</span></td>
									<td width="140px"><a href="myPet.html"
										class="btn btn-outline-primary">&nbsp;반려동물 정보&nbsp;</a></td>
									<td width="140px"><a href="qna.html"
										class="btn btn-outline-primary">&nbsp;문의하기&nbsp;</a></td>
								</tr>
							</table>
						</div>
						<br>
						<div class="col-md-8 order-md-1" id="aaa" style="font-size: 20px">
							<h4 class="mb-3">개인정보 변경</h4>
							<hr>
							<form class="needs-validation" action="" method="POST"
								onsubmit="return validate()">

								<div class="mb-3">

									<label for="username">아이디</label> <input type="text"
										class="form-control" style="width: 30%;" id="username"
										placeholder="Username" value="${loginUser.userId }" readonly>
								</div>
								<br>
								<div class="mb-3">
									<label>변경할 비밀번호</label>
									<span style="font-size:15px; color:red">[영문대소문자,특수문자(!@#$%*)사용가능,
										6자 이상]</span>
										<input type="password" class="form-control" style="width: 30%;" id="pwd1">
								</div>

								<div class="mb-3">
									<label>변경할 비밀번호 확인</label><br>
									<input type="password" id="pwd2" class="form-control" style="width: 30%;">
								</div>
								<div class="pwdcheck ok" style=" color: green">
			                    	사용가능
			                    </div>
			                    <div class="pwdcheck error" style=" color: red;">
			                    	사용불가능
			                    </div>
			                    <div class="pwdcheck short" style=" color: red;">
			                    	비밀번호는 6자리 이상으로 해주세요!
			                    </div>
								<br>

								<div class="mb-3">
									<label>이메일</label><br> <input type="email"
										class="form-control" value="${loginUser.email }" style="width: 30%;" id="years" disabled>
								</div>
								
								<div class="mb-3">
									<label>전화</label> <br> <input type="text"
										class="form-control" style="width: 30%;" id="phone"
										placeholder="-제외" value="${loginUser.phone }" maxlength="12">
								</div>

								<div class="mb-3">
									<label>가입일</label><br> <input type="date"
										class="form-control" style="width: 30%;" id="hireDate"
										value="${loginUser.mCreateDate }" disabled>
								</div>



								
								<br>




								<input type="hidden" value="0" id="pwdCheck">
								<button class="btn btn-primary btn-lg" type="submit"
									style="float: right;">확인</button>

							</form>
						</div>
					</div>
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
		$('#pwd1').on("keyup",function(){
			var pwd1 = $('#pwd1').val();
			var pwd2 = $('#pwd2').val();
			
			if(pwd1.length<6){
				$('.short').show();
				$('.error').hide();
				$('.ok').hide();
				$('#pwdCheck').val(0);
			}else{
				$('.short').hide();
    			if(pwd1==pwd2){
    				$('.error').hide();
    				$('.ok').show();
    				$('#pwdCheck').val(1);
    			}else{
    				$('.error').show();
    				$('.ok').hide();
    				$('#pwdCheck').val(0);
    			}
			}
		});
		$('#pwd2').on("keyup",function(){
			var pwd1 = $('#pwd1').val();
			var pwd2 = $('#pwd2').val();
			
			if(pwd1.length<6){
				$('.short').show();
				$('.error').hide();
				$('.ok').hide();
				$('#pwdCheck').val(0);
			}else{
    			if(pwd1==pwd2){
    				$('.error').hide();
    				$('.ok').show();
    				$('#pwdCheck').val(1);
    			}else{
    				$('.short').hide();
    				$('.error').show();
    				$('.ok').hide();
    				$('#pwdCheck').val(0);
    				
    			}
			}
			
		});
	});
	
	function validate() {
		
		 if($('#pwdCheck').val()==0){
         	alert('비밀번호를 확인해 주세요!')
         	$('#pwd2').select();
         	return false;
         }
	}
		
	</script>


</body>
</html>
