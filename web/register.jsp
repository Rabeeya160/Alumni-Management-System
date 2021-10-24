<%-- 
    Document   : register
    Created on : Dec 15, 2017, 8:20:32 PM
    Author     : adnan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
%>
<%@page import ="classes.DBUtils" %>
<!DOCTYPE html>


<%
    String fName = request.getParameter("fName").toUpperCase();
    String lName = request.getParameter("lName").toUpperCase();
    String regNum = request.getParameter("regNum").toUpperCase();
    String email = request.getParameter("email").toLowerCase();
    String pwd = request.getParameter("pwd1");  

    DBUtils.registerUser(fName, lName, regNum, email, pwd);

%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Successful</title>
    </head>
    <body>
        <h1> Go to <a href="login-page.jsp">Login Page to continue</a></h1>
        
    </body>
</html>
