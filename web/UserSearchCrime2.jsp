<%-- 
    Document   : UserSearchCrime2
    Created on : Oct 25, 2015, 3:49:22 PM
    Author     : USER
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crime Record</title>
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
               
                    <%
                    int sr_no=1;    
                    int crime_id = 0;
                        String searchBy = request.getParameter("searchBy");
                        String search = request.getParameter("search").toLowerCase();
                        int criminal_id = 0;
                        String date_of_crime = "";
                        String date_of_report = "";
                        String city = "";
                        int iofficerid = 0;

                        String date_of_crimeDB = "";
                        String date_of_reportDB = "";
                        String cityDB = "";
                        int iofficeridDB = 0;
                        int criminal_idDB = 0;
                        Connection conn;
                    %>
                    <div id="centeredDiv">
                                
  <br/><br/><h1 align="center">Crime Record</h1><br/>
                                <table>
                                    <tr>
                                        <td>Crime Id</td>
                                        <td>Date_Of_Crime</td>
                                        <td>Date_Of_Report</td>
                                        <td>Location</td>
                                        <td>Inve. Officer ID</td>
                                        <td>Criminal Id</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7"><hr width="100%"><br/></td>
                                    </tr>
                            <%

                                if ("criminal_id".equals(searchBy)) {
                                    try {

                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");


                                        int id_num = Integer.parseInt(search);
                                        Statement stmt1 = conn.createStatement();

                                        ResultSet rs1 = stmt1.executeQuery("Select * from crime_detail where criminal_id=" + id_num);
                                        while (rs1.next()) {
                                            date_of_crimeDB = rs1.getString("date_of_crime");
                                            date_of_reportDB = rs1.getString("date_of_report");
                                            cityDB = rs1.getString("crime_city");
                                            iofficeridDB = rs1.getInt("investigation_officer_id");
                                            int crime_idDB = rs1.getInt("crime_id");
                                            crime_id = crime_idDB;
                                            criminal_id = id_num;
                                            date_of_crime = date_of_crimeDB;
                                            date_of_report = date_of_reportDB;
                                            city = cityDB;
                                            iofficerid = iofficeridDB;
                            %>                      
                            

                              <tr>
                                 <td> <%=crime_id%>    </td>
                                <td> <form action="/Crime/CrimeRecord" method="POST">
                                         <input type="hidden" name="usrname" value="user">
                                        <input type="hidden" name="crime_id" value="<%=crime_id%>">
                                      <%=date_of_crime%></td>
                                                <td><%=date_of_report%></td>
                                                <td><%=city%></td>
                                               <td><% String pid="POI000"+String.valueOf(iofficerid);%><%=pid%></td>
                                                <td><input type="hidden" name="criminal_id" value="<%=criminal_id%>"><% String id2="CRN000"+String.valueOf(criminal_id);%><%=id2%>    </td>
                                                <td><input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%
                            sr_no++;
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                }

                            %>                  










                            <%
                                date_of_crime = "";
                                date_of_report = "";
                                city = "";
                                iofficerid = 0;
                                date_of_crimeDB = "";
                                date_of_reportDB = "";
                                cityDB = "";
                                iofficeridDB = 0;
                                criminal_idDB = 0;


                                if ("date_of_crime".equals(searchBy)) {
                                    try {

                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");


                                        String date_of_crime_temp = search;
                                        Statement stmt2 = conn.createStatement();

                                        ResultSet rs2 = stmt2.executeQuery("Select * from crime_detail");
                                        while (rs2.next()) {

                                            date_of_crimeDB = rs2.getString("date_of_crime").toLowerCase();

                                            if (date_of_crime_temp.equals(date_of_crimeDB)) {
                                                date_of_crimeDB = rs2.getString("date_of_crime");
                                                date_of_reportDB = rs2.getString("date_of_report");
                                                cityDB = rs2.getString("crime_city");
                                                iofficeridDB = rs2.getInt("investigation_officer_id");
                                                int crime_idDB = rs2.getInt("crime_id");
                                                criminal_idDB = rs2.getInt("criminal_id");
                                                crime_id = crime_idDB;
                                                criminal_id = criminal_idDB;
                                                date_of_crime = date_of_crimeDB;
                                                date_of_report = date_of_reportDB;
                                                city = cityDB;
                                                iofficerid = iofficeridDB;
                            %>                      

                            <tr>
                                 <td> <%=crime_id%>    </td>
                                <td> <form action="/Crime/CrimeRecord" method="POST">
                                         <input type="hidden" name="usrname" value="user">
                                        <input type="hidden" name="crime_id" value="<%=crime_id%>">
                                      <%=date_of_crime%></td>
                                                <td><%=date_of_report%></td>
                                                <td><%=city%></td>
                                               <td><% String pid="POI000"+String.valueOf(iofficerid);%><%=pid%></td>
                                                <td><input type="hidden" name="criminal_id" value="<%=criminal_id%>"><% String id2="CRN000"+String.valueOf(criminal_id);%><%=id2%>    </td>
                                                <td><input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%
                            sr_no++;
                                            }
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                }

                            %>                
















                         <%
                                date_of_crime = "";
                                date_of_report = "";
                                city = "";
                                iofficerid = 0;
                                date_of_crimeDB = "";
                                date_of_reportDB = "";
                                cityDB = "";
                                iofficeridDB = 0;
                                criminal_idDB = 0;


                                if ("date_of_report".equals(searchBy)) {
                                    try {

                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");


                                        String date_of_report_temp = search;
                                        Statement stmt3 = conn.createStatement();

                                        ResultSet rs3 = stmt3.executeQuery("Select * from crime_detail");
                                        while (rs3.next()) {

                                            date_of_reportDB = rs3.getString("date_of_report").toLowerCase();

                                            if (date_of_report_temp.equals(date_of_reportDB)) {
                                                date_of_crimeDB = rs3.getString("date_of_crime");
                                                date_of_reportDB = rs3.getString("date_of_report");
                                                cityDB = rs3.getString("crime_city");
                                                iofficeridDB = rs3.getInt("investigation_officer_id");
                                                int crime_idDB = rs3.getInt("crime_id");
                                                criminal_idDB = rs3.getInt("criminal_id");
                                                crime_id = crime_idDB;
                                                criminal_id = criminal_idDB;
                                                date_of_crime = date_of_crimeDB;
                                                date_of_report = date_of_reportDB;
                                                city = cityDB;
                                                iofficerid = iofficeridDB;
                            %>                      

                           <tr>
                                 <td> <%=crime_id%>    </td>
                                <td> <form action="/Crime/CrimeRecord" method="POST">
                                         <input type="hidden" name="usrname" value="user">
                                        <input type="hidden" name="crime_id" value="<%=crime_id%>">
                                      <%=date_of_crime%></td>
                                                <td><%=date_of_report%></td>
                                                <td><%=city%></td>
                                               <td><% String pid="POI000"+String.valueOf(iofficerid);%><%=pid%></td>
                                                <td><input type="hidden" name="criminal_id" value="<%=criminal_id%>"><% String id2="CRN000"+String.valueOf(criminal_id);%><%=id2%>    </td>
                                                <td><input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%
                            sr_no++;
                                            }
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                }

                            %>        

                            
                            
                            
                            
                              <%
                                date_of_crime = "";
                                date_of_report = "";
                                city = "";
                                iofficerid = 0;
                                date_of_crimeDB = "";
                                date_of_reportDB = "";
                                cityDB = "";
                                iofficeridDB = 0;
                                criminal_idDB = 0;


                                if ("city".equals(searchBy)) {
                                    try {

                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");


                                        String city_temp = search;
                                        Statement stmt4 = conn.createStatement();

                                        ResultSet rs4 = stmt4.executeQuery("Select * from crime_detail");
                                        while (rs4.next()) {

                                            cityDB = rs4.getString("crime_city").toLowerCase();

                                            if (city_temp.equals(cityDB)) {
                                                date_of_crimeDB = rs4.getString("date_of_crime");
                                                date_of_reportDB = rs4.getString("date_of_report");
                                                cityDB = rs4.getString("crime_city");
                                                iofficeridDB = rs4.getInt("investigation_officer_id");
                                                int crime_idDB = rs4.getInt("crime_id");
                                                criminal_idDB = rs4.getInt("criminal_id");
                                                crime_id = crime_idDB;
                                                criminal_id = criminal_idDB;
                                                date_of_crime = date_of_crimeDB;
                                                date_of_report = date_of_reportDB;
                                                city = cityDB;
                                                iofficerid = iofficeridDB;
                            %>                      

                           <tr>
                                 <td> <%=crime_id%>    </td>
                                <td> <form action="/Crime/CrimeRecord" method="POST">
                                         <input type="hidden" name="usrname" value="user">
                                        <input type="hidden" name="crime_id" value="<%=crime_id%>">
                                      <%=date_of_crime%></td>
                                                <td><%=date_of_report%></td>
                                                <td><%=city%></td>
                                               <td><% String pid="POI000"+String.valueOf(iofficerid);%><%=pid%></td>
                                                <td><input type="hidden" name="criminal_id" value="<%=criminal_id%>"><% String id2="CRN000"+String.valueOf(criminal_id);%><%=id2%>    </td>
                                                <td><input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%
                            sr_no++;
                                            }
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                }

                            %>      
                      
                            
                            
                            <%
                                date_of_crime = "";
                                date_of_report = "";
                                city = "";
                                iofficerid = 0;
                                date_of_crimeDB = "";
                                date_of_reportDB = "";
                                cityDB = "";
                                iofficeridDB = 0;
                                criminal_idDB = 0;


                                if ("iofficerid".equals(searchBy)) {
                                    try {

                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");


                                        int iofficerid_temp = Integer.parseInt(search);
                                        Statement stmt5 = conn.createStatement();

                                        ResultSet rs5 = stmt5.executeQuery("Select * from crime_detail");
                                        while (rs5.next()) {

                                            iofficeridDB = rs5.getInt("investigation_officer_id");

                                            if (iofficerid_temp==iofficeridDB) {
                                                date_of_crimeDB = rs5.getString("date_of_crime");
                                                date_of_reportDB = rs5.getString("date_of_report");
                                                cityDB = rs5.getString("crime_city");
                                                iofficeridDB = rs5.getInt("investigation_officer_id");
                                                int crime_idDB = rs5.getInt("crime_id");
                                                criminal_idDB = rs5.getInt("criminal_id");
                                                crime_id = crime_idDB;
                                                criminal_id = criminal_idDB;
                                                date_of_crime = date_of_crimeDB;
                                                date_of_report = date_of_reportDB;
                                                city = cityDB;
                                                iofficerid = iofficeridDB;
                            %>                      

                            <tr>
                                 <td> <%=crime_id%>    </td>
                                <td> <form action="/Crime/CrimeRecord" method="POST">
                                         <input type="hidden" name="usrname" value="user">
                                        <input type="hidden" name="crime_id" value="<%=crime_id%>">
                                      <%=date_of_crime%></td>
                                                <td><%=date_of_report%></td>
                                                <td><%=city%></td>
                                               <td><% String pid="POI000"+String.valueOf(iofficerid);%><%=pid%></td>
                                                <td><input type="hidden" name="criminal_id" value="<%=criminal_id%>"><% String id2="CRN000"+String.valueOf(criminal_id);%><%=id2%>    </td>
                                                <td><input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%
                            
                            sr_no++;
                                            }
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                }

                            %>      
                            
                            
                            
                            
                        </table>
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
