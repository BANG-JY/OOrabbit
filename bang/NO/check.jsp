<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8"%>
<jsp:useBean id = "membermanager" class="member.MemberManager"/> 
<%	request.setCharacterEncoding("UTF-8");%> <!-- 인코딩  -->
<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String pass = request.getParameter("passwd");
String name = membermanager.login(id, pass);

if(name == null || name == ""){
    response.sendRedirect("loginfail.jsp");
} else { 
    session.setAttribute("idKey", id);
    response.sendRedirect("login.html");
} %>
