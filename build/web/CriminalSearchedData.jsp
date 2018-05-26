<%-- 
    Document   : CriminalSearchedData
    Created on : Oct 25, 2015, 1:04:03 PM
    Author     : USER
--%>

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

                        String searchBy = request.getParameter("searchBy");
                        String search = request.getParameter("search").toLowerCase();
                        String fname = "";
                        int c_id = 0;
                        String lname = "";
                        String gender = "";
                        String cell_number = "";
                        String location = "";
                        String text = "";
                        String fnameDB = "";
                        String lnameDB = "";
                        String genderDB = "";
                        String cellnumberDB = "";
                        String locationDB = "";
                        Connection conn;

                    %>
                    <div id="centeredDiv">
                        <table>


                            <%

                                if ("criminal_id".equals(searchBy)) {
                                    try {

                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");


                                        int id_num = Integer.parseInt(search);
                                        Statement stmt1 = conn.createStatement();

                                        ResultSet rs1 = stmt1.executeQuery("Select * from criminal_detail where criminal_id=" + id_num);
                                        while (rs1.next()) {
                                            fnameDB = rs1.getString("fname");

                                            lnameDB = rs1.getString("lname");
                                            genderDB = rs1.getString("gender");
                                            cellnumberDB = rs1.getString("cell_number");
                                        }
                                        Statement stmt2 = conn.createStatement();

                                        ResultSet rs2 = stmt2.executeQuery("Select * from address_detail where criminal_id=" + id_num);
                                        while (rs2.next()) {
                                            locationDB = rs2.getString("city");
                                        }
                                        c_id = id_num;
                                        fname = fnameDB;
                                        lname = lnameDB;
                                        gender = genderDB;
                                        cell_number = cellnumberDB;
                                        location = locationDB;



                            %>                      

                            
                            <%
                            String usrname="";
HttpSession session1=request.getSession(false);                            
usrname=(String)session1.getAttribute("usrname");
%>
                            <tr>
                                <td> <form action="CriminalRecord" method="POST">
                                        <input type="hidden" name="usrname" value="<%=usrname%>">
                                        <input type="hidden" name="id" value="<%=c_id%>">
                                        <%=c_id%>    </td>
                                        <td><%=fname%></td>
                                        <td><%=lname%></td>
                                        <td><%=gender%></td>
                                        <td><%=cell_number%></td>
                                        <td><%=location%></td>
                                        <td>
                                            <input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%

                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                }

                            %>                  









                            <%

                                if ("city".equals(searchBy)) {
                                    try {

                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");


                                        location = request.getParameter("search").toLowerCase();
                                        Statement stmt5 = conn.createStatement();

                                        ResultSet rs5 = stmt5.executeQuery("Select * from address_detail");
                                        while (rs5.next()) {

                                            locationDB = rs5.getString("city").toLowerCase();

                                            if (location.equals(locationDB)) {



                                                int id = rs5.getInt("criminal_id");
                                                Statement stmt6 = conn.createStatement();

                                                ResultSet rs6 = stmt6.executeQuery("Select * from criminal_detail");

                                                while (rs6.next()) {
                                                    int id2 = rs6.getInt("criminal_id");
                                                    if (id == id2) {
                                                        fnameDB = rs6.getString("fname");

                                                        lnameDB = rs6.getString("lname");
                                                        genderDB = rs6.getString("gender");
                                                        cellnumberDB = rs6.getString("cell_number");
                                                    }
                                                }

                                                c_id = id;
                                                fname = fnameDB;
                                                lname = lnameDB;
                                                gender = genderDB;
                                                cell_number = cellnumberDB;
                                                location = locationDB;



                            %>                      

                            <tr>
                                <td> <form action="CriminalRecord" method="POST">
                                        
                                        <input type="hidden" name="id" value=<%=c_id%>>
                                        <%=c_id%>    </td>
                                        <td><%=fname%></td>
                                        <td><%=lname%></td>
                                        <td><%=gender%></td>
                                        <td><%=cell_number%></td>
                                        <td><%=location%></td>
                                        <td>
                                            <input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%
                                            }
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }

                                }

                            %>             
















                            <%

                                if (!"criminal_id".equals(searchBy)) {

                                    try {
                                        // This will load the MySQL driver, each DB has its own driver
                                        Class.forName("com.mysql.jdbc.Driver");
                                        // Setup the connection with the DB
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");



                                        Statement stmt3 = conn.createStatement();
                                        Statement stmt4 = conn.createStatement();
                                        ResultSet rs3 = stmt3.executeQuery("Select * from criminal_detail");
                                        while (rs3.next()) {


                                            if ("first_name".equals(searchBy)) {
                                                text = rs3.getString("fname").toLowerCase();
                                            }

                                            if ("cell_number".equals(searchBy)) {
                                                text = rs3.getString("cell_number").toLowerCase();
                                            }

                                            if (search.equals(text)) {
                                                int id = Integer.parseInt(rs3.getString("criminal_id"));
                                                fnameDB = rs3.getString("fname");
                                                lnameDB = rs3.getString("lname");
                                                genderDB = rs3.getString("gender");
                                                cellnumberDB = rs3.getString("cell_number");

                                                c_id = id;
                                                fname = fnameDB;
                                                lname = lnameDB;
                                                gender = genderDB;
                                                cell_number = cellnumberDB;

                                                ResultSet rs4 = stmt4.executeQuery("Select * from address_detail");
                                                while (rs4.next()) {
                                                    int id2 = Integer.parseInt(rs4.getString("criminal_id"));
                                                    if (c_id == id2) {
                                                        locationDB = rs4.getString("city");
                                                        location = locationDB;
                                                    }
                                                }

                            %>                      

                            <tr>
                                <td> <form action="CriminalRecord" method="POST">
                                        <input type="hidden" name="id" value=<%=c_id%>>
                                        <%=c_id%>    </td>
                                        <td><%=fname%></td>
                                        <td><%=lname%></td>
                                        <td><%=gender%></td>
                                        <td><%=cell_number%></td>
                                        <td><%=location%></td>
                                        <td>
                                            <input type="submit" name="CriminalRecord"value="View Detail" style="width: 150px;">
                                    </form></td>
                            </tr>
                            <%
                                            }
                                        }

                                    } catch (Exception e) {
                                        out.println(e);
                                    }
                                }
                            %>                  
                        </table>
                    </div>

    </body>
</html>
