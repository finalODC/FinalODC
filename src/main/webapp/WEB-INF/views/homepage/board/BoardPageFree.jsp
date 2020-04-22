<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<c:set var="path" value="${pageContext.servletContext.contextPath}"
	scope="application" />



<link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${path}/resources/css/font-awesome.min.css" />
<link rel="stylesheet" href="${path}/resources/css/slicknav.min.css" />
<link rel="stylesheet"
	href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${path}/resources/css/style.css" />
<link rel="stylesheet" href="${path}/resources/css/stylne.css">
<!-- 폰트 아이콘 -->
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
	background: white;
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
					<li><a href="#">병원찾기</a></li>
					<li><a href="cuponcheck.html">커뮤니티</a>
						<ul class="sub-menu">
							<li><a href="about-us.html">공지사항</a></li>
							<li><a href="search-result.html">자유게시판</a></li>
							<li><a href="single-property.html">TIP</a></li>
						</ul></li>
					<li><a href="#">마이페이지</a>
						<ul class="sub-menu">
							<li><a href="about-us.html">정보수정</a></li>
							<li><a href="search-result.html">반려동물 관리</a></li>
							<li><a href="single-property.html"></a></li>
						</ul></li>
					<!-- <li><a href="#"></a>
          <ul class="sub-menu">
            <li><a href="about-us.html">About Us</a></li>
            <li><a href="search-result.html">Search Result</a></li>
            <li><a href="single-property.html">Property</a></li>
          </ul>
        </li>
        <li><a href="news.html">News</a></li> -->
					<!-- <li><a href="#">로그인</a></li> -->
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
						<A href="Fblist.bo">
						<!-- Fblist.bo로 매핑된 메소드를 호출하여 값을 불러오고 페이지로 이동한다. -->
						
							<h4 style="height: 40px;" align="">자유 게시판</h4>
						</A>
						<br>
						<br>

						<a>
							<h4>정보 공유 게시판</h4>
						</a>
						<hr style="border: solid 2px rgba(0, 36, 134, 0.616); width: 200px;" align="left">

						<a href="DBlist.bo">
							<h5>
								<i class="fas fa-dog">&nbsp;</i>강아지
								게시판&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i
									class="fas fa-paw"></i>
							</h5>
						</a>
						<br>
						<a href="ohdogcat_CatBoardPage.html">
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

				<h2>&nbsp;&nbsp;&nbsp;Free board</h2>

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
							<c:forEach var="fb" items="${list}">


								<tr class="trc">

									<td>${fb.fbId}</td>
									<td>${fb.fbTitle } <%-- <c:url var="FBviewDetail" value="FBviewDetail.bo">
										
										<c:param name="fbId" value="${fb.fbTitle}"/>
										<c:param name="currentPage" value="${pi.currentPage }"/>
										</c:url>
										
										<a href="${FBviewDetail}">${fb.fbTitle}</a> --%>
									</td>
									<td>${fb.fbWriter }</td>
									<td>${fb.fbCreatedate }</td>
									<td>${fb.fbCount }</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
					<script>
				
						$('.trc').click(function(){
							var aa = $(this).find("td:eq(0)").text()
							/* console.log(aa); */
							location.href = 'FBviewDetail.bo?fbId='+aa; 
						});
				
					</script>

					<!---------------------- 페이징 처리  ------------------------->

					<div class="btn-toolbar d-flex justify-content-center">

						<!-- 이전버튼 -->
						<div class="btn-group">
						
							<c:if test="${pi.currentPage eq 1 }">
								<input type="button" value="[이전]" class="btn btn-secondary" />
							</c:if>

							<c:if test="${pi.currentPage ne 1 }">
								<c:url var="before" value="Fblist.bo">
									<c:param name="currentPage" value="${ pi.currentPage -1 }" />
								</c:url>
								<input type="button" class="btn btn-secondary" value="[이전]"
									href="${befor}" />
							</c:if>
						</div>



						<!-- 페이지 숫자버튼 -->
						<c:forEach var="p" begin="${ pi.startPage }" end="${pi.endPage }">

							<div class="btn-group" align="center">

								<c:if test="${ p eq pi.currentPage }">
									<button class="btn btn-secondary" href="${ pagination }">${ p }</button>
								</c:if>
								
								
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="pagination" value="Fblist.bo">
										<c:param name="currentPage" value="${ p }" />
									</c:url>
									<button class="btn btn-secondary" href="${ pagination }">${ p }</button>
								</c:if>
							</div>

						</c:forEach>


						<!-- 다음으로 가는 버튼  -->
						<div class="btn-group">
							<c:if test="${pi.currentPage eq pi.maxPage }">
								<input type="button" class="btn btn-secondary" value="다음" />
							</c:if>
							<c:if test="${ pi.currentPage ne pi.maxPage }">
								<c:url var="after" value="Fblist.bo">
									<c:param name="currentPage" value="${pi.currentPage +1 }" />
								</c:url>
								<input value="[다음]" type="button" href="${ after }"
									class="btn btn-secondary" />
							</c:if>
						</div>
					</div>



					<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    검색 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
					<br>

					<div align="center" id="SearchDiv">
						<table border="1">
							<tr>
								<td>
								
								<select style="border: 0px;" id="boardSearchkey">
										<option value="boardtitle">제목</option>
										<option value="boardWriter">작성자</option>
										
								</select>
								
								</td>
								
								<td>
								
								<input id="boardSearchval" type="text" style="border: 0px;" placeholder="검색어를 입력하세요">
								
								</td>
								
								<td>
									<button id="searchBtn" style="border: 0px; background: white;">
										&nbsp;<i class="fas fa-search"></i>
										
									</button>
								</td>
							</tr>
						</table>

					</div>
					<br> <br>

					 <%-- <c:if test="${!empty loginUser.userId }"> --%> 
						<button onclick="location.href='FBinsertView.bo'" align="right">글쓰기</button>
					 <%-- </c:if>  --%>
				</div>

			</div>

		</div>
	</div>





	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="copy">© Adoptly</div>
				</div>
				<div class="col-md-10">
					<ul class="nav nav-pills pull-right">
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

	<script src="${path }/resources/js/bootstrap.min.js"></script>

	<script src="${path }/resources/js/jquery.slicknav.min.js"></script>

	<script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>

	<script src="${path }/resources/js/main.js"></script>

	<script>
	
	var key="${boardSearchkey}";
	var val="${boardSearchval}";
	
	var page = 1;
	
	$(function(){
		
		getList()
		
		$('#searchBtn').click(function(){
			
			if(typeof $('#searchval').val() == 'undefined'){
				key="${boardSearchkey}";
				val="${boardSearchval}";
			}else{
				key="${boardSearchkey}";
				val="${boardSearchval}";
				page=1;
			}
			
			getList();
		});
	});
	
	function getList(){
		
		
		
<%-- 		$.ajax({
			url:"boardSearchList.bo",
			type:"post",
			data:{boardSearchkey:key,
				boardSearchval:val,
				currentPage:page},
				success:function(data){
					
					var $tbody = $('#tableArea');
					$tbody.html("");
					
					pageInfo();
					
					$.each(data,function(index,value){
						
						
						$
						<tbody id="tableArea">
						<c:forEach var="fb" items="${list}">


							<tr class="trc">

								<td>${fb.fbId}</td>
								<td>${fb.fbTitle } <c:url var="FBviewDetail" value="FBviewDetail.bo">
									
									<c:param name="fbId" value="${fb.fbTitle}"/>
									<c:param name="currentPage" value="${pi.currentPage }"/>
									</c:url>
									
									<a href="${FBviewDetail}">${fb.fbTitle}</a>
								</td>
								<td>${fb.fbWriter }</td>
								<td>${fb.fbCreatedate }</td>
								<td>${fb.fbCount }</td>

							</tr>
						</c:forEach>
					</tbody>
						$tr = $("<tr class='trc'>");
						$td1 = $("<td>${fb.fbId}");
						$td2 = $("")
						
						
					});
				}
		
		}); --%>
		
	}

	</script>
</body>


</html>