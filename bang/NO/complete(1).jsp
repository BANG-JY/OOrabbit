<%@ page language="java" contentType="text/html; charset=EUC-KR"   pageEncoding="EUC-KR"%>
<%	request.setCharacterEncoding("UTF-8");%> <!-- 인코딩  -->
<%@ page import="java.sql.*"%>

<html>

<head>

<title>MySQL uu </title>

</head>

<body>

<%

 

String DB_URL = "jdbc:mysql://192.168.0.19:3306/shopdb";

// DB URL Format = "jdbc:mysql://'DB IP':'Connector Port'/'DB_Name'";

 

String DB_USER = "newuser";

String DB_PASSWORD= "Oracle1234@";

// DB ID/PASSWORD

 

Connection conn;

Statement stmt;

ResultSet rs = null;


String cid = request.getParameter("cid");
String cpwd = request.getParameter("cpwd");
String cname = request.getParameter("cname");
String cadress = request.getParameter("cadress");
String tel = request.getParameter("tel");
String telA = request.getParameter("telA");
String telB = request.getParameter("telB");
String emailA = request.getParameter("emailA");
String emailC = request.getParameter("emailC");
String cpet = request.getParameter("cpet");
String cpname = request.getParameter("cpname");
String cpbday = request.getParameter("cpbday");
String AD = request.getParameter("AD");

out.println("ID : " + cid);
out.println("Password : " + cpwd);
out.println("name : " + cname);
out.println(cadress);
out.println(tel + "-" + telA + "-" + telB);
out.println("E-mail :" + emailA + "@" + emailC);
out.println("pet : " + cpet);
out.println("Pet's name : " + cpname);
out.println(cpname + "'s B-day : " + cpbday);
out.println(AD);

try {

  Class.forName("com.mysql.jdbc.Driver");

  // Load JDBC Class

  conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

  // Make Connection

 
String sql = "INSERT INTO customers " +
                "SET cnum = null," +
                "cid = " + cid + ", " +
                "cpwd = " + cpwd + ", " + 
				"cname = " + cname + ", " +
                "cadress = " + cadress + ", " +
                "cphone = " + tel + "-" + telA + "-" + telB + ", " + 
                "cemail = " + emailA + " @ " + emailC + ", " + 
                "cpet = " + cpet + ", " +  
				"cpname = " + cpname + ", " + 
				"cpbday = " + cpbday + ", " +
                "AD = " + AD + ";";

  stmt = conn.createStatement();


stmt.executeUpdate(sql);
			
  stmt.close();

  conn.close();

 }

 catch(Exception e){

  out.print("Exception Error...");

  out.print(e.toString());

 }

 finally {

 }

%>

</body>

</html>

%>