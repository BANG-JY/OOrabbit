<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%> 
<%@ page import="java.sql.*"%>

<!DOCTYPE>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./CSS/mystyle.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    .warp{
        position: absolute;
        left: 50%;
        top: 40%;
        transform: translate(-50%,-70%);

    }
</style>
<body>
    <!--로고-->
<div style="float: left;"><a href="shop.jsp"><img src="./IMG/dogshop.png" alt="logo" style="width:120px;height:100px;"> 
</a></div>
<div style="float: right;">
  <a href="./login.jsp" class="btn btn-outline-success">Sign in</a>
  <a href="./Join.jsp" class="btn btn-outline-success">Join Us</a>

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

<br>
<h4 style = "color:beige; text-align: center";><b>회원 탈퇴를 진행합니다.</b></h4>
<br>
<div class="warp">
<form action="delete_member.jsp" method="post">
<p><strong>비밀번호를 입력하세요.</strong>
<input type="password" id="checkpw" name="checkpw">
<input type="submit" value="확인">
</form>
</div>
</body>
</html>

