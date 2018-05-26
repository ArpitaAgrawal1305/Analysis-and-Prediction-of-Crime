<%-- 
    Document   : ChangePassword
    Created on : Oct 25, 2015, 5:56:25 PM
    Author     : USER
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
        <link href="CSS/AdminCSS.css" rel="stylesheet">
    </head>
    <body>
        <form action="UserChangePassword" method="POST">

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
int user_id=0;
    HttpSession session1 = request.getSession(false);
        user_id = (Integer) session.getAttribute("user_id");
                    %>
%>
                        <div id="centeredDiv">
                            <div id="changepass">
                                <input type="hidden" name="user_id" value="<%=user_id%>">
                                <table>
                                    <tr>
                                        <td colspan="2"><h3 align="center">Change Password</h3></td>
                                    </tr>
                                    <tr>
                                        <td>Old Password :</td>
                                        <td><input type="password" name="oldpass" style="width: 200px;"></td>
                                    </tr>
                                    <tr>
                                        <td>New Password :</td>
                                        <td><input type="password" name="newpass" style="width: 200px;"></td>
                                    
                                    </tr>

                                    <tr>
                                        <td><input type="submit" value="Submit" style="width: 150px; border-radius: 0px; background-color: greenyellow"></td>
                                        <td><input type="reset" value="Cancel" style="width: 150px; border-radius: 0px; background-color: greenyellow"></td>
                                    </tr>
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
        </form>
    </body>
</html>
