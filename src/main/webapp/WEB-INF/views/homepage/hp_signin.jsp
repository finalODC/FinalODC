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
	<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<body>
	
	
	<div class="wrapper">
	

        
        
        
        <div class="container">
			<div >
            <div class="loginlogo"><h1 class="loginArea">회원가입</h1></div>
		<div class="d-flex justify-content-center " style="background-color: #f5f6f7d0; height: 1500px; ">
			<div class="card" style="width: 600px; margin: 50px;">
			<div class="card-body" align="center">
			 <form action="hInsert.do" method="post" onsubmit="return check();">  
				     <h5>병원명</h5>
					<div class="inputgroup">
						<input type="text" id="hName" name ="hName" class="input_area" placeholder="병원이름을 입력해주세요.">
                    </div>
                    <h5>사업자번호</h5>
					<div class="inputgroup">
						<input type="text" id="hCode" name="hCode" class="input_area" placeholder="사업자번호를 입력해주세요.('-'제외)">
                    </div>
                    <span><input type="button" value="사업자번호 확인" class="btn check_btn" id="checkbusiness"></span>
                    <h5>아이디</h5><span id="idview"></span>
					<div class="inputgroup">
						<input type="text" name="userId" id="userId" class="input_area" placeholder="아이디를 입력해주세요.">
						
                    </div>
                    <h5>비밀번호</h5><span>특수문자/문자/숫자 포함 형태의 8~15자리</span>
					<div class="inputgroup">
						<input type="password" name="userPwd" id="pwd" class="input_area" placeholder="비밀번호를 입력해주세요.">
                    </div>
                    <h5>비밀번호 확인</h5>
					<div class="inputgroup">
						<input type="password" id="pwd2" class="input_area" placeholder="비밀번호를 입력해주세요.">
                    </div>
                    
                      <h5>이메일</h5>
                    <div class="inputgroup">
                        <input type="text" class="input_area" placeholder="이메일을 입력해주세요" id="hMail" name="hEmail">
                                    
                    </div>
                    <input id="email" type="button" value="이메일확인" class="btn check_btn"> 
                    <div id="emailcheck" class="row" style="display: none;">
                        <div class="inputgroup" style="width: 69%; margin-right: 2%;">
                            <input type="text" id="fillCode"class="input_area" placeholder="">
                        </div>
                        <input type="button" value="번호확인" class="btn check_btn" style="width: 29%; margin-top: 10px;" id="codeChk">
                    </div>
										
                    <h5>전화번호</h5>
                    <div class="inputgroup">
						<input type="text" class="input_area" name="hPhone" placeholder="전화번호를 입력해주세요(-빼고)">
                    </div>
                    <h5>주소</h5>
                    <div class="row">
                        <div class="inputgroup" style="width: 49%; margin-right: 2%;" >
                            <input type="text" class="input_area" placeholder="" id="add1" name="add1" readonly>
                        </div>
                        
                        <div class="inputgroup" style="width: 49%;">
                            <input type="text" class="input_area" placeholder=""id="add2" name="add2" readonly>
                        </div>
                        <div class="inputgroup" style="width: 69%; margin-right: 2%;">
                            <input type="text" class="input_area" placeholder=""id="add3" name="add3">
                        </div>
                        <input type="button" value="주소찾기" id="searchAdd" onclick="sAddr();" class="btn check_btn" style="width: 29%; margin-top: 10px;">
                    </div>

                    <div class="button-area d-flex justify-content-center ">
						<input type="submit" value="회원가입" class="btn login_btn" id="QWER">						
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

            function chk(bl){
            	var pro=bl;
            	
            	this.getProBl= function(){
            		return this.pro;
            		
            	}
            	
            	this.setProBl= function(bl){
            		this.pro = bl;
            	}
            }
            
            var bisichk = new chk(false);
            var idchk = new chk(false);
            var emchk = new chk(false);
            
            $("#hCode").on("propertychange change keyup paste input",function(){
            	bisichk.setProBl(false);
            	
            });
            
           $("#checkbusiness").click(function(){
            		var hCode = $("#hCode").val();
            		var regnum = /^[0-9]+$/
            		if(!regnum.test(hCode)){
            			alert("숫자만 넣어주세요");
    					$("#hCode").select();
            			return false;
            		}
            		if( hCode != "" &&  $("#hName").val()!=""){
            		$.ajax({
            			url:"hBusiness.do",
            			type:"get",
            			data:{ hCode:hCode},
            			success:function(result){
            			
            				if(result=="ok"){
            					alert("가입가능한 번호입니다.");
            					bisichk.setProBl(true);
            				} else{
            					alert("이미 가입된 번호입니다.");
            					$("#hCode").select();
            				}
	
            			},error:function(){
            				console.log("에러")
            			}
            		});
            		}else{
            			alert("병원명 또는 사업자번호가 비어있습니다.")
            			$("#hName").select();
            		}
            	})
            	
            	 $("#idview").text("아이디는 영문 소문자 와 숫자만 가능합니다.")
            	
            	//유저이름
               $("#userId").on("propertychange change keyup paste input",function(){
            	   var id= $(this).val();
            	   idchk.setProBl(false);
            	    var regid  =/^[a-z0-9]+$/;
            	   if(id.length >0 && id.length <6){
            		   $("#idview").text("아이디가 짧습니다.").css("color","tomato");
            	   }
            	 	if(id.length >5){
					
            	 	 if(!regid.test(id)){

            	 		$("#idview").text("사용불가능한 아이디입니다.").css("color","tomato");
            	 	}else{
            	 		$.ajax({
            	 			url:"hIdCheck.do",
            	 			type:"get",
            	 			data:{userId:id},
            	 			success:function(result){
            	 				console.log(result);
            	 				if(result ==0 ){
            	 					idchk.setProBl(true);
            	 					  $("#idview").text("가입가능한 아이디입니다.").css("color","green");
            	 					//아이디 가능 체크
            	 				}else{
            	 					$("#idview").text("중복된 아이디입니다.").css("color","tomato");
            	 				}
            	 			},
            	 			error:function(){
            	 				alert("에러")
            	 			}
            	 		});
            	 	}
            	 	}
               });
            //이메일 인증
            
                  $("#hMail").on("propertychange change keyup paste input",function(){
                	  emchk.setProBl(false);
            	
            });
            
                $('#email').click(function(){
                	//이메일 확인
                	 var email=$("#hMail").val();
     			  	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
     			  	if(!regExp.test(email)){
     			  		alert('메일형식을 확인해주세요');
     			  		$("#hMail").select();
     			  		return false;
     			  		
     			  	}
                	$.ajax({
                		url:"checkHemail.do",
                		
                		type:"get",
                		data:{email:email},
                		success:function(data){
                			if(data==0){
                				 $('#emailcheck').css('display','');
                                 
                                 $.ajax({
                         			url:"sendCode.do",
                         			type:"post",
                         			data:{email:email},
                         			success:function(data){
                         				alert("메일을 보냈습니다.");
                         				$("#codeChk").click(function(){
                         					$.ajax({
                         						url:"codeCheck.do",
                         						type:"post",
                         						data:{code:$("#fillCode").val()},
                         						success:function(result){                 
                         							if(result != ""){
                         								alert("확인완료");
                         								emchk.setProBl(true);
                         							}else{
                         								alert("코드를 다시 확인해주세요");
                         							}
                         							
                         						},error:function(){
                         							console.log("이메일코드체크에러")
                         						}
                         						
                         					})
                         				})
                         				
                         				
                         			},error:function(){
                         				console.log("이메일코드에러")
                         			}
                         			
                         		})
                				
                			}else{
                				alert("이메일이 존재합니다.")
                			}
                			
                		},
                		error:function(){
                			console.log("이메일 체크 오류")
                		}
                		
                	});
             
                   
                });
            
            	//주소 api
           	function sAddr(){
           	 new daum.Postcode({
         		  oncomplete: function(data) {
         			  console.log(data)
              		$("#add1").val(data.zonecode);
         			$("#add2").val(data.address);
          			 } 
      			 }).open();
            	}
            	
         /*   $("#QWER").click(function(){
        	  console.log(!bisichk.getProBl()&&bisichk.getProBl()!="undefined");
        	  console.log(bisichk.getProBl());
        	  console.log(idchk.getProBl());
        	  console.log(emchk.getProBl());
        	  
           })
            	 */
       		
            function check(){
       
            	//특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
            	var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

            	if(!regex.test($("#pwd").val())){
            		alert("비밀 번호 형식이 다릅니다.")
            		$("pwd").focus();
            
            		return false;
            	}
            	
            	if($("#pwd").val() !=$("#pwd2").val()){
            		alert("비밀번호가 다릅니다.")
            		$("#pwd").select();
            	
            		return false;
            	}
            	 if(!bisichk.getProBl()&&bisichk.getProBl()!="undefined"){
            		alert("병원명과 사업자번호를 확인해주세요");
            		$("#hCode").select();
            
            		return false;
            	} 
            	
            	if(!idchk.getProBl()&&bisichk.getProBl()!="undefined"){
            		alert("아이디를 확인해주세요.")
            		$("#userId").select();
            	
            		return false;
            	}
            	
            	if(!emchk.getProBl()&&bisichk.getProBl()!="undefined"){
            		alert("이메일 인증을 진행해주세요.")
            		$("#hMail").select();
            	
            		return false;
            	}
            	
            	if($("#add1").val()==""){
            		alert("주소를 입력해주세요");
            	
            		return false
            	}
            
            	
            	return true;
            }
         
            	
            </script>
            
            

</body>
</html>