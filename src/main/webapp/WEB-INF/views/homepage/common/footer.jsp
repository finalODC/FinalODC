<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
				<input id="adminbtn2" type="button" class="btn  btn-outline-info" value="진료페이지로">
          </ul>
        </div>
      </div>
    </div>
  </div>
  <c:set var="test" value="${loginUser}" />
  
  	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>
  <script>
  var adminid
	$(function(){
		$('#adminbtn2').hide();
		
		$('#adminbtn').click(function(){
	  		adminid = "${loginUser.userId}";
	  		if(adminid!="admin"){
	  			alert("부적절한 접근입니다!");
	  		}else{
	  			location.href="goadminpage.do?userId="+adminid;
	  		}
	  	
		});
		
		var test = "${test}";
		
		
	  	if(test.indexOf("Doctor")!=-1){
	  		console.log("asd");
	  		$('#adminbtn2').show();
		  	$('#adminbtn2').click(function(){
		  		location.href="chart.ho";
		  	});
	  	}
		
	});
  	
  </script>

</body>
</html>