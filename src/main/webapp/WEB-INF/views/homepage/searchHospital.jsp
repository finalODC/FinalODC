<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>메인페이지</title>
	<meta charset="UTF-8">
	<meta name="description" content="Real estate HTML Template">
	<meta name="keywords" content="real estate, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	
</head>
<body>

	<jsp:include page="hospitalInclude.jsp"/>

	<div class="container" style="padding-top: 150px;">
	
		<br>
		<div class="d-flex justify-content-center">
			<div class="input-group form-group"  style="width: 50%;">
			  <input type="text" class="form-control" style="height: 40px; font-size: 20px;" placeholder="병원 이름을 검색해보세요">
			  <div class="input-group-prepend">
				<span class="input-group-text" style="font-size: 20px;"><i class="fas fa-search"></i></span>
			  </div>  
			</div>
		  </div>
		  	<br><br>
		<div class="row">

			<div class="col-lg-4 col-md-4" style="margin-bottom: 10px;">
				<a>
				<div class="card" style="width:400px">
					<img class="card-img-top" src="https://imagescdn.gettyimagesbank.com/500/14/141/351/0/510351863.jpg" alt="Card image" style="width:100%">
					<div class="card-body">
					  <h4 class="card-title">성모병원</h4>
					  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					</div>
				  </div>
				  </a>
			</div>

			<div class="col-lg-4 col-md-4">
				<div class="card" style="width:400px">
					<img class="card-img-top" src="https://imagescdn.gettyimagesbank.com/500/13/141/647/0/174364798.jpg" alt="Card image" style="width:100%">
					<div class="card-body">
					  <h4 class="card-title">아주대병원</h4>
					  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					</div>
				  </div>
			</div>

			<div class="col-lg-4 col-md-4">
				<div class="card" style="width:400px">
					<img class="card-img-top" src="https://imagescdn.gettyimagesbank.com/500/18/141/712/0/993985508.jpg" alt="Card image" style="width:100%">
					<div class="card-body">
					  <h4 class="card-title">연세세브란스</h4>
					  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					</div>
				  </div>
			</div>
			<div class="col-lg-4 col-md-4" style="margin-bottom: 10px;">
				<div class="card" style="width:400px">
					<img class="card-img-top" src="https://upload.wikimedia.org/wikipedia/ko/thumb/e/e1/%EC%84%9C%EC%9A%B8%EA%B2%BD%EC%B0%B0%EB%B3%91%EC%9B%90.jpg/800px-%EC%84%9C%EC%9A%B8%EA%B2%BD%EC%B0%B0%EB%B3%91%EC%9B%90.jpg" alt="Card image" style="width:100%">
					<div class="card-body">
					  <h4 class="card-title">한빛병원</h4>
					  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					</div>
				  </div>
			</div>
			<div class="col-lg-4 col-md-4">
				<div class="card" style="width:400px">
					<img class="card-img-top" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Villahermosa_Hospital_Mujer.jpg/800px-Villahermosa_Hospital_Mujer.jpg" alt="Card image" style="width:100%">
					<div class="card-body">
					  <h4 class="card-title">OOO병원</h4>
					  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					</div>
				  </div>
			</div>
			<div class="col-lg-4 col-md-4">
				<div class="card" style="width:400px">
					<img class="card-img-top" src="https://upload.wikimedia.org/wikipedia/ko/thumb/e/e1/%EC%84%9C%EC%9A%B8%EA%B2%BD%EC%B0%B0%EB%B3%91%EC%9B%90.jpg/800px-%EC%84%9C%EC%9A%B8%EA%B2%BD%EC%B0%B0%EB%B3%91%EC%9B%90.jpg" alt="Card image" style="width:100%">
					<div class="card-body">
					  <h4 class="card-title">우리병원</h4>
					  <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> 권한은 전적으로 나한테 있습니다.

		</div>
	</footer>
	<!-- Footer Section end -->
	
	<!--====== Javascripts & Jquery ======-->
	<script src="${path }/js/jquery-3.2.1.min.js"></script>
	<script src="${path }/js/bootstrap.min.js"></script>
	<script src="${path }/js/jquery.slicknav.min.js"></script>
	<script src="${path }/js/jquery.magnific-popup.min.js"></script>
	<script src="${path }/js/main.js"></script>


	</body>
</html>