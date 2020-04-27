<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<c:set var="path" value="${pageContext.servletContext.contextPath}"
	scope="application" />



  <link href="${path }/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/slicknav.min.css" rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="${path }/resources/css/style.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/stylne.css" rel='stylesheet' type='text/css'>

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

#comment {
	
}
</style>
</head>



<body>


	<jsp:include page="common/menubar.jsp"/>


	<div class="col-lg-12" style="background-image: url('${path }/resources/img/bg2.jpg'); height:243px; margin-top:109px; margin-bottom:50px;" align="center">
		<h1 style="padding-top: 80px">공지사항</h1>
		
	
	</div>
	
	<div class="container">
	<div class="col-lg-12">

		<div class="row">

			<div id="contents" class="col-lg-12">

				<div class="container" align="right">

					<table class="table table-bordered" align="center">
						<tr>
							<th colspan="3" align="left">&nbsp;<input
								type="text" id="nTitle" style="border: 0px;" readonly="readonly"></th>

						</tr>
						<tr>
							<td align="left">닉네임 &nbsp;|&nbsp;&nbsp; 관리자<input
								type="text" style="border: 0px; width: 100px;" readonly="readonly"></td>
							<td align="left">날짜 &nbsp;|&nbsp;&nbsp;<input
								type="text" id="nDate" style="border: 0px;" align="left" readonly="readonly"></td>
						</tr>

						<tr>
							<td colspan="3"><div id="nContent" style="min-height: 500px">
							</div></td>
						</tr>

					</table>

					<br> <br>
			  <div class="float-right">
                      <input class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="글목록" id="noticelist" class="pull-right"/>
              </div>


						<br>
						
					</div>


					<br> <Br> <br> <br> <Br> <Br> <Br>
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
	
	$(function(){

    	var nTitle = '${n.nTitle}';
    	var nContent = '${n.nContent}';
    	var nDate = '${n.nModifyDate}'
    	
        $('#nDate').val(nDate);
    	$('#nTitle').val(nTitle);
    	$('#nContent').html(nContent);
    	
    	$('#noticelist').click(function(){
    		location.href="homebacknotice.do"
    	});
	});
		
	</script>
</body>


</html>