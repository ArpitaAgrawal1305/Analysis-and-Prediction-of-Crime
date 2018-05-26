<%-- 
    Document   : ViewProfile
    Created on : Oct 25, 2015, 3:58:10 PM
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
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
                    <%@ include file="DisplayUserImage.jsp" %>
                    <%
                        int userId = 0;
                        int user_id=0;
                      
                        String username = null;
                        String pass = null;
                        String designation = null;
                        String fname = null;
                        String mname = null;
                        String lname = null;
                        String fullname = null;
                        String gender = null;
                        String dob = null;
                        String hometelephone = null;
                        String pstelephone = null;
                        String cellnumber = null;
                        String flatno = null;
                        String streetname = null;
                        String city = null;
                        String taluka = null;
                        int zipcode = 0;
                        String district = null;
                        String state = null;
                        String country = null;
                        String policestation = null;
                         HttpSession session1 = request.getSession(false);
        user_id = (Integer) session.getAttribute("user_id");
                    %>
                    <%


                        try {
                            // This will load the MySQL driver, each DB has its own driver
                            Class.forName("com.mysql.jdbc.Driver");
                            // Setup the connection with the DB
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/Crime?", "root", "root");
                            // int id=Integer.parseInt(request.getParameter("id"));

                            String sql1 = "SELECT * FROM user_detail WHERE user_id=?";
                            PreparedStatement pstmtSelect = conn.prepareStatement(sql1);
                            pstmtSelect.setInt(1, user_id);

                            ResultSet result = pstmtSelect.executeQuery();
                            if (result.next()) {
                                user_id=result.getInt("user_id");
                                username = result.getString("email");
                                pass = result.getString("password");
                                designation = result.getString("designation");
                                fname = result.getString("ufname");
                                mname = result.getString("umname");
                                lname = result.getString("ulname");
                                fullname = fname + " " + mname + " " + lname;
                                gender = result.getString("ugender");
                                dob = result.getString("date_of_birth");
                                hometelephone = result.getString("home_telephone");
                                pstelephone = result.getString("ps_telephone");
                                cellnumber = result.getString("u_cellnumber");
                                flatno = result.getString("u_flatno");
                                streetname = result.getString("u_streetname");
                                city = result.getString("u_city");
                                taluka = result.getString("u_taluka");
                                zipcode = result.getInt("u_zipcode");
                                district = result.getString("u_district");
                                state = result.getString("u_state");
                                country = result.getString("u_country");
                                policestation = result.getString("ps_detail");
                            }
%>
                    <div id="centeredDiv">
                        <div id="Profile">
                        <table>
                            <tr>
                                <td colspan="2">
                                 <br/>   <h1 align="center">User Detail</h1><br/>
                                </td>
                            
                            <tr>
                                <td colspan="2">
                                   <br/> <div id="profilePicture">
                                        <img src=<%=name2%>>
                                    </div><br/>
                                </td>

                            </tr>
                            <tr>
                                <td id="proftd">User Id : </td>
                                <td id="proftd"><%=user_id%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Username : </td>
                                <td id="proftd"><%=username%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Password : </td>
                                <td id="proftd"><%=pass%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Designation : </td>
                                <td id="proftd"><%=designation%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Full Name : </td>
                                <td id="proftd"><%=fullname%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Gender : </td>
                                <td id="proftd"><%=gender%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Date Of Birth : </td>
                                <td id="proftd"><%=dob%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Home Telephone : </td>
                                <td id="proftd"><%=hometelephone%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Police Station Telephone : </td>
                                <td id="proftd"><%=pstelephone%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Cell Number : </td>
                                <td id="proftd"><%=cellnumber%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Flat Number : </td>
                                <td id="proftd"><%=flatno%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Street Name : </td>
                                <td id="proftd"><%=streetname%></td>
                            </tr>
                            <tr>
                                <td id="proftd">City : </td>
                                <td id="proftd"><%=city%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Taluka : </td>
                                <td id="proftd"><%=taluka%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Zip Code : </td>
                                <td id="proftd"><%=zipcode%></td>
                            </tr>
                            <tr>
                                <td id="proftd">District : </td>
                                <td id="proftd"><%=district%></td>
                            </tr>
                            <tr>
                                <td id="proftd">State : </td>
                                <td id="proftd"><%=state%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Country : </td>
                                <td id="proftd"><%=country%></td>
                            </tr>
                            <tr>
                                <td id="proftd">Police Station Detail : </td>
                                <td id="proftd"><%=policestation%></td>
                            </tr>
                        </table>
                            
                                <%
                                
                        } catch (Exception e) {
                            out.println(e);
                        }%>
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

