<%-- 
    Document   : functions
    Created on : Dec 16, 2017, 9:41:22 PM
    Author     : adnan
--%>

<%@page import="classes.DBUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int s = 0;%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--This Function Deletes the alumnus-->
        <%
            String dmail = request.getParameter("deleteMail");
            if (dmail != null) {
                s = DBUtils.deleteAlumni(dmail);
                if (s == 1) {
        %>
        <h3>Deletion Was Successful!</h3>
        <%  } else {%>
        <h3>Error! Couldn't Delete.</h3>
        <%
                }
            }
            response.sendRedirect("dashboard.jsp");
        %>

        <!--Delete function ends here-->
    </body>
</html>
