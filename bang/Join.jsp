<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%	request.setCharacterEncoding("UTF-8");%> 
<%@ page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
   <title>Homepage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./CSS/mystyle.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="./jquery-3.6.0.min.js"></script>

  <script Language="javascript">
  
  
  function check_pw(){
    var pw = document.getElementById('pwd').value;
    if(pw.length < 6 || pw.length>16){
       window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
       document.getElementById('pwd').value='';
      }
      }

  </script>


</head>
<body>
 

<!-- jsp include 이용하면 로고/메뉴바/메인배너 싹다묶어서 코드정리 가능....-->
<!--로고-->
<div style="float: left;"><a href="shop.jsp"><img src="./IMG/dogshop.png" alt="logo" style="width:120px;height:100px;"> 
</a></div>
<div style="float: right;">
  <a href="./login.jsp" class="btn btn-outline-success">로그인</a>
  <a href="./Join.jsp" class="btn btn-outline-success">회원가입</a>

    <button type="button" class="btn btn-primary" data-bs-toggle="popover" title="Our SNS" data-bs-content="Some content inside the popover">
      follow us
    </button>
    
  <script>
  var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
  var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
  })
  </script>
  
  </div><div style="clear:both"></div>



<!--로고 끝-->

<!-- 메뉴바 -->
<t>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="javascript:void(0)">Menu</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Dog</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Cat</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Custumer Service</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">About Seller</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Search">
        <button class="btn btn-light" type="button">Search</button>
      </form>
    </div>
  </div>
</nav>
</t>




<!--폼작성-->
<div style="position: relative; top: 100px; left: 100px; float: left;">
   
<form method="get" action="./join_process.jsp" name ="JoinUs">
  <h2> 회원가입 </h2>
    <fieldset>
      <legend><h5>입력사항</h5></legend>
      <table >
    <label for="username">아이디: </label>
  
    <input type="Mtext" id="id" name="id" placeholder="아이디 입력";>
    <button type="button" onchange = "check_id()";>중복확인</button>


    <br><br>
    <label for="Mpwd" >비밀번호: </label>
    <input type="password" id="pwd" name="pwd" placeholder="비밀번호 입력" onchange="check_pw()" ;> <br>
    ★6글자 이상 13글자 이하로 입력해주세요★<br><br>
    
    <label for="Mname" ></label>성명: </label>
    <input type="text" name="name" id="name" placeholder="이름 입력"  size = 12px;><br><br>
  
    <label for="Mnum">주민번호: </label>
    <input type="text" id="numA" name="numA" size = 8px > -
    <input type="text" id="numB" name="numB" size = 8px > <br><br>



    <label for="Mtel">핸드폰: </label>
    <select id ="tel" name=tel>    
      <option value=010>010</option>
      <option value=011>011</option>
      <option value=070>017</option>
      <option value=017>019</option>
      <option value=017>070</option>
      </select> -
    <input type="text" id="telA" name="telA" size = 5px maxlength="9999"> -
    <input type="text" id="telB" name="telB" size = 5px maxlength="9999"><br><br>  





      <!--이메일 셋팅-->
    <label for="Memail">이메일: </label>
    <input type="text" id="emailA" name="emailA" placeholder="이메일 입력"onfocus="this.value='';" size=10px> @
       <select name="emailC" id="emailC" onchange="selectEmail()">  
    <option value="select">select me</option>
    <option value="naver.com" >naver.com</option>
    <option value="gmail.com">gmail.com</option>
    <option value="outlook.com">outlook.com</option>
    <option value="nate.com">nate.com</option>
    <option value="daum.com">daum.net</option>
       </select><br><br>
       <!--이메일 셋팅 끝.. 직접입력은 포기...-->

       
    <label for="gender">성별</label><br>
    <input type="radio" id="male" name="gender" value="male">남   
    <input type="radio" id="female" name="gender" value="female">여<br><br>
  

    <label for="Mhobby">취미</label><br>
    <input type="radio" id="study" name="hobby" value="study">공부   
    <input type="radio" id="game" name="hobby" value="game">게임
    <input type="radio" id="climb" name="hobby" value="climb">등산
    <input type="radio" id="fish" name="hobby" value="fish">낚시
    <input type="radio" id="shop" name="hobby" value="shop">쇼핑
    <br><br>

    <label for="Maboutme">자기소개:</label><br>
    <input type="text" id="aboutme" name="aboutme" style="width: 300px; height: 150px;" placeholder="하나둘셋"  onfocus="this.value=''";><br><br>
       
      </table>



  <input type="submit" value="회원가입">
  <input type="reset" value="초기화">    
    </fieldset>  
</form><br><br><br><br><br>
</div>

<!--옆에 광고-->
<br><br>
<div style="float: right; top: 100px;">
<img src="./IMG/AD.png" alt="AD">
</div>
