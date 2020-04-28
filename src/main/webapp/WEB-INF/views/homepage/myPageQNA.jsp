<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<c:set var="path" value="${pageContext.servletContext.contextPath }"
	scope="application"></c:set>
<title>메인페이지</title>
<meta charset="UTF-8">
<meta name="description" content="Real estate HTML Template">
<meta name="keywords" content="real estate, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">


<!-- Stylesheets -->
<link rel="stylesheet" href="${path }/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${path }/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="${path }/resources/css/slicknav.min.css" />

<!-- Main Stylesheets -->

<link rel="stylesheet" href="${path }/resources/css/style.css" />


<style>
#aaa {
	margin-left: 10%;
}

.a hover{
	background:lightgray;
}


</style>


</head>

<body>

	<!-- Header Section -->
	<jsp:include page="common/menubar.jsp"/>
	<!-- Header Section end -->

	<div class="container" style="padding-top: 150px;">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<section class="page-section portfolio">
					<div id="right1" class=".float-right col-md-8 order-md-1 container">
						<div>
							<table align="center" width="420px">
								<tr style="text-align: center;">
									<td width="140px"><a href="mypageperson.do"
										class="btn btn-outline-primary">개인정보 변경</a></td>
									<td width="140px"><a href="mypagepet.do"
										class="btn btn-outline-primary">&nbsp;반려동물 정보&nbsp;</a></td>
									<td width="140px"><span class="btn btn-outline-info">&nbsp;문의하러가기&nbsp;</span></td>
								</tr>
							</table>
						</div>
						<br>



						<div class="col-md-8 order-md-1" id="aaa">
							<h4 class="mb-3">내 문의 현황</h4>
							<hr>

							<table id="qnaList" class="table"
								style="border-bottom: 1px solid #dee2e6; background: white;">
								<thead>
									<tr>
										<th align="">번호</th>
										<th align="">제목</th>
										<th align="">날짜</th>
										<th align="">답변상태</th>
										<th align="">파일첨부</th>
									</tr>
								</thead>
								<tbody>
									
								</tbody>
							</table>

							 
							<HR>
							<table align="center" id="detail" class="table table-bordered" style="border: 1px solid #dee2e6;">
								<tr align="center" valign="middle" style="border: 1px solid #dee2e6;">
									<td colspan="4"><h4 id="detailTitle"></h4></td>
								</tr>
								<tr align="right" style="border-left: none;">
									<th colspan="" style="text-align:left; border-left: 1px solid #dee2e6;">작성날짜</td>
									<td id="detailDate" colspan="" style="text-align: left; border-left: 1px solid #dee2e6;"></td>
									<th colspan="" style="text-align:left; border-left: 1px solid #dee2e6;">첨부파일</td>
									<td id="detailFile" colspan="" style="text-align: left; border-left: 1px solid #dee2e6;"></td>
								</tr>
								<tr>
									<td id="detailContent" colspan="4" >
									
									</td>
								</tr>
								<tr>
									<td style="color:red;" colspan="">관리자 답변</td>
								</tr>
								<tr>
									<td  colspan="4"><div id="answer">관리자답변입니다.</div></td>
								</tr>
								
								<%-- <tr>
									<td colspan="2" align="center">
										
										<c:url var="bupview" value="bupView.bo">
											<c:param name="bId" value=""/>
										</c:url>
										<c:url var="bdelete" value="bdelete.bo">
											<c:param name="bId" value=""/>
										</c:url>
										<c:url var="blist" value="blist.bo">
											<c:param name="currentPage" value=""/>
										</c:url>
										
										
											<a href="#">수정하기</a> &nbsp;
											<a href="#">삭제하기</a> &nbsp;
									</td>
								</tr> --%>
							</table>
							<hr>
							<h4 id="lee" class="mb-3">문의 작성하기 &nbsp;&nbsp;</h4>
							<hr>
							<form action="insertQNA.qn" method="POST" onsubmit="return add();" enctype="multipart/form-data">
								<input type="hidden" name="qWriter" value="${loginUser.userId }">
								<table id="nok" class="table table-bordered"
									style="background: white;">
									<tbody>
										<tr>
											<th class="tatd">카테고리:</th>
											<td><select>
													<option value="1">계정관련</option>
													<option value="2">게시판관련</option>
													<option value="3">기타</option>


											</select></td>
										</tr>
										<tr>
											<th class="tatd">제목:</th>
											<td><input type="text" placeholder="제목을 입력하세요. "
												name="qTitle" class="form-control" /></td>
										</tr>
										<th class="tatd">내용:</th>
										<td><textarea cols="10" rows="10"
												placeholder="내용을 입력하세요. " name="qContent" id="qContent"
												class="form-control " style="resize: none;"></textarea></td>
										</tr>

										<tr>
											<th class="tatd">첨부파일:</th>
											<td><span><input type="file" name="qFile"></span></td>
										</tr>

									</tbody>
								</table>


							<div class="float-right">
								<input id="nok2" class="btn btn-link"
									style="background: #002c5f; color: white;" type="submit"
									value="문의 등록" onclick="" class="pull-right" />
							</div>
							</form>
						</div>

					</div>
				</section>
				<script>
					
					function add(){
						var arr = $("#qContent").val().split("\n");
						for(var i = 0; i<arr.length;i++){
							arr[i] = arr[i]+"<br>";
						}
						$("#qContent").val(arr.join(""));
						
					}
				
				</script>
			</div>
		</div>
	</div>





	<!-- Footer Section -->
	<br>
	<hr>
	<br>
	<!-- Footer Section end -->
	

	<!--====== Javascripts & Jquery ======-->

	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

	<script src="${path }/resources/js/bootstrap.min.js"></script>

	<script src="${path }/resources/js/jquery.slicknav.min.js"></script>

	<script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>

	<script src="${path }/resources/js/main.js"></script>
	
	<script>
	//EL태그로 가져온건 String은 미리 선언을 해주고 가져오는 과정이 필요함 존나 예민함 씨발련
	
	var userId =  "${loginUser.userId}";
	var pageNo = ${currentPage};
		/* $(function(){
			alert("JQUERY 정삭작동");
			QnaList();
		}); */
		$(function(){
			getList(pageNo);
			
		});
		
		
		
		function getList(pageNo){
			
			$.ajax({
				url:"qlistView.qn",
				data:{currentPage : pageNo,userId:userId},
				dataType:"json",
				type:"post",
				success:function(data){
				   console.log(data);
				   
				   var listText="";
				   /* $tableBody=$("#qnaList tbody");
					$tableBody.html("");
					for(var i in data.list){
					
						var $tr=$("<tr class='qnatb'>");
						var $qId=$("<td>").text(data.list[i].qId);
						var $qTitle=$("<td>").text(data.list[i].qTitle);
						var $qWriter=$("<td>").text(data.list[i].qWriter);
						var $qDate=$("<td>").text(data.list[i].qDate);
						var $answer=$("<td>").text("답변완료");
						$tr.append($qId);
						$tr.append($qTitle);
						$tr.append($qWriter);
						$tr.append($qDate);
						$tr.append($answer);
						
						$tableBody.append($tr);
						
					} */
				   for(var i in data.list){
						listText +="<tr class='a'>";
						listText +="<td align='left'>"+ data.list[i].qId +"</td>";
						listText +="<td align='left'>";
						listText += data.list[i].qTitle;
						listText +="</td>";
						listText +="<td align='left'>"+ data.list[i].qDate + "</td>";
						if(data.list[i].qnaRe!=null){
							listText +="<td align='left'>답변완료</td>";	
						}else{
							listText +="<td align='left'>대기중</td>";
						}
						
						listText +="<td align='left'>";
						 if(data.list[i].qFile != null) {
							listText +=data.list[i].qFile;	
						}else {
							listText +="첨부파일없음";
						}
						
						listText +="</td>";
						listText +="</tr>";
						
						
						
				   }
				   
				   // 페이징 처리
				   listText += "<tr align='center' height='20'>";
				   listText += "<td colspan='6'>";
				   // [이전]
				   if(pageNo == 1){
					   listText +=	"[이전] &nbsp;";
				   }else{
					   listText += "<a href='javascript:void(0);' onclick='getList("+ (pageNo - 1) +")'>[이전]</a> &nbsp;";
				   }
					// 페이지 
					for(var p= data.pi.startPage; p<= data.pi.endPage; p++){
						if(p == data.pi.currentPage){
							listText += "<font color='red' size='4'><b>"+ [ p ] + "</b></font>";
						}else{
							listText +=  "<a href='javascript:void(0);' onclick='getList("+ p + ")'>" + p + "</a> &nbsp;";
						}						
					}
					// [다음]
					if(pageNo == data.pi.maxPage){
						listText += "[다음]";
					}else{
						listText += "<a href='javascript:void(0);' onclick='getList("+ (pageNo+1) +")'>[다음]</a>";
					}
					listText +="</td>";
					listText +="</tr>";
				   
				   $("#qnaList tbody").html(listText);
				   $(".a").click(function(){
						console.log($(this).find("td").first().text());
						var qId=$(this).find("td").first().text();
						for(var i=0;i<data.list.length;i++){
							if(data.list[i].qId==qId){
								var qna=data.list[i];
							}
						}
						
						
						console.log(qna);
						
						
						$("#detailTitle").text(qna.qTitle);
						$("#detailDate").text(qna.qDate);
						
						
						if(qna.qFile!=null){
							var fileN = qna.qFile.substring(12);
							$a = $("<a href='/odc/resources/qnaFiles/"+qna.qFile+"' download='"+fileN+"' >").text(fileN);
							$("#detailFile").append($a);
						}else{
							$("#detailFile").text("첨부파일없음");
						}
						$("#detailContent").html(qna.qContent);
						if(qna.qnaRe!=null){
							$("#answer").html(qna.qnaRe.aContent);
						}else{
							$("#answer").text("답변대기중입니다.");
							$("#answer").css("color","red");
						}
						if($("#detail").css("display")=="none"){
							$("#detail").show();
						}
						
					});
				},error:function(){
					console.log("전송실패");
				}
			});
		}
		/* function getDetail(qId){
			$.ajax({
				url:"qdetail.qn",
				data:{qId:qId},
				dataType:"json",
				type:"post",
				success:function(data){
					console.log(data);
				},error:function(){
					alert("실패");
				}
			});
		} */
		/* function QnaList(){
			$.ajax({
				url:"myqnalist.qn",
				dataType:"json",
				data:{userId:userId},
				success:function(data){
					console.log(data.length);
					$tableBody=$("#qnaList tbody");
					$tableBody.html("");
					for(var i in data){
						var $tr=$("<tr class='qnatb'>");
						var $qId=$("<td>").text(data[i].qId);
						var $qTitle=$("<td>").text(data[i].qTitle);
						var $qWriter=$("<td>").text(data[i].qWriter);
						var $qDate=$("<td>").text(data[i].qDate);
						var $answer=$("<td>").text("답변완료");
						$tr.append($qId);
						$tr.append($qTitle);
						$tr.append($qWriter);
						$tr.append($qDate);
						$tr.append($answer);
						
						$tableBody.append($tr);
						
					}
					$(".qnatb").on("click",function(){
						alert($(this).find("td").first().text());
						$
					});
				},error:function(){
					alert("data전송 실패");
				}
			});
		} */
		
		
	</script>
	
	<script>
		$(function(){
			$("#nok").hide();
			$("#nok2").hide();
			$("#detail").hide();
			
			$("#lee").on("click",function(){
				if($("#nok").css("display")=="none"){
					$("#nok").show();
					$("#nok2").show();
				}else{
					$("#nok").hide();
					$("#nok2").hide();
				}
			});
		});
	</script>
	<jsp:include page="common/footer.jsp"/>
</body>

</html>