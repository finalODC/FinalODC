<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom fonts for this template-->
<c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
  <link href="${path }/resources/css/manager/all.min.css" rel="stylesheet" type="text/css">
  <link href="${path }/resources/css/manager/css" rel="stylesheet">
  <link href="${path }/resources/css/manager/1_content" rel="stylesheet">


  <!-- Custom styles for this template-->
  <link href="${path }/resources/css/manager/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
    integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="${path }/resources/js/manager/jquery.min.js"></script>
      <script src="${path }/resources/js/manager/bootstrap.bundle.min.js"></script>
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - 로고 -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="mainpage.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-home"></i>
        </div>
        <div class="sidebar-brand-text mx-3"></div>
      </a>


      <!-- 메뉴 -->
      <div class="sidebar-heading">
        	메뉴
      </div>


      <!-- Divider -->
      <hr class="sidebar-divider">



      <!-- Nav Item - 품의 관리 -->
      <li class="nav-item">
        <a class="nav-link" href="chart.do">
          <i class="fa fa-calendar-alt fa-2x"></i>
          <span>진료기록 조회 / 처방</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="">
          <i class="fa fa-calendar-alt fa-2x"></i>
          <span>내 병원 관리</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

    </ul>
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
          <!-- 컨텐츠 머리글 -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">진료기록 조회 / 처방</h1>
          </div>

  

            <!-- Content Row -->
            <div class="row">

              <!-- Content Column -->
              <div class="col-lg-6 mb-4">

                <!--동물 정보! -->
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Information</h6>
                  </div>
                  <div class="card-body">
                    <table border="1" class="table" style="font-size:12px;">
                      <tr style="font-weight: bolder;">
                        <td>이름</td>
                        <td>종</td>
                        <td>주인</td>
                        <td>중성화</td>

                      </tr>

                      <tr>
                        <td>복실이</td>
                        <td>말티즈
                        </td>
                        <td>김복순</td>
                        <td>O</td>
                      </tr>
                      <tr>
                        <td>출생연월</td>
                        <td>나이</td>
                        <td>몸무게(전)</td>
                        <td>몸무게(후)</td>
                      </tr>
                      <tr>
                        <td><input type="date" value="2020-02-02" readonly></td>
                        <td>1개월</td>
                        <td>5.0kg</td>
                        <td><input type="number" style="text-align: right; width:50px;"><span>kg</span></td>
                      </tr>
                    </table>
                  </div><br>
                </div>



                <!--동물 정보! -->
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">특이사항</h6>
                  </div>
                  <div align="center" class="card-body">
                    <table border="1" class="characterTable" width="100%">
                      <thead>
                        <tr>
                          <th>특이사항</th>
                          <th><input type="text" style="width:100%"></th>
                          <th id="insertCharacter">입력</th>
                        </tr>
                        <tr>
                          <th>날짜</th>
                          <th>상세내역</th>
                          <th>의사</th>
                        </tr>
                      <tbody>
                        <tr>
                          <td>
                            202003030
                          </td>
                          <td>수술함</td>
                          <td>나박사</td>
                        </tr>

                        <tr>
                          <td>
                            202003030
                          </td>
                          <td>수술함</td>
                          <td>나박사</td>
                        </tr>

                      </tbody>

                      </thead>

                    </table>
                    
                    <br>
                    <nav aria-label="Page navigation example">
                      <ul class="pagination pagination-sm justify-content-center">
                        <li class="page-item disabled">
                          <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                          </a>
                        </li>
                        <li class="page-item disabled"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                          </a>
                        </li>
                      </ul>
                    </nav>
                  </div><br>
                </div>


              </div>


              <div class="col-lg-6 mb-4">

                <h2>진단/처방</h2>
                <form action="/action_page.php">
                  <div class="form-group">
                    <label for="comment">Comment:</label>
                    <textarea class="form-control" rows="5" id="comment" name="text"></textarea>
                  </div>
                  <button type="submit" class="btn btn-primary">저장하기</button>
                </form>

                <br><br>



                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">진료 기록</h6>
                  </div>
                  <div class="card-body">

                    <div id="recode" align="center">
                      <fieldset style="border-radius: 10%; border :1px solid balck; ">
                        <table border="1" id="fod" class="table table-hover" style="font-size: 12px;">
                          <thead>
                            <tr>
                              <td>번호</td>
                              <td>진료번호</td>
                              <td>진료날짜</td>
                              <td>진료내용</td>
                              <td>진료병원</td>
                              <td>진료의사</td>
                            </tr>
                          </thead>
                          <tbody id="ddd">
                            <tr>
                              <td>1</td>
                              <td>0303001</td>
                              <td>2020-03-03</td>
                              <td>수술</td>
                              <td>XX동물병원</td>
                              <td>그러게</td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>0303001</td>
                              <td>2020-03-03</td>
                              <td>수술</td>
                              <td>XX동물병원</td>
                              <td>그러게</td>
                            </tr>
                            <tr>
                              <td>3</td>
                              <td>0303001</td>
                              <td>2020-03-03</td>
                              <td>수술</td>
                              <td>XX동물병원</td>
                              <td>그러게</td>
                            </tr>
                            <tr>
                              <td>4</td>
                              <td>0303001</td>
                              <td>2020-03-03</td>
                              <td>수술</td>
                              <td>XX동물병원</td>
                              <td>그러게</td>
                            </tr>

                          </tbody>


                        </table>
                      </fieldset>
                      <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-sm justify-content-center">
                          <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span>
                              <span class="sr-only">Previous</span>
                            </a>
                          </li>
                          <li class="page-item disabled"><a class="page-link" href="#">1</a></li>
                          <li class="page-item"><a class="page-link" href="#">2</a></li>
                          <li class="page-item"><a class="page-link" href="#">3</a></li>
                          <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                              <span aria-hidden="true">&raquo;</span>
                              <span class="sr-only">Next</span>
                            </a>
                          </li>
                        </ul>
                      </nav>
                    </div>

                  </div>

                  <div class="col-lg-6 mb-4">

                    <!-- Approach -->


                    <!-- 진료기록 클릭 스크립트 -->
                    <script>
                      $(function () {
                        $("#ddd td").click(function () {
                          $(this).parent().siblings(".plus").css("display", "none");
                          var $tr = $("<tr class='plus'>");
                          var $td = $("<td colspan='6'>");
                          var $div = $("<div>");
                          $div.html("dsadadadas<br> dsadsadasda<br>")
                          $td.append($div);
                          $tr.append($td);

                          $(this).parent("tr").after($tr);
                        })
                      });


                      $(function () {
                        $("#ddd td").click(function () {
                          $(this).parent().siblings(".plus").css("display", "none");
                          var $tr = $("<tr class='plus'>");
                          var $td = $("<td colspan='6'>");
                          var $div = $("<div>");
                          $div.html("dsadadadas<br> dsadsadasda<br>")
                          $td.append($div);
                          $tr.append($td);

                          $(this).parent("tr").after($tr);
                        })
                      });

                    </script>



                  </div>
                </div>

              </div>
            </div>





     
          <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->


        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2019</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->

      </div>
      <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->


  




</body>
</html>