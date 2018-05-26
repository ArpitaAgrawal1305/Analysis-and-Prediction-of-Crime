<%-- 
    Document   : UserViewCriminal
    Created on : Oct 24, 2015, 5:51:18 PM
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Criminal Record</title>
          <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
          <link href="CSS/AdminCSS.css" rel="stylesheet">
    </head>
    <body>
     <div id="mainDIv">
         <div id="mainDiv2">
            <div id="HeaderDiv">
              Crime analysis and prediction using data mining
            </div>
            <div  id="Adminnav">
                <ul>
                    <li><a href="UserHome.jsp">Home</a></li>
                    <li><a href="#">Criminal</a>
              
                        <ul>
                      
                        <li><a href="UserViewCriminal.jsp">View Criminal Detail</a></li>
                        <li><a href="#">Search Criminal Detail</a></li>
                    </ul>
                    </li>
                    <li><a href="#">Crime</a>
                    
                    <ul>
                       
                        <li><a href="UserViewCrime.jsp">View Crime Detail</a></li>
                        <li><a href="#">Search Crime Detail</a></li>
                    </ul>
                    
                    
                    </li>
                  
                    
                    
                    <li><a href="Predict.jsp">Predict</a></li>
                    <li><a href="#">Setting</a>
                    <ul>
                        <li><a href="ViewProfile.jsp">View Profile</a></li>
                        <li><a href="UserChangePassword.jsp">Change Password</a></li>
                        
                    </ul>
                    </li>
                    <li><a href="Logout.jsp">Logout</a></li>
                </ul>
            </div>
            
           <div id="middleDiv1">
               <div id="leftDiv">
                    <ul>
                        <li><a href="UserHome.jsp">Home</a></li>
                       
                        <li><a href="UserViewCriminal.jsp">View Criminal Detail</a></li>
                        <li><a href="#">Search Criminal Detail</a></li>
                       
                        <li><a href="UserViewCrime.jsp">View Crime Detail</a></li>
                        <li><a href="#">Search Crime Detail</a></li>
                       
                        
                        <li><a href="UserPredict.jsp">Predict</a></li>
                        <li><a href="ViewProfile.jsp">View Profile</a></li>
                        <li><a href="UserChangePassword.jsp">Change Password</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
                    </ul>
               </div>
               
                <div id="centeredDiv">
                    <div id="maindata">
                  
                    <table>
                            <h1 align="center">Criminal Record</h1><br/>
                            <table>
                                <tr>
                                    <td>Criminal Id</td>
                                    <td>First Name</td>
                                    <td>Last Name</td>
                                    <td>Gender</td>
                                    <td>Cell Number</td>
                                    <td>Location</td>
                                </tr>
                                <tr>
                                    <td colspan="7"><hr width="100%"><br/></td>
                                </tr>
                    
 <%
  try {
      // This will load the MySQL driver, each DB has its own driver
      Class.forName("com.mysql.jdbc.Driver");
      // Setup the connection with the DB
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?","root","root");

 int i=0;
     Statement stmt = conn.createStatement();
      
  ResultSet rs = stmt.executeQuery("Select C.criminal_id,C.fname,C.lname,C.gender,C.cell_number,A.city from criminal_detail C, Address_detail A where C.criminal_id=A.criminal_id");
while(rs.next())
{    
    i++;

%>                      

                       <tr>
                           <td> <form action="CriminalRecord" method="POST">
                                    <input type="hidden" value="user" name="usrname">
                                   <input type="hidden" name="id" value="<%=rs.getInt("criminal_id")%>">
                               <%=rs.getString("criminal_id")%>    </td>
                            <td><%=rs.getString("fname")%></td>
                            <td><%=rs.getString("lname")%></td>
                            <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("cell_number")%></td>
                            <td><%=rs.getString("city")%></td>
                            <td>
                                <input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                </form></td>
                        </tr>
                        
<%
}
}
     
     catch (Exception e) {
out.println(e);
    }
%>
                    </table>
                    
                    
                    </div>
               </div>
               
               <div id="rightDiv">
                   <div id="images">
                       <img src="Images/01.jpg">
                   </div>
                   
                    <div id="images">
                       <img src="Images/02.jpg">
                   </div>
                    <div id="images">
                       <img src="Images/03.png">
                   </div>
                    <div id="images">
                       <img src="Images/04.jpg">
                   </div>
                    <div id="images">
                       <img src="Images/05.jpg">
                   </div>
                   
                   
               </div>
               
              
               
               
           </div>
               
               
             <div id="copy">
                <h3>Copyright &COPY; 2015</h3>
         </div>
        </div>
    </body>
</html>
