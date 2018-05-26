<%-- 
    Document   : View_Crime
    Created on : Oct 25, 2015, 1:43:59 PM
    Author     : USER
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crime Record</title>
    </head>
    <body>
        <div id="centeredDiv">
                            <div id="maindata">
                                <h1 align="center">Crime Record</h1>
                                <table>
                                    <tr>
                                        <td>Crime Id</td>
                                        <td>Date_Of_Crime</td>
                                        <td>Date_Of_Report</td>
                                        <td>Location</td>
                                        <td>Inve. Officer ID</td>
                                        <td>Criminal Id</td>
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
    </body>
</html>
