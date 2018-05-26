<%-- 
    Document   : CriminalIdGenerator
    Created on : Oct 13, 2015, 12:43:13 PM
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
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
        int temp=0;
       try {
      // This will load the MySQL driver, each DB has its own driver
      Class.forName("com.mysql.jdbc.Driver");
      // Setup the connection with the DB
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?","root","root");

 
     Statement stmt = conn.createStatement();
      
  ResultSet rs = stmt.executeQuery("Select * from criminal_detail");
  while(rs.next()){
  int criminalIdDB=rs.getInt("criminal_id");
 if(criminalIdDB>temp)
         {
     temp=criminalIdDB;
 }
  }
  temp=temp+1;
    }
     
     catch (Exception e) {
out.println(e);
    }
        %>
    </body>
</html>
