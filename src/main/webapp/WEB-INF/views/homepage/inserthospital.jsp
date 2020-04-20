<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ohdogcat.odc.homepage.member.model.vo.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>메인페이지</title>
<meta charset="UTF-8">
<c:set var="path" value="${pageContext.servletContext.contextPath }"
	scope="application" />

<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">

<!-- Stylesheets -->
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
<link rel="stylesheet" href="${ path }/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ path }/resources/css/style.css" />
<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

<style>
#aaa {
	margin-left: 10%;
}

#map {
	
}
.par { border: 1px solid #000; }
</style>
</head>
<body>
  <jsp:include page="common/menubar.jsp"/>

	
	<div class="container" style="padding-top: 150px;">
		<div class="row">


			<div class="col-lg-12 mb-4">

				<!-- Approach -->
				
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">동물 병원</h6>
					</div>
					<div class="sea"
						style="width: 100%; height: 452px; padding: 41px 35px;">
						<div class="par" style="width: 50%; height: 370px; float: left;">

							<!-- <div name="image" style="width: 100%; height: 400px; padding: 1%">이미지</div> -->

						</div>
						<div class="ssa" style="width: 50%; height: 370px;  float: right;">
						
							<div
								style="width: 100%; height: 370px; border: none; resize: none; text-align: center;" readonly>병원소개</div>

						</div>

					</div>
					<div style="width: 100%; border-top: 1px solid #ebebeb"></div>
					<div class="two" style="width: 100%; padding: 41px 35px;">
						<div id="map" style="width: 100%; height: 300px; margin-bottom: 20px"></div>

					<textarea
						style="width: 90%; height: 200px; border: none; resize: none;"
						readonly>상세주소</textarea>
					</div>
				</div>
			</div>
			

			<div class="col-lg-12 mb-4">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">의료진</h6>
					</div>
					<div class="card-columns" id="cccbody" style="column-count: 1;">
						
						<div class="card" style="width: 200px; height: auto; display: inline-block; margin: 41px 35px;" id="copy">
							<div class="card-body text-center">
								<img class="card-body text-center docImage" name="docImage" id="docImage" style="width: 90%; height: 200px;">
								<br> <br> 
								<input type="text" style="text-align: center; width: 100px; border: none;" placeholder="의사이름">
								<hr>
								<textarea style="width: 150px; height: 200px; border: none; resize: none;" placeholder="간단한 소개"></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-12 mb-4">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
					</div>
					
					<table align="center" width="510" border="1" cellspacing="0">
						<tr>
							<td>
								<textarea rows="3" cols="55" id="hrContent" style="resize: none; border:0;"></textarea>
							</td>
							<td>
								<button id="hrSubmit">등록하기</button>
							</td>
						</tr>
					</table>
					
					<table align="center" width="510" border="0" cellspacing="0" id="rtb">
						<thead>
							<tr>
								<td colspan="3"><b id="hrCount"></b></td>
							</tr>
							</thead>
						<tbody>

						</tbody>
					</table>
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
		</footer>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e673705a792756e975aa786d62b3807&libraries=services"></script>
				<script>
				
					var area="${hm.hAddress}";
					var name="${hm.hName}";

					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };  
					
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch(area, function(result, status) {
					
					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {
					
					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					
					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
					
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+name+'</div>'
					        });
					        infowindow.open(map, marker);
					
					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);
					    } 
					});    
					</script>
		
			
</body>
</html>
