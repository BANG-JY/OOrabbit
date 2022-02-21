<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 아이디 기준으로 회원정보를 조회해서 다음 화면으로 전달
	
	String id = (String)session.getAttribute("user_id");
    	//DB연결에 필요한 변수
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from members where id = ?";
	
	
        String driverName="com.mysql.jdbc.Driver";
        String serverName = "localhost";
        String serverPort = "3306";
        String sid = "orcl";
        String url = "jdbc:mysql://192.168.0.19:3306/shopdb";
        String DB_Name = "newuser";
        String DB_Pw = "Oracle1234@";
        
		try{
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, DB_Name, DB_Pw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			id = rs.getString("id");
			String pwd = rs.getString("pwd");
			String name = rs.getString("name");
			String numA = rs.getString("numA");
			String numB = rs.getString("numB");
            String tel = rs.getString("tel");
			String telA = rs.getString("telA");
			String telB = rs.getString("telB");
			String emailA = rs.getString("emailA");
			String emailC = rs.getString("emailC");
			String gender = rs.getString("gender");
			String hobby = rs.getString("hobby");
			String aboutme = rs.getString("aboutme");
	
			// 포워드로 전달하기 위해
			request.setAttribute("id", id);
			request.setAttribute("pwd", pwd);
			request.setAttribute("name", name);
		    request.setAttribute("numA", numA);
			request.setAttribute("numB", numB);
			request.setAttribute("tel", tel);
		    request.setAttribute("telA", telA);
			request.setAttribute("telB", telB);
	    	request.setAttribute("emailA", emailA);
			request.setAttribute("emailC", emailC);
		    request.setAttribute("gender", gender);
			request.setAttribute("hobby", hobby);
	    	request.setAttribute("aboutme", aboutme);
			
			// 포워드 이동
			request.getRequestDispatcher("update.jsp").forward(request, response);
			
		} else{ // 세션이 만료된 경우
			response.sendRedirect("login.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
		out.print("예외발생");
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>