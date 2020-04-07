<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
  
 	<jsp:include page="managerInclude.jsp"/>

    <!-- End of Sidebar -->
 <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">



        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
  
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">신고
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <div class="table-responsive">
                
                <table class="table table-bordered table-hover" style="text-align: center;" id="dataTable" width="100%" cellspacing="0">
        
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="checkall">전체</th>
                      <th>번호</th>
                      <th>분류</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>작성날짜</th>
                      <th>신고횟수</th>
                      <th>관리</th>

                      
                    </tr>
                  </thead>
                 
                  <tbody id="tbody1">
                    <tr>
                      <td><input type="checkbox" class="check1"></td>
                      <td>게시글번호</td>
                      <td>분류</td>
                      <td>장나물</td>
                      <td>rlacl123@naver.com</td>
                      <td>20/03/25</td>
                      <td>10</td>
                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                     
                      
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="check1"></td>
                      <td>ehdclal11</td>
                      <td>분류</td>
                      <td>동백꽃</td>
                      <td>ehdclal@naver.com</td>
                      <td>20/03/25</td>
                      <td>10</td>
                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="check1"></td>
                      <td>vkrlacl</td>
                      <td>분류</td>
                      <td>파란이</td>
                      <td>vkrlacl@naver.com</td>
                      <td>20/03/25</td>
                      <td>10</td>
                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                     
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="check1"></td>
                      <td>Rkrenrl41</td>
                      <td>분류</td>
                      <td>신까치</td>
                      <td>Rkrenrl@naver.com</td>
                      <td>20/03/25</td>
                      <td>10</td>
                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="check1"></td>
                      <td>anfdut52</td>
                      <td>분류</td>
                      <td>신나래</td>
                      <td>anffut@naver.com</td>
                      <td>20/03/25</td>
                      <td>10</td>
                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                    </tr>
                   
                    

                  </tbody>
                </table>
                <div>
                <button id="write" style="float: right;" class="btn btn-primary">글쓰기</button>
                <button id="alldel" class="btn btn-danger">체크삭제</button>
         
              
              </div>
              <div> 	<ul class="pagination justify-content-center pagination-sm">
                <li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;&gt;</a></li>
              </ul></div>
              </div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->


      <!-- Bootstrap core JavaScript-->
      
      <script>
        $(function(){
          //공지작성
          $("#write").click(function(){
                location.href="noticewrite.html"
            })
            
         //보기
          //삭제
          $(".del").click(function(){
              var bid = $(this).parent("td").siblings("td:eq(1)").text();
              if(confirm(bid+"를 삭제하시겠습니까?")){
                location.href=""+bid;
              }
            })

          //읽기
          $("#tbody1 td").click(function(){  
            console.log($(this))
             if(!$(this).prop("cellIndex")==0){
              var id = $(this).parent("tr").find("td").eq("1").text();
              location.href="managerBoardread.html"
              console.log(id)
             } 
          })

          //체크용 arr
          var checkarr = [];
          //하나 체크
          $(".check1").on("change",function(){
             if(!$(this).prop("checked")&& $("#checkall").prop("checked")){
               $("#checkall").prop("checked","")
             }
            if($(this).prop("checked")=="false"){
              $(this).prop("checked","ture")
            }else if($(this).prop("checked") =="true"){
              $(this).prop("checked","")
            }
            var nid = $(this).parent("td").next().text();
            var a = checkarr.indexOf(nid);
             a==-1&& checkarr.push(nid)||checkarr.splice(a,1);
  
              console.log(checkarr);
             

          }
          );

          //전체체크

          $("#checkall").click(function(){
           var trf = $(this).prop("checked");
           checkarr=[]
           console.log(typeof(trf))
           
            if(trf==true){
              $(".check1").prop("checked","false");
              $(".check1").change();
             
              
            }else {
              $(".check1").prop("checked",false );
              console.log(checkarr)
            }
           
          });
        });

      </script>




</body>

</html>