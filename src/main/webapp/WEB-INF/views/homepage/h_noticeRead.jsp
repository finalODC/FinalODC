<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
  <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/stylne.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/slicknav.min.css" rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="${path }/resources/css/style.css" rel='stylesheet' type='text/css'>

  <style>


input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td{
 padding:13px
}

  </style>
</head>



<body >
  <jsp:include page="common/menubar.jsp"/>

	
	<div class="container" style="margin-top: 130px ; font-size: 17px;">
	<hr>
	<h1>공지사항</h1>
	<hr>
    	<div class="row">
      		<div class="col-lg-12 col-md-12 mx-auto">
              
                 <br><br>
                  <table class="table table-bordered" >
                        <tbody>
                                <tr>
                                    <th class="tatd">제목: </th>
                                    <th colspan="3">게시글 제목 영역입니다.</th>
                                </tr>
                                <tr>
                                    <th class="tatd">작성자: </th>
                                    <th>작성자 이름 입니다.</th>
                                    <th class="tatd">작성날짜 : </th>
                                    <th>2042-42-42</th>
                                </tr>
                                <tr>
                                    <th class="tatd">내용: </th>
                                    <td colspan="3">
                                    <div style="height: 500px;">
                                        게시글 내용 영역입니다.영역확이니ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ
                                    </div>
                                </td>
                                </tr>
                        </tbody>
                    </table>
			<br>
                <div class="float-right">
                  <input class="btn" style="background: #30627e; font-size:18px; color: white;" type="button" value="글목록" onclick="location='board.html'">
              </div>
      		</div>
  	</div>
	</div>
  
  <jsp:include page="common/footer.jsp"/>

  
  <script src="${path }/resources/js/jquery-3.2.1.min.js"></script>
  
  <script src="${path }/resources/js/bootstrap.min.js"></script>
  
  <script src="${path }/resources/js/jquery.slicknav.min.js"></script>
  
  <script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>
  
  <script src="${path }/resources/js/main.js"></script>
  



</body>


</html>