<%-- 
    Document   : ViewCrime
    Created on : Oct 12, 2015, 5:47:28 PM
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crime Record</title>
        <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
        <link href="CSS/AdminCSS.css" rel="stylesheet">
    </head>
    <body>
        <form action="CrimeRecord" method="POST">
            <div id="mainDIv">
                <div id="mainDiv2">
                    <div id="HeaderDiv">
                        Crime analysis and prediction using data mining
                    </div>
                    <div id="Adminnav">
                        <ul>
                            <li><a href="AdminHome.jsp">Home</a></li>
                            <li><a href="#">Criminal</a>
                                <ul>
                                    <li><a href="AddCriminal.jsp">Add Criminal Detail</a></li>
                                    <li><a href="ViewCriminal.jsp">View Criminal Detail</a></li>
                                    <li><a href="SearchCriminal.jsp">Search Criminal Detail</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Crime</a>

                                <ul>
                                    <li><a href="AddCrime.jsp">Add Crime Detail</a></li>
                                    <li><a href="ViewCrime.jsp">View Crime Detail</a></li>
                                    <li><a href="SearchCrime.jsp">Search Crime Detail</a></li>
                                </ul>


                            </li>
                            <li><a href="#">User</a>
                                <ul>
                                    <li><a href="AddUser.jsp">Add User Detail</a></li>
                                    <li><a href="ViewUser.jsp">View User Detail</a></li>
                                    <li><a href="SearchUser.jsp">Search User Detail</a></li>
                                </ul>

                            </li>    


                            <li><a href="Predict.jsp">Predict</a></li>

                            <li><a href="ChangePassword.jsp">Change Password</a></li>

                            <li><a href="Logout.jsp">Logout</a></li>
                        </ul>
                    </div>

                    <div id="middleDiv1">
                        <div id="leftDiv">
                            <ul>
                                <li><a href="AdminHome.jsp">Home</a></li>
                                <li><a href="AddCriminal.jsp">Add Criminal Detail</a></li>
                                <li><a href="ViewCriminal.jsp">View Criminal Detail</a></li>
                                <li><a href="SearchCriminal.jsp">Search Criminal Detail</a></li>
                                <li><a href="AddCrime.jsp">Add Crime Detail</a></li>
                                <li><a href="ViewCrime.jsp">View Crime Detail</a></li>
                                <li><a href="SearchCrime.jsp">Search Crime Detail</a></li>
                                <li><a href="AddUser.jsp">Add User Detail</a></li>
                                <li><a href="ViewUser.jsp">View User Detail</a></li>
                                <li><a href="SearchUser.jsp">Search User Detail</a></li>

                                <li><a href="Predict.jsp">Predict</a></li>

                                <li><a href="ChangePassword.jsp">Change Password</a></li>
                                <li><a href="Logout.jsp">Logout</a></li>
                            </ul>
                        </div>

                        <div id="centeredDiv">
                            <div id="maindata">
                                <h1 align="center">Crime Record</h1><br/>
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
                                        try {
                                            // This will load the MySQL driver, each DB has its own driver
                                            Class.forName("com.mysql.jdbc.Driver");
                                            // Setup the connection with the DB
                                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");

                                            int i = 0;
                                            Statement stmt = conn.createStatement();

                                            ResultSet rs = stmt.executeQuery("Select * from crime_detail");
                                            while (rs.next()) {
                                                i++;

                                    %>                      

                                    <tr>
                                        <td> <form action="/Crime/CrimeRecord" method="POST"><input type="hidden" name="crime_id" value="<%=rs.getInt("crime_id")%>"><%=rs.getString("crime_id")%>    </td>
                                                <input type="hidden" name="usrname" value="admin">
                                                <td><%=rs.getString("date_of_crime")%></td>
                                                <td><%=rs.getString("date_of_report")%></td>
                                                <td><%=rs.getString("crime_city")%></td>
                                                <td><%=rs.getString("investigation_officer_id")%></td>
                                                <td><input type="hidden" name="criminal_id" value="<%=rs.getInt("criminal_id")%>"><%=rs.getString("criminal_id")%>    </td>
                                                <td><input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;"></form></td>
                                    </tr>

                                    <%
                                            }
                                        } catch (Exception e) {
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
            </div>
        </form>
    </body>
</html>
