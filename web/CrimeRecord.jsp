<%-- 
    Document   : CrimeRecord
    Created on : Oct 21, 2015, 3:28:01 PM
    Author     : USER
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crime Detail</title>
        <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
        <link href="CSS/AdminCSS.css" rel="stylesheet">
    </head>
    <body>


 



        <form action="UpdateCrime" method="POST">
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

                          <%@ include file="Crime_Record.jsp" %>
                           <table align="center">
                                    <tr>
                                        <td colspan="2" align="center"><input type="submit" value="Update Crime" style="width: 150px; border-radius: 0px; background-color: greenyellow"></td>
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
            </div>
        </form>
    </body>
</html>
