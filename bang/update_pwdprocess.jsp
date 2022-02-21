<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%
String driverName = "com.mysql.jdbc.Driver";
String DB_URL = "jdbc:mysql://192.168.0.19:3306/shopdb";
String DB_USER = "newuser";
String DB_PASSWORD = "Oracle1234@";

String prepwd = request.getParameter("prepwd");
String newpwd = request.getParameter("newpwd");
String newpwd2 = request.getParameter("newpwd2");

//board의 id값 -> update_pwdform으로 id값->여기 jsp로 id값 가져옴
String userid3 = request.getParameter("userid2");



//여기아직 미완성...... 
//id값(sql 조건값) 불러와짐 , 새 비번/재확인비번 일치여부 정상작동
//근데 현재비번 / sql값의 비번이 비교가 안됨...왜.....

        if(!newpwd.equals(newpwd2)) 
        { %>
            <script>
            window.alert('변경될 비밀번호가 재확인과 일치하지 않습니다.');
            history.back(); 
            </script>
        <% }
        else {
            Connection conn = null;
            PreparedStatement ps = null;
            PreparedStatement ps2 = null;
         

            try {
                Class.forName(driverName);
                conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
                
                String sql = "select pwd from members where id = '" + userid3 + "'";
                ps = conn.prepareStatement(sql);
                

                //sql의 pwd이랑 prepwd랑 비교를 못함 클남....
                    if(!ps.equals(prepwd)) { %>
                        <script>
                        window.alert('현재 비밀번호를 다시 입력해주세요.');
                
                        //history.back(); 
                        </script>
                    <%  
                    }
                    else {
                        String sql2 = "Update members set pwd='" + newpwd + "'  where id= '" + userid3 + "'";
                        ps2 = conn.prepareStatement(sql2);
                
                        int i = ps2.executeUpdate();
                
                        if(i > 0) {

                            out.println("정보변경 성공");
                           // response.sendRedirect("update_pwdsucess.jsp");


                                }
                        else {
                            out.println("정보변경 실패");
                            }
                    }




            }catch(SQLException sql) {
                request.setAttribute("error", sql);
                out.println(sql);
            }   

       }
    
%>