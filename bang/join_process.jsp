<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%> 
<%@ page import="java.sql.*"%>

<html>

<head>

<title>MySQL uu </title>

</head>

<body>

<%

 

String DB_URL = "jdbc:mysql://192.168.0.19:3306/shopdb";

String DB_USER = "newuser";

String DB_PASSWORD= "Oracle1234@";



 

Connection conn;

Statement stmt;

ResultSet rs = null;


String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String numA = request.getParameter("numA");
String numB = request.getParameter("numB");
String tel = request.getParameter("tel");
String telA = request.getParameter("telA");
String telB = request.getParameter("telB");
String emailA = request.getParameter("emailA");
String emailC = request.getParameter("emailC");
String gender = request.getParameter("gender");
String hobby = request.getParameter("hobby");
String aboutme = request.getParameter("aboutme");



try {

  Class.forName("com.mysql.jdbc.Driver");

  conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

String sql = "insert into members(register,id, pwd, name, num, phone, email, gender, hobby, aboutme) values(?,?,?,?,?,?,?,?,?,?)";

PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setString(1, null);
pstmt.setString(2, id);
pstmt.setString(3, pwd);
pstmt.setString(4, name);
pstmt.setString(5, numA + numB);
pstmt.setString(6, tel+telA+telB);
pstmt.setString(7, emailA + "@" + emailC);
pstmt.setString(8, gender);
pstmt.setString(9, hobby);
pstmt.setString(10, aboutme);

int result = pstmt.executeUpdate();
		 
		try{
      pstmt.close();
			conn.close();
			

		} catch(Exception e){
			e.printStackTrace();
		}



    if(result == 1){ // 성공
			response.sendRedirect("join_sucess.jsp");
		} else{ // 실패
			response.sendRedirect("join_fail.jsp");
		}


    
 } catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>
