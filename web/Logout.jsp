<%-- 
    Document   : Logout
    Created on : Oct 26, 2015, 3:12:19 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
    
HttpSession s=request.getSession();      
s.invalidate();
 out.println("<script>");
            out.println("alert('Logged Out Successfully....')");
            out.println("window.location = 'index.jsp'");
            out.println("</script>");
%>
    </body>
</html>
