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



<body>
  <jsp:include page="common/menubar.jsp"/>

	
	<div class="container" style="margin-top: 130px ; height:756px">
	<hr>
	<h1>공지사항</h1>
	<hr>
		<div class="row">
		<div class="col-lg-12 col-md-12">
			<table class="table table-hover"style="font-size: 17px; border-bottom: 1px solid lightgray">
				 <thead>
                       <tr>
                           <th>번호</th>
                           <th>제목</th>
                           <th>작성자</th>
                           <th>날짜</th>
                           <th>조회수</th >
                       </tr>
                </thead>
                <tbody>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                       <tr>
                           <td>110</td>
                           <td>제목1번</td>
                           <td>작성자1</td>
                           <td>2020-01-16</td>
                           <td>1</td>
                       </tr>
                </tbody>
				
			</table>
			
			  <div id="pagination">
		 		<ul class="pagination justify-content-center ">
                <li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;&gt;</a></li>
              </ul> 
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