<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%> 
<%@ page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE>
<html lang="ko">
<head>
   <title>login</title>
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./CSS/mystyle.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
  table, th, td {
    border:1px solid white;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
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


<%
String upid = request.getParameter("updateid");


String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://192.168.0.19:3306/shopdb";
String DB_Name = "newuser";
String DB_Pw = "Oracle1234@";

try {
Class.forName(driver);
} 
catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{
connection = DriverManager.getConnection(url, DB_Name, DB_Pw);
statement = connection.createStatement();
String sql ="select * from members where id= '" + upid  +"'";
resultSet = statement.executeQuery(sql);




while(resultSet.next()){


%>
<div style ="text-align:center;">
<h1>회원정보 수정</h1><br>
<form method="post" action="update_process.jsp">

<b>아이디(변경불가):</b>
    <input type="text" name="id" id="id" readonly value="<%=resultSet.getString("pdcode") %>">
    <br><br>

이름:
    <input type="text" name="category" value="<%=resultSet.getString("category") %>">
    <br>

<br>주민번호:
  <%
    String nb = resultSet.getString("num"); //주번 추출
    String n1 = nb.substring(0,6); //주번1
    String n2 = nb.substring(5); //주번2

  %>
    <input type="text" name="numA" value="<%=n1 %>" size = 8px> -
    <input type="text" name="numB" value="<%=n2 %>" size = 8px>
  <br>

<br>전화번호:
    <%
    String ph = resultSet.getString("phone"); //전번 추출
    String h1 = ph.substring(0,3); //전번1
    String h2 = ph.substring(3,7); //전번2
    String h3 = ph.substring(7); //전번3
  %>
    <select id ="tel" name=tel>    
    <option value=010 <% if(h1.equals("010")) out.print("selected"); %> >010</option>
    <option value=011 <% if(h1.equals("011")) out.print("selected"); %> >011</option>
    <option value=070 <% if(h1.equals("070")) out.print("selected"); %> >017</option>
    <option value=017 <% if(h1.equals("017")) out.print("selected"); %> >019</option>
    <option value=017 <% if(h1.equals("018")) out.print("selected"); %> >070</option>
    </select> - 
    
    <input type="text" name="telA" value="<%=h2 %>" size = 5px> -
    <input type="text" name="telB" value="<%=h3 %>" size = 5px>
  <br>

<br>이메일: 
  <%
    //이메일 앞부분 + 뒷부분 추출하기
    String EM = resultSet.getString("email");
    int AT = EM.indexOf("@");
    String E1 = EM.substring(0,AT);
    String E2 = EM.substring(AT+1);
  %>

    <input type="text" name="emailA" value="<%= E1 %>" size = 7px>
    @
    <select name="emailC" id="emailC" >
    <option value="naver.com" <% if(E2.equals("naver.com")) out.print("selected"); %> >naver.com</option>
    <option value="gmail.com" <% if(E2.equals("gmail.com")) out.print("selected"); %> >gmail.com</option>
    <option value="outlook.com" <% if(E2.equals("outlook.com")) out.print("selected"); %> >outlook.com</option>
    <option value="nate.com" <% if(E2.equals("nate.com")) out.print("selected"); %> >nate.com</option>
    <option value="daum.com" <% if(E2.equals("daum.com")) out.print("selected"); %> >daum.com</option>
    </select><br>

<br>성별:
  <%
    //radio 값 불러오기 1
    if(resultSet.getString("gender")=="남자"){
  %>
    <input type="radio" name="Gender" autocomplete="off" value="male" checked>남자
    <input type="radio" name="Gender" autocomplete="off" value="female">여자
  <% }else{
    %><input type="radio" name="Gender" autocomplete="off" value="male">남자
    <input type="radio" name="Gender" autocomplete="off" value="female" checked>여자
  <% }
  %><br>

<br>취미:  
  <%
    //radio 값 불러오기 2
    if(resultSet.getString("hobby")=="공부"){ %>
    <input type="radio"  name="hobby" autocomplete="off" value="study"  checked>공부   
    <input type="radio"  name="hobby"  autocomplete="off"value="game">게임
    <input type="radio"  name="hobby"  autocomplete="off"value="climb">등산
    <input type="radio" name="hobby"  autocomplete="off" value="fish">낚시
    <input type="radio"  name="hobby"  autocomplete="off" value="shop">쇼핑
  <% }else if(resultSet.getString("hobby")=="게임"){ %>
    <input type="radio"  name="hobby" autocomplete="off" value="study">공부   
    <input type="radio"  name="hobby"  autocomplete="off"value="game" checked>게임
    <input type="radio"  name="hobby"  autocomplete="off"value="climb">등산
    <input type="radio" name="hobby"  autocomplete="off" value="fish">낚시
    <input type="radio"  name="hobby"  autocomplete="off" value="shop">쇼핑
  <% }else if(resultSet.getString("hobby")=="등산"){ %> 
    <input type="radio"  name="hobby" autocomplete="off" value="study">공부   
    <input type="radio"  name="hobby"  autocomplete="off"value="game" >게임
    <input type="radio"  name="hobby"  autocomplete="off"value="climb" checked>등산
    <input type="radio" name="hobby"  autocomplete="off" value="fish">낚시
    <input type="radio"  name="hobby"  autocomplete="off" value="shop">쇼핑
  <% }else if(resultSet.getString("hobby")=="등산"){ %>
    <input type="radio"  name="hobby" autocomplete="off" value="study">공부   
    <input type="radio"  name="hobby"  autocomplete="off"value="game" >게임
    <input type="radio"  name="hobby"  autocomplete="off"value="climb" >등산
    <input type="radio" name="hobby"  autocomplete="off" value="fish" checked>낚시
    <input type="radio"  name="hobby"  autocomplete="off" value="shop">쇼핑
  <% }else{ %>
    <input type="radio"  name="hobby" autocomplete="off" value="study">공부   
    <input type="radio"  name="hobby"  autocomplete="off"value="game" >게임
    <input type="radio"  name="hobby"  autocomplete="off"value="climb" >등산
    <input type="radio" name="hobby"  autocomplete="off" value="fish" >낚시
    <input type="radio"  name="hobby"  autocomplete="off" value="shop" checked>쇼핑
  <% }
  %> <br>
  
  <br>자기소개<br>
    <input type="text" id="aboutme" name="aboutme" style="width: 300px; height: 150px;" 
    value="<%=resultSet.getString("aboutme") %>"><br><br>
  <br> 



<input type="submit" value="수정하기">
<!--id 값 넘기기 위해서 userid라는 변수 만들어서 update_pwdform으로 넘김-->
<input type="button" onclick="location.href='./update_pwdform.jsp?userid=<%=upid%>'" value="비밀번호변경" > 

</form>


</div>
<%
}
connection.close();
} catch (Exception e)
 {
e.printStackTrace();
out.print("예외발생");
}
%>
</body>
</html>