
<!DOCTYPE html>
<html lang="ko">
  
<head>

   <title>Homepage</title>
    <%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="./CSS/mystyle.css">
</head>



<body>

<!--로고-->
<div style="float: left;"><a href="shop.jsp"><img src="./IMG/dogshop.png" alt="logo" style="width:120px;height:100px;"> 
</a></div>
<div style="float: right;">
  <a href="./login.jsp" class="btn btn-outline-success">로그인</a>
  <a href="./Join.jsp" class="btn btn-outline-success">회원가입</a>

    <button type="button" class="btn btn-primary" data-bs-toggle="popover" title="Our SNS" data-bs-content= "">
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
    <a class="navbar-brand" href="javascript:void(0)"data-bs-toggle="offcanvas"data-bs-target="#demo">Menu
        </a>
        <div class="offcanvas offcanvas-start" id="demo">
      <div class="offcanvas-header">
        <h1 class="offcanvas-title">Heading</h1>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
      </div>
      <div class="offcanvas-body">
        <p>Some text lorem ipsum.</p>
        <p>Some text lorem ipsum.</p>
        <p>Some text lorem ipsum.</p>
        </div>
    </div>
    
   
     
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
<!-- 메뉴바 -->

<!-- 여기 배너 -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./IMG/DOG.jpg" alt="CAT" class="d-block" style="width:100%">
    </div>
    <div class="carousel-item">
      <img src="./IMG/CAT01.png" alt="corgi" class="d-block" style="width:100%">
    </div>
    <div class="carousel-item">
      <img src="./IMG/help.png" alt="bear" class="d-block" style="width:100%">
    </div>
</div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
  </div>

<div class=" bg-dark">
  <h3 class ="font-weight-bold  text-success">Merry Dogmas Sale!</h3>
     
  <h5 class="text-danger">Christmas sale going on for precious family Ongoing until December 24!</h5>
<h5 class="text-white">Click the button to check the event! <a href= "./CSbanner.html" button type="button" class="btn btn-success">Go to Sale</button> </a></h5>
</div>
  <!-- 크리스마스 어쩌구 끝 -->


<div class="container mt-1">
  <div class="col-sm-4" style="float :left">
  <div id="deal" class="carousel slide" data-bs-ride="carousel" >
  <div class="row">
     <h3>Today's deal</h3>
          <!--오늘의 특가-->
          <div class="carousel-indicators" >
          <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
          <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
          <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
        </div>
  
        <!-- 특가 슬라이드 -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./IMG/product/deal1.png" alt="deal1" class="d-block" style="width: 80%; height: 100%;"></div>
          <div class="carousel-item">
            <img src="./IMG/product/deal2.png" alt="deal2" class="d-block" style="width: 80%; height: 100%;">
          </div>
          <div class="carousel-item">
            <img src="./IMG/product/deal3.png" alt="deal3" class="d-block" style="width: 80%; height: 100%;">
          </div>
        </div>
        
        <!-- 슬라이드 아이콘 -->
        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>
      </div>
      </div>

 <div class="col-sm-4" style="float :right">
   <h3>Can I help you?</h3>
   <div class="list-group" style="width: 300px;">
    <a href="#" class="list-group-item">How to pickup</a>
    <a href="#" class="list-group-item">Ship to Home</a>
    <a href="#" class="list-group-item">Our Hoilyday</a>
    <a href="#" class="list-group-item">Treat Program </a>
    <a href="#" class="list-group-item">Our Poilcy</a>
    <a href="#" class="list-group-item">Help Center</a>
    <a href="#" class="list-group-item">About</a>
  </div>
          </div>
          <div class="col-sm-4" style="float :left">
            <h3>News</h3>        
              <iframe width="350" height="230" src="https://www.youtube.com/embed/soY1HbsJDz8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              <p>
              Show our Pet Training! </p>
            <p><a href="https://www.youtube.com/watch?v=soY1HbsJDz8" target="_blank"> Please follow and Subscribe.</a>.
            </p>
            
          </div>
        </div>
















</body>
</html>
