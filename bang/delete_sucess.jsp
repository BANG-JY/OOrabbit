<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%> 
<%@ page import="java.sql.*"%>

    <!DOCTYPE>
<html>
<head>
  <title>member out</title>
</head>

<body>

    <%
String deleteid=(String) session.getAttribute("user_id");
    //여기서 부터 DB 연결 코드

	Connection conn;
	PreparedStatement pstmt = null;
    
 
	String driverName="com.mysql.jdbc.Driver";
	Class.forName(driverName);

	String serverPort = "3306";
	String sid = "orcl";
	String url = "jdbc:mysql://192.168.0.19:3306/shopdb";
	String DB_Name = "newuser";
	String DB_Pw = "Oracle1234@";
  
	try {
      
       
      String sql = "delete from members where id = '" + deleteid + "'";
      conn = DriverManager.getConnection(url, DB_Name, DB_Pw);
      pstmt = conn.prepareStatement(sql);
      

      
      int result = pstmt.executeUpdate();
              
              try{
                pstmt.close();
                conn.close();
                  
      
              } catch(Exception e){
                  e.printStackTrace();
              }
      
              if(result == 1){ // 성공
                response.sendRedirect("delete_goodbye.jsp");
            } else{ // 실패
                
                out.print("오류로 회원탈퇴에 실패하였습니다."); %>
                <button class="btn btn-light" type="button" onclick="location.href='./board.jsp'">돌아가기</button>
           <% }
       } catch(Exception e){
                  e.printStackTrace();
              }
      %>
      </body>
      </html>