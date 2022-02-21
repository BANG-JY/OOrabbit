<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String driverName = "com.mysql.jdbc.Driver";
String DB_URL = "jdbc:mysql://192.168.0.19:3306/shopdb";
String DB_USER = "newuser";
String DB_PASSWORD = "Oracle1234@";


String id = request.getParameter("id");
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

if(id != null)
    {
    Connection conn = null;
    PreparedStatement ps = null;
    
try
    {
    Class.forName(driverName);
    conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
    
    String sql = "Update members set name=?,num=?,phone=?,email=?,gender=?,hobby=?,aboutme=? where id=  '" + id + "'";

    ps = conn.prepareStatement(sql);

ps.setString(1, name);
ps.setString(2, numA + numB);
ps.setString(3, tel+telA+telB);
ps.setString(4, emailA + "@" + emailC);
ps.setString(5, gender);
ps.setString(6, hobby);
ps.setString(7, aboutme);

int i = ps.executeUpdate();

    if(i > 0){
    response.sendRedirect("update_sucess.jsp");

    } else {
    out.println("정보변경 실패");

    }
    
    }
    catch(SQLException sql) {
    request.setAttribute("error", sql);

    out.println(sql);
    }
}
%>