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

    String user_pw = "";

	user_pw = request.getParameter("checkpw"); //PW값 가져옴
    //여기서 부터 DB 연결 코드

	Connection conn;
	PreparedStatement pstmt = null;
    Boolean check = false;
 




	String driverName="com.mysql.jdbc.Driver";
	Class.forName(driverName);
	String serverName = "localhost";
	String serverPort = "3306";
	String sid = "orcl";
	String url = "jdbc:mysql://192.168.0.19:3306/shopdb";
	String DB_Name = "newuser";
	String DB_Pw = "Oracle1234@";
  
	{

	String sql = "select * from members where  pwd ='" + user_pw + "'";

	conn = DriverManager.getConnection(url, DB_Name, DB_Pw);
  	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(sql);

    while(rs.next()) // 결과값을 하나씩 가져와서 저장하기 위한 while문
    {
		String pwd = rs.getString("pwd"); //DB에 있는 pwd가져옴

    	session.setAttribute("user_id", pwd); //DB값을 세션에 넣음

        check = true;
    }
    if(check){ //PW가 DB에 존재하는 경우 탈퇴 여부 물어보기 
        %> 
                  <script>
                      confirm("정말로 탈퇴할까요?");
                   document.location.href='./delete_sucess.jsp'
                  </script> <%
                    rs.close();
                    conn.close();
            }   else  { //ID,PW가 일치하지 않는 경우
            %>
         <script>
         alert("비밀번호를 다시 입력하세요.");
        document.location.href='./outconform.jsp'
         </script>
        <%    } 
    }%>


    
    </body>
    </html>
    
 