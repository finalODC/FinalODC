<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1">
	<title>로그인 테스트파일</title>
	
	<!-- 개별페이지 CSS -->

	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<!-- JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

	<!-- 폰트 -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">

	



  <style>


body,html{
	background: url("https://s3.amazonaws.com/codecademy-content/projects/adoptly/bg.jpg")
    no-repeat top center;
	position: relative;
}

body{
background-size: cover;
background-repeat: no-repeat;
letter-spacing: -0.2px;
font-family: 'Noto Sans KR', sans-serif;
}

.container{

align-content: center;
}

/* 이 영역에서 카드 사이즈 수정 */
.card{
height: 370px;
margin-top: auto;
margin-bottom: auto;
border:0;
background-color: initial;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.card-body{
	flex: 0 1 auto;
	padding:0;
}
.card-footer{
    font-size: 18px;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: white;
background-color: #30627e;
margin-top:50px;
width: 70%;
height: 50px;
outline: none !important;
}

.check_btn{
color: white;
background-color: #30627e;
margin-top:0px;
margin-bottom: 30px;
width: 70%;
height: 50px;
}

.check_btn:hover{
color: black;
background-color: white;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}

.input_area{
	width: 100%;
	height: 50px;
	border:0;
	padding-left: 50px;
}
.input-groupp{
	border-bottom: 1px solid #e5e5e5e5;
}
.inputgroup{

    border: 1px solid #a5a5a5;
    margin-bottom: 30px;
    margin-top: 10px;
}
::placeholder{
    color: #919191;}
  
.chkType2  {
	margin-top: 20px;
	position: relative; 
	overflow: hidden;
}
.linkBtn{
	position: absolute;
    bottom: 6px;
    right: 0;
    margin-top: 0;
} 
.chkType2 label {
	
    padding-left: 5px;
    display: inline-block;
    vertical-align: middle;
    min-height: 20px;
    line-height: 20px;
    
}


.ndd{
	height: 200px;
}

#footer {clear: both;margin: 0 auto;text-align: center;}
#footer ul {margin: 0 0 9px 0;}
#footer ul li{ font-size: 12px;position: relative;display: inline;padding: 0 3px 0 7px;white-space: nowrap;}
#footer * {font-size: 12px;font-style: normal;line-height: normal;margin: 0;padding: 0;list-style: none;color: #333;}

hr{margin-top:0; margin-bottom:0;}



.header{text-align: center; }
.loginArea{color: black; font-weight: 600;}
.chkinfo{position: relative;margin-bottom: 29px;}
.wrapper{position: relative; height: 100%;overflow: hidden;}

  
@media screen and (max-width: 758px) {body {font-size: 15px;}}  
@media screen and (max-width: 758px) {.loginArea{font-size: 33px;}}  
@media screen and (max-width: 758px){.container { width: auto;padding: 60px 3% 0px;}}
@media screen and (max-width: 758px){#footer { width: auto;}}

@media screen and (min-width: 768px){.container { width: auto;padding: 150px 3% ;}}
.loginlogo{text-align: center; margin-bottom: 50px;}

@media screen and (max-width: 758px){.login_btn{ height: 45px; margin-top: 5px;}}
@media (min-width: 1200px){.container{max-width: 1140px; height: 90%; padding: 180px;}}

 
 
 
 
 
  </style>

</head>


<body>
	
	
	<div class="wrapper">
	

        
        
        
        <div class="container">
			<div >
            <div class="loginlogo"><h1 class="loginArea">회원가입</h1></div>
		<div class="d-flex justify-content-center " style="background-color: #f5f6f7d0; height: 1500px; ">
			<div class="card" style="width: 600px; margin: 50px;">
			<div class="card-body" align="center">
				<form>
				     <h5>병원명</h5>
					<div class="inputgroup">
						<input type="text" id="hName" name ="hName" class="input_area" placeholder="병원이름을 입력해주세요.">
                    </div>
                    <h5>사업자번호</h5>
					<div class="inputgroup">
						<input type="text" id="hNumber"class="input_area" placeholder="사업자번호를 입력해주세요.">
                    </div>
                    <span><input type="button" value="사업자번호 확인" class="btn check_btn" id="checkbusiness"></span>
                    <h5>아이디</h5>
					<div class="inputgroup">
						<input type="text" name="userId" id="userId" class="input_area" placeholder="아이디를 입력해주세요.">
                    </div>
                    <h5>비밀번호</h5>
					<div class="inputgroup">
						<input type="password" name="userPwd" id="pwd" class="input_area" placeholder="비밀번호를 입력해주세요.">
                    </div>
                    <h5>비밀번호 확인</h5>
					<div class="inputgroup">
						<input type="password" id="pwd2" class="input_area" placeholder="비밀번호를 입력해주세요.">
                    </div>
										
                    <h5>전화번호</h5>
                    <div class="inputgroup">
						<input type="text" class="input_area" placeholder="전화번호를 입력해주세요(-빼고)">
                    </div>
                    <h5>주소</h5>
                    <div class="row">
                        <div class="inputgroup" style="width: 49%; margin-right: 2%;" >
                            <input type="text" class="input_area" placeholder="" id="add1" name="add1">
                        </div>
                        
                        <div class="inputgroup" style="width: 49%;">
                            <input type="text" class="input_area" placeholder=""id="add2" name="add2">
                        </div>
                        <div class="inputgroup" style="width: 69%; margin-right: 2%;">
                            <input type="text" class="input_area" placeholder=""id="add3" name="add3">
                        </div>
                        <input type="button" value="주소찾기" class="btn check_btn" style="width: 29%; margin-top: 10px;">
                    </div>

                    <div class="button-area d-flex justify-content-center ">
						<input type="submit" value="회원가입" class="btn login_btn">						
                    </div>
                </form>
			</div>
		
		</div>
	
</div>
</div>
</div>	

				<div id="footer">
				<ul>
					<li><a>이용약관</a></li>
					<li><strong><a>개인정보처리방침</a></strong></li>
					<li><a>책임의 한계와 법적고지</a></li>
					<li><a>회원정보 고객센터 </a></li>
				</ul>
				<address>
					<em class="copy">Copyright</em>
					<em class="u_cri">©</em>
					<a> Corp.</a>
					<span class="all_r">All Rights Reserved.</span>
				</address>
                </div>
            </div>

            <script>
               $("#userId").on("propertychange change keyup paste input",function(){
            	   var id= $(this).val();
            	 	if(id.length <=5){
            	 		console.log("아이디는 6글자 이상");
            	 	}else{
            	 		$.ajax({
            	 			url:"hIdCheck.do",
            	 			type:"get",
            	 			data:{userId:id},
            	 			sucesses:function(result){
            	 				if(result >0){
            	 					console.log("중복된 아이디가 있습니다.")
            	 				}else{
            	 					console.log("회원가입 가능")
            	 				}
            	 			},
            	 			error:function(){
            	 				alert("에러")
            	 			}
            	 		});
            	 	}
            	 	
            	  
            	   
               });
            </script>
</body>
</html>