<!DOCTYPE html>
<html lang="ko">
<head>
   <title>login</title>
   <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./CSS/mystyle.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
 
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

<!--아래 로그인창 -->

<div class="container mt-3" style="top: 200px;">
  <form method="post" action="./login_process.jsp" name ="loginForm">
      <h2>로그인창</h2>
  <fieldset>
    <div class="mb-3 mt-3">
      <label for="id">ID:</label>
       <input type="text" class="form-control" id="id" placeholder="아이디 입력" name="id" style = "width: 200px">
    </div>
    <div class="mb-3">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="비밀번호 입력" name="pwd"  style = "width: 200px" >
    </div>
    
    <input type="submit" class="btn btn-primary" values="로그인"> 
    <a href = ./Join.jsp type="button" class="btn btn-primary">회원가입</a>
  </fieldset>
  </form>
</div>
</body>
