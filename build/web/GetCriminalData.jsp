<%-- 
    Document   : GetCriminalData
    Created on : Oct 14, 2015, 1:18:42 PM
    Author     : USER
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

        
       <%
        int id=Integer.parseInt(request.getParameter("id"));
       int criminal_id=0;
       String mother_tongue=null;
       String existance=null;

               try {
      // This will load the MySQL driver, each DB has its own driver
      Class.forName("com.mysql.jdbc.Driver");
      // Setup the connection with the DB
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?","root","root");
// int id=Integer.parseInt(request.getParameter("id"));
 
   String sql1 = "SELECT * FROM criminal_detail WHERE criminal_id=?";
            PreparedStatement pstmtSelect = conn.prepareStatement(sql1);
            pstmtSelect.setInt(1, id);
            
            ResultSet result = pstmtSelect.executeQuery();
            if (result.next()) {
     criminal_id=result.getInt("criminal_id");
     mother_tongue=result.getString("mother_tongue");
     existance=result.getString("existance");
  }
    
    }
    catch(Exception e)
    {
       out.println(e);
    }     
              
      response.sendRedirect("CriminalRecord.jsp");
    
  %>
    </body>
</html>
