<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%> 
<%@ page import="java.sql.*"%>
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

<%
String id=(String) session.getAttribute("user_id");

%>
<div style ="text-align:center;">
<h1 >Welcome!</h1>
<%=id %> 님이 로그인하였습니다.<br>


<%


      
      Class.forName("com.mysql.jdbc.Driver");
      
      String dbUrl="jdbc:mysql://192.168.0.19:3306/shopdb";
      
      String dbUser="newuser";
      
      String dbPass="Oracle1234@";

      Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
      
      String sql="select * from members where id=?";
      
      PreparedStatement pstmt=con.prepareStatement(sql);
  
      pstmt.setString(1, id);

      ResultSet rs = pstmt.executeQuery();

      %>
      
      
       
     <h4><b>회원정보</b></h4> <br>
     <table>
    
      <%
      while(rs.next()){
      %> 
    <tr> 
      <td>아이디</td>
      <td><%=rs.getString("id")%></td>
    </tr>
    <tr> 
      <td>이름</td>
      <td><%=rs.getString("name")%></td>
    </tr>
    <tr> 
      <td>성별</td>
      <td><%=rs.getString("gender")%></td>
    </tr>
    <tr> 
      <td>취미</td>
      <td><%=rs.getString("hobby")%></td>
    </tr>
    <tr> 
      <td>주민번호</td>
      <td><%=rs.getString("num")%></td>
    </tr>    
    <tr> 
      <td>전화번호</td>
      <td><%=rs.getString("phone")%></td>
    </tr>
    <tr> 
      <td>자기소개</td>
      <td><%=rs.getString("aboutme")%></td>
    </tr>

      <%} %>

    </table>
      
<br><input type="button" onclick="location.href='./logout.jsp'" value="로그아웃" /><br>
<br><td><input type="button" value="정보수정" onclick="location.href='update.jsp?updateid=<%=id%>'" value="정보수정"></a></input ></td>
<br>
<br><input type="button" onclick="location.href='./delete_pwdconform.jsp'" value="회원탈퇴" />
</div>
</body>
</html>