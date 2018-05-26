<%-- 
    Document   : DisplayImage
    Created on : Oct 1, 2015, 1:39:04 PM
    Author     : USER
--%>



<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
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
        String filepath=null;
      String name=null;
      String name2=null;
    %>
    <%
      
  try {
      // This will load the MySQL driver, each DB has its own driver
      Class.forName("com.mysql.jdbc.Driver");
      // Setup the connection with the DB
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?","root","root");
 
 HttpSession session1=request.getSession();
 %>
 <%
int id=(Integer)session1.getAttribute("criminal_id");

 %>
<%
   String sql1 = "SELECT image,imagename FROM criminal_detail WHERE criminal_id=?";
            PreparedStatement pstmtSelect = conn.prepareStatement(sql1);
            pstmtSelect.setInt(1, id);
            
            ResultSet result = pstmtSelect.executeQuery();
            if (result.next()) {
          //      id=result.getInt("reg_id");
             String  imagename=result.getString("imagename");
             name=imagename;
             filepath= "C:\\Project\\Crime\\web\\ProfilePicture\\"+name;
             name2="ProfilePicture/"+name;
                Blob blob = result.getBlob("image");
                InputStream inputStream1 = blob.getBinaryStream();
                OutputStream outputStream = new FileOutputStream(filepath);
                int bytesRead = -1;
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream1.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
              
 inputStream1.close();
                outputStream.close();
               // session1.setAttribute("id", id);
                //          request.getRequestDispatcher("SaveStatus").forward(request, response);
  }
    
    }
    catch(Exception e)
    {
       out.println(e);
    }     
              
%>
    </body>
</html>
