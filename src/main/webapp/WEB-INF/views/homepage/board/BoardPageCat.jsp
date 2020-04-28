<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<c:set var="path" value="${pageContext.servletContext.contextPath}"
	scope="application" />






<link rel="stylesheet"
	href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">


<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400'
	rel='stylesheet' type='text/css'>


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
<link href="${path }/resources/css/stylne.css" rel='stylesheet'
	type='text/css'>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/ddfd73bace.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>



<style>
.main-menu li a:hover {
	color: #fb105f;
}

.main-menu>li>a {
	font-size: 18px;
}

.user-panel a:hover {
	color: #fa296f;
}

.footer {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	text-align: center;
}

#container {
	height: 500px;
}

#aside {
	width: 300px;
	height: 750px;
	float: left;
	margin-left: 330px;
}

#contents {
	width: 700px;
	height: 750px;
	float: left;
}

#header {
	height: 100px;
}

#Search {
	font-size: 16px;
	width: 325px;
	padding: 10px;
	height: 30px;
	border: 1px solid black;
}

#SearchBtn {
	width: 50px;
	border: 0px;
	background-color: white;
}

a {
	color: black;
}
</style>
</head>



<body>
	<!--@@@@@@@@@@@@@@@@@@@@@@@@@ 헤더 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
	<header class="header_section" style="background-color: #30627e;">
		<a href="" class="float-left navbar-light slicknav_menu"
			style="color: white; font-size: 30px; margin-top: 7px;"><b>Oh!DogCat</b></a>
		<nav class="header-nav">
			<div class="container" style="padding-bottom: 30px;">
				<a href="" class="float-left navbar-light "
					style="color: white; font-size: 30px; padding-top: 0px;"><b>Oh!DogCat</b></a>
				<ul class="main-menu">
					<li><a href="searchhospital.do">병원찾기</a></li>
					<li><a href="Fblist.bo">커뮤니티</a>
						<ul class="sub-menu">
							<li><a href="hgonoticelist.do">공지사항</a></li>
							<li><a href="Fblist.bo">자유게시판</a></li>
							<li><a href="DBlist.bo">TIP</a></li>
						</ul></li>
					<li><a href="#">마이페이지</a>
						<ul class="sub-menu">
							<li><a href="mypageperson.do">정보수정</a></li>
							<li><a href="mypagepet.do">반려동물 관리</a></li>
							<li><a href="myqnalist.qn">문의사항</a></li>
						</ul></li>

				</ul>
				<div class="header-right">
					<div class="user-panel">
						<!-- <a href="login.html" class="login">로그인</a> -->
						<a href="selectJoinCase.html" class="register">로그아웃</a>
					</div>
				</div>
			</div>
		</nav>
	</header class="masthead">

	<!--     @@@@@@@@@@@@@@@@@@@@@ 가운데 내용 @@@@@@@@@@@@@@@@@@@@@-->
	<div class="">

		<div class="row">
			<div id="aside" align="center" class="col-lg-2">
				<div align="left">
					<br> <br> <br> <br>

					<ul>
						<A href="Fblist.bo"> <!-- Fblist.bo로 매핑된 메소드를 호출하여 값을 불러오고 페이지로 이동한다. -->

							<h4 style="height: 40px;" align="">자유 게시판</h4>
						</A>
						<br>
						<br>

						<a>
							<h4>정보 공유 게시판</h4>
						</a>
						<br>
						<hr style="border: solid 2px black; width: 200px;" align="left">
						<br>

						<a href="DBlist.bo">
							<h5>
								<i class="fas fa-dog">&nbsp;</i>강아지
								게시판&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i
									class="fas fa-paw"></i>
							</h5>
						</a>
						<br>
						<a href="CBlist.bo">
							<h5>
								<i class="fas fa-cat">&nbsp;</i>고양이
								게시판&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i
									class="fas fa-bell"></i>
							</h5>
						</a>
						<br>
					</ul>

				</div>
			</div>


			<div id="contents" class="col-lg-6">

				<br> <br>

				<h2>
					&nbsp;&nbsp;&nbsp;Cat board &nbsp; <i class="fas fa-bell"></i>
				</h2>

				<br> <br>

				<div align="right" style="width: 750px; margin-left: 80px;">
					<table class="table table-hover" align="center">

						<thead>
							<tr>
								<th>no.</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
						</thead>

						<tbody id="tableArea">
							<c:forEach var="cb" items="${CBlist}">

								<tr class="Ctrc">

									<td>${cb.tbId }</td>
									<td>${cb.tbTitle }</td>
									<td>${cb.tbWriter }</td>
									<td>${cb.tbCreateDate }</td>
									<td>${cb.tbCount }</td>

								</tr>
							</c:forEach>
						</tbody>


					</table>

					<!-- 클릭 이벤트시 게시판 디테일로 가는 스크립트 -->
					<script>
						$('.Ctrc').click(function(){
							var bb= $(this).find("td:eq(0)").text()
							
							location.href='CatBoardView.bo?tbId='+bb;
						});
					</script>
					<!--  @@@@@@@@@@@@@@@@@@@@검색 @@@@@@@@@@@@@@@@@@@@ -->

					<div class="btn-toolbar d-flex justify-content-center">

						<!-- 이전버튼 -->
						<div class="btn-group">

							<c:if test="${pi.currentPage eq 1 }">
								<input type="button" value="이전" class="btn btn-secondary" />
							</c:if>

							<c:if test="${pi.currentPage ne 1 }">
								<c:url var="before" value="CBlist.bo">
									<c:param name="currentPage" value="${ pi.currentPage -1 }" />
								</c:url>
								<input type="button" class="btn btn-secondary" value="이전"
									onclick="getList(${pi.currentPage-1});" />
							</c:if>
						</div>



						<!-- 페이지 숫자버튼 -->
						<c:forEach var="p" begin="${ pi.startPage }" end="${pi.endPage }">

							<div class="btn-group" align="center">

								<c:if test="${ p eq pi.currentPage }">
									<button class="btn btn-secondary">${ p }</button>
								</c:if>


								<c:if test="${ p ne pi.currentPage }">
									<c:url var="pagination" value="TBlist.bo">
										<c:param name="currentPage" value="${ p }" />
									</c:url>
									<button class="btn btn-secondary" onclick="getList(${p});">${ p }</button>
								</c:if>
							</div>

						</c:forEach>


						<!-- 다음으로 가는 버튼  -->
						<div class="btn-group">
							<c:if test="${pi.currentPage eq pi.maxPage }">
								<input type="button" class="btn btn-secondary" value="다음" />
							</c:if>
							<c:if test="${ pi.currentPage ne pi.maxPage }">

								<input value="다음" type="button"
									onclick="getList(${pi.currentPage+1});"
									class="btn btn-secondary" />
							</c:if>
						</div>
					</div>


					<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    검색 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
					<br>

					<div align="center" id="SearchDiv">
						<table border="1">
							<tr>
								<c:if test="${csearchkey!=null and csearch !=null }">
									<td><select style="border: 0px;" id="CatboardSearchkey">
											<option value="title">제목</option>
											<option value="writer">작성자</option>

									</select></td>

									<td><input id="CatboardSearchval" type="text"
										style="border: 0px;" value="${ search}"
										placeholder="검색어를 입력하세요"></td>
									<script>
								$("#CatboardSearchkey").val("${csearchkey}");
								</script>
								</c:if>
								<c:if test="${csearchkey==null or csearch ==null }">
									<td><select style="border: 0px;" id="CatboardSearchkey">
											<option value="title">제목</option>
											<option value="Writer">작성자</option>

									</select></td>

									<td><input id="CatboardSearchval" type="text"
										style="border: 0px;" placeholder="검색어를 입력하세요"></td>
								</c:if>
								<td>
									<button id="searchBtn" style="border: 0px; background: white;"
										onclick="getList(1)">
										&nbsp;<i class="fas fa-search"></i>

									</button>
								</td>
							</tr>
						</table>

					</div>
					<br> <br>
					<button type="button" class="btn btn-outline-info"
						onclick="location.href='CatBoardWritergo.bo'" align="right">글쓰기</button>
				</div>

			</div>

		</div>
	</div>





	  <div class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-2">
          <div class="copy" style="font-size: 15px;">© 승제쌤도와조</div>
        </div>
        <div class="col-md-10">
          <ul class="nav nav-pills pull-right">
			<c:if test="${loginUser.userId=='admin' }">
				<input id="adminbtn" type="button" class="btn  btn-outline-info	" value="관리자페이지로">
			</c:if>
          </ul>
        </div>
      </div>
    </div>
  </div>
  
  	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>
  <script>
  var adminid
	$(function(){
		$('#adminbtn').click(function(){
	  		adminid = "${loginUser.userId}";
	  		if(adminid!="admin"){
	  			alert("부적절한 접근입니다!");
	  		}else{
	  			location.href="goadminpage.do?userId="+adminid;
	  		}
	  	
		});
	});
  	
  </script>
	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

	<script src="${path }/resources/js/bootstrap.min.js"></script>

	<script src="${path }/resources/js/jquery.slicknav.min.js"></script>

	<script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>

	<script src="${path }/resources/js/main.js"></script>

	<script>
	function getList(currentPage){

		var dsearchkey = $("#CatboardSearchkey").val();
		var dsearch = $("#CatboardSearchval").val();
		
		location.href="?currentPage=" + currentPage+"&csearchkey=" + csearchkey +"&csearch="+csearch ;
	}
	</script>
</body>


</html>