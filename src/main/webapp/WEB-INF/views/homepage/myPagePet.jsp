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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

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

@font-face {
	font-family: 'Lato';
	font-style: normal;
	font-weight: 400;
	src: local('Lato Regular'), local('Lato-Regular'),
		url(https://fonts.gstatic.com/s/lato/v16/S6uyw4BMUTPHjx4wWw.ttf)
		format('truetype');
}

@font-face {
	font-family: 'Lato';
	font-style: normal;
	font-weight: 700;
	src: local('Lato Bold'), local('Lato-Bold'),
		url(https://fonts.gstatic.com/s/lato/v16/S6u9w4BMUTPHh6UVSwiPHA.ttf)
		format('truetype');
}

@font-face {
	font-family: 'Lato';
	font-style: normal;
	font-weight: 900;
	src: local('Lato Black'), local('Lato-Black'),
		url(https://fonts.gstatic.com/s/lato/v16/S6u9w4BMUTPHh50XSwiPHA.ttf)
		format('truetype');
}

.body {
	font-family: Lato, Helvetica, Arial, sans-serif;
	background: linear-gradient(#dfdbd7, #d7d3d3);
	color: #545454;
	margin: 0;
	min-height: 100vh;
}

.form {
	max-width: 520px;
	background: #fff;
	margin: 1em auto;
	padding-bottom: 1em;
	border-radius: 8px;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.07);
}

.form .header {
	border-bottom: 3px double #e9e9e9;
	padding: 1em 0;
	padding-bottom: 1em;
}

.form .head h1 {
	text-align: center;
	font-size: 1.3em;
	color: #5f7796;
	font-weight: bolder;
}

.form .head h2 {
	text-align: center;
	font-size: 1em;
	color: #94a9c3;
	font-weight: normal;
}

.form .button-submit {
	font-weight: regular;
	color: #fff;
	font-size: 1em;
	padding: 0.8em 2em;
	border-radius: 50em;
	border: none;
	outline: none;
	background: #5f7796;
	margin: 1em auto 0.3em;
	transition: all 0.2s linear;
}

.form .button-submit:hover {
	background: #374558;
}

.form ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

.form ul h3 {
	font-weight: normal;
	font-size: 1.2em;
}

.form ul .question {
	padding: 0 1em 1.5em;
	border-bottom: 1px solid #e9e9e9;
}

.form ul .question .choice span {
	background: #70b48b;
	color: #fff;
	font-size: 0.8em;
	padding: 0.5em 1.5em 0.5em 2em;
	margin: 0 1.2em 0 0;
	border-radius: 100px;
	position: relative;
	min-width: 50px;
	text-align: center;
	display: inline-block;
	transition: all 0.2s linear;
	box-shadow: 0 0 0 2px rgba(0, 0, 0, 0) inset, 0 0 0 2px rgba(0, 0, 0, 0);
}

.form ul .question .choice span:before {
	content: '';
	background: #fff;
	position: absolute;
	top: 9px;
	left: 7px;
	border-radius: 50%;
	width: 10px;
	height: 10px;
}

.form ul .question .choice span:after {
	content: '';
	position: absolute;
	z-index: 2;
	width: 6px;
	height: 6px;
	top: 11px;
	left: 9px;
	transform: scale(0);
	border-radius: 50%;
	transition: all 0.3s linear;
}

.form ul .question .choice span:hover, .form ul .question .choice span:focus
	{
	background: #417d59;
}

.form ul .question .choice input {
	display: none;
}

.form ul .question .choice input:checked+span {
	box-shadow: 0 0 0 2px #5f7796 inset, 0 0 0 2px rgba(0, 0, 0, 0.1);
}

.form ul .question .choice input:checked+span:after {
	background: #5f7796;
	transform: scale(1);
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
									<td width="140px"><span class="btn btn-outline-info">&nbsp;반려동물정보&nbsp;</span></td>
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
										<th>상세보기</th>

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
	<h2>Extra Large Modal</h2>
	<!-- Button to Open the Modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#myModal">Open modal</button>

	<!-- The Modal -->
	<form method="POST" action="updatePet.pe">
	<input type="hidden" name="pid">
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="body">
					<div class="form">
						<div class="head">
							<br>
							<h1>내 반려동물 정보</h1>
							<br>
							<h2>항목을 클릭하여 수정할 수 있습니다.</h2>
							<hr>
						</div>
						<ul>
							<li class="question"><br>
								<h3>이름</h3> <br> <label class="choice" id="nameLabel">
									<span id="pName"></span>
									<input type="hidden" name="pName">
							</label></li>
							<li class="question"><br>
								<h3>등록코드</h3> <br> <label class="choice">
								<span id="pCode"></span>
								<input type="hidden" name="pCode">
							</label></li>
							<li class="question"><br>
								<h3>품종</h3> <label class="choice"><br>
								<span id="pBreed"></span>
								<input type="hidden" name="breed">
								</label>
							</li>
							<li class="question"><br>
								<h3>중성화여부</h3> <label class="choice"> <br> <input
									type="radio" name="neutralYN" value="Y" checked="checked" />
									<span>예</span>
							</label> <label class="choice"> <input type="radio" name="neutralYN"value="N" /> 
							<span>아니요</span>
							</label></li>
							<li class="question"><br>
								<h3>출생년월</h3> <br> <label class="choice"> 
								<span id="pBirth"></span>
								<input type="hidden" name="pBirth">
							</label></li>
							<li class="question" id="uniqueness"><br>
								<h3>특이사항</h3> <br>
								<textarea disabled style="resize: none;"
									class="choice" name="pUniqueness" id="pUniqueness" cols="57%"
									rows="10">
								</textarea>
							</li>
						</ul>
						
						<div align="center" style="margin-top: 10px; margin-left: 10px; width: 100%;">
							<button type="submit" class="button-submit btn mx-auto">수정하기</button>
							<button type="button" class="button-submit btn mx-auto" onclick="deletePet()">삭제하기</button>
							<br>
							<button class="button-submit btn mx-auto btn-secondary"
								data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div>
			

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>

		</div>
	</div>
	</form>


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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	<!-- ajax데이터script -->
	<script>
		var choice;
		$(function(){
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
						var $tr=$('<tr class="a" data-toggle="modal" data-target="#myModal">');
						var $pid=$("<td style='display:none;'>").text(data[i].pid);
						var $pName=$("<td>").text(data[i].pName);
						var $pCode=$("<td>").text(data[i].pCode);
						var $pBreed=$("<td>").text(data[i].breed);
						var $pGender=$("<td>").text(data[i].pGender);
						var $pBirth=$("<td>").text(data[i].pBirth);
						var $detailBtn=$("<td>").html('<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Open modal</button>');
						$tr.append($pid);
						$tr.append($pName);
						$tr.append($pCode);
						$tr.append($pBreed);
						$tr.append($pGender);
						$tr.append($pBirth);
						$tr.append($detailBtn);
						$tableBody.append($tr);
					}
					
					$(function(){
						$(".a").on("click",function(){
							var pid=$(this).find("td").first().text();
							for(var i=0;i<data.length;i++){
								if(pid==data[i].pid){
									choice=data[i];
								}
							}
							console.log(choice);
							$("input[name=pid]").val(choice.pid);
							$("input[name=pName]").val(choice.pName);
							$("input[name=breed]").val(choice.breed);
							$("input[name=pCode]").val(choice.pCode);
							$("input[name=pBirth]").val(choice.pBirth);
							
							$("#pName").text(choice.pName);
							$("#pBreed").text(choice.breed);
							$("#pCode").text(choice.pCode);
							$("#pBirth").text(choice.pBirth);
							choice.pUniqueness=choice.pUniqueness.replace(/<br>/gi,"\n");
							console.log(choice.pUniqueness);
							$("#pUniqueness").val(choice.pUniqueness);
						});
					});
					//console.log(fuck)
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
	<!-- modalscript부분 -->
	<script>

	  $(function(){
	    $("#pName").on("click",function(){
	      if(confirm("반려동물 이름을 수정?")){
	        var pName=prompt();
	        $("input[name=pName]").val(pName);
	        $(this).text(pName);
	      }
	    });
	    
	    $("#pCode").on("click",function(){
		      if(confirm("반려동물 등록코드 수정?")){
		        var pCode=prompt();
		        $("input[name=pCode]").val(pCode);
		        $(this).text(pCode);
		      }
		    });
	    $("#pBreed").on("click",function(){
		      if(confirm("반려동물 품종 수정?")){
		        var pBreed=prompt();
		        $("input[name=breed]").val(pBreed);
		        $(this).text(pBreed);
		      }
		    });
	    $("#pBirth").on("click",function(){
		      if(confirm("반려동물 생일 수정?")){
		        var pBirth=prompt();
		        $("input[name=pBirth]").val(pBirth);
		        $(this).text(pBirth);
		      }
		    });
	    $("#uniqueness").on("click",function(){
	        var check=document.getElementById("pUniqueness").disabled;
	        console.log(check);
	        if(check)
	            if(confirm("특이사항을 수정하시겠습니까?")){
	                $("#pUniqueness").attr("disabled",false);
	                $("#pUniqueness").focus();
	                
	            }
	        
	    });
	  });
	  

</script>
	
	<script>
		function deletePet(){
			var pid=$("input[name=pid]").val();
			location.href="deletePet.pe?pid="+pid;
		}
	</script>

































































</body>
</html>
