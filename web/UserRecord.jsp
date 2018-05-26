<%-- 
    Document   : UserRecord
    Created on : Oct 24, 2015, 12:48:39 PM
    Author     : USER
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User</title>
        <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
        <link href="CSS/AdminCSS.css" rel="stylesheet">
    </head>
    <body>
        
        <%@ include file="DisplayUserImage.jsp" %>
        <%
            HttpSession session1 = request.getSession(false);
            int user_id = (Integer) session.getAttribute("user_id");
            String post = (String) session.getAttribute("post");
            String email = (String) session.getAttribute("email");
            String pass = (String) session.getAttribute("pass");
            String fname = (String) session.getAttribute("fname");
            String mname = (String) session.getAttribute("mname");
            String lname = (String) session.getAttribute("lname");
            String gender = (String) session.getAttribute("gender");
            String dob = (String) session.getAttribute("dob");
            String hometelephone = (String) session.getAttribute("hometelephone");
            String policetelephone = (String) session.getAttribute("policetelephone");
            String cellnumber = (String) session.getAttribute("cellnumber");
            String flat = (String) session.getAttribute("flat");
            String street = (String) session.getAttribute("street");
            String city = (String) session.getAttribute("city");
            String taluka = (String) session.getAttribute("taluka");
            int zip = (Integer) session.getAttribute("zip");
            String dist = (String) session.getAttribute("dist");
            String state = (String) session.getAttribute("state");
            String country = (String) session.getAttribute("country");
            String ps_detail = (String) session.getAttribute("ps_detail");
        %>

       <form action="UpdateUser" method="POST">
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
                              
                                   <div id="profilePicture">
                                <img src=<%=name2%>>
                            </div>

                                <fieldset>
                                    <legend>Account Detail </legend>
                                    <table cellspacing="10">
                                        <tr> 
                                            
                                            <%
                                                String sid = "POI000";
                                                String uid = String.valueOf(user_id);
                                                String user_id2 = sid + uid;

                                            %>
                                        <input type="hidden" name="user_id" value=<%=uid%>>
                                        <td><input type="text" name="user_id2" value=<%=user_id2%> readonly></td>
                                        <td><input type="text" name="email" value="<%=email%>" placeholder="Username(E-mail)"></td>
                                        <td><input type="pass" name="pass" value="<%=pass%>" placeholder="Password"></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <select name="post">
                                                    <option value="0">Select Designation</option>

                                                    <%
                                                        if ("DGP".equals(post)) {

                                                    %>
                                                    <option value="DGP" selected>DGP</option>
                                                    <%}%>

                                                    <%
                                                        if ("CP".equals(post)) {

                                                    %>
                                                    <option value="CP" selected>CP</option>     
                                                    <%}%>

                                                    <%
                                                        if ("IGP".equals(post)) {

                                                    %>
                                                    <option value="IGP" selected>IGP</option>
                                                    <%}%>
                                                    <%
                                                        if ("DIGP".equals(post)) {

                                                    %>
                                                    <option value="DIGP" selected>DIGP</option>
                                                    <%}%>
                                                    <%
                                                        if ("Senior Superintendent".equals(post)) {

                                                    %>
                                                    <option value="Senior Superintendent" selected>Sr. Superintendent</option>
                                                    <%}%>
                                                    <%
                                                        if ("Superintendent".equals(post)) {

                                                    %>
                                                    <option value="Superintendent" selected>Superintendent</option>
                                                    <%}%>
                                                    <%
                                                        if ("ACP".equals(post)) {

                                                    %>
                                                    <option value="ACP" selected>ACP</option>
                                                    <%}%>
                                                    <%
                                                        if ("Senior Police Inspector".equals(post)) {

                                                    %>
                                                    <option value="Senior Police Inspector" selected>Senior Police Inspector</option>
                                                    <%}%>
                                                    <%
                                                        if ("Police Inspector".equals(post)) {

                                                    %>
                                                    <option value="Police Inspector" selected>Police Inspector</option>
                                                    <%}%>
                                                    <%
                                                        if ("Sub Inspector".equals(post)) {

                                                    %>
                                                    <option value="Sub Inspector" selected>Sub Inspector</option>
                                                    <%}%>
                                                    <%
                                                        if ("Assistance Sub Inspector".equals(post)) {

                                                    %>
                                                    <option value="Assistance Sub Inspector" selected>Assistance Sub Inspector</option>
                                                    <%}%>
                                                    <%
                                                        if ("Head Constable".equals(post)) {

                                                    %>
                                                    <option value="Head Constable" selected>Head Constable</option>
                                                    <%}%>
                                                    <%
                                                        if ("Constable".equals(post)) {

                                                    %>
                                                    <option value="Constable" selected>Constable</option>
                                                    <%}%>
                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>


                                <fieldset>
                                    <legend>Personal Detail  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td><input type="text" name="fname" value="<%=fname%>" placeholder="First Name"></td>
                                            <td><input type="text" name="mname" value="<%=mname%>" placeholder="Middle Name"></td>
                                            <td><input type="text" name="lname" value="<%=lname%>" placeholder="Last Name"></td>
                                        </tr>
                                        <tr>
                                            <td>
                                            <%if (gender.equals("male")) {%>
                                            <select name="gender">
                                                <option value="male" selected>Male</option>
                                                <option value="female">Female</option>     
                                            </select>
                                            <%} else {%>
                                            <select name="gender">
                                                <option value="male">Male</option>
                                                <option value="female" selected>Female</option>     
                                            </select>
                                            <%}%>
                                        </td>
                                            <td><input type="text" name="dob" value="<%=dob%>" placeholder="Date Of Birth(dd/mm/yyy)"></td>   
                                        </tr>
                                    </table>
                                </fieldset>

                                <fieldset>
                                    <legend>Contact Detail  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td><input type="text" name="hometelephone" value="<%=hometelephone%>" placeholder="Home TelePhone"></td>
                                            <td><input type="text" name="policetelephone" value="<%=policetelephone%>" placeholder="Police Station Telephone"></td>
                                            <td><input type="text" name="cellnumber" value="<%=cellnumber%>" placeholder="Cell Number"></td>
                                        </tr>
                                    </table>
                                </fieldset>

                                <fieldset>
                                    <legend>Address Detail  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td><input type="text" name="flat" value=<%=flat%> placeholder="Flat Number"></td>
                                            <td><input type="text" name="street" value="<%=street%>" placeholder="Street Name"></td>
                                            <td><input type="text" name="city" value="<%=city%>" placeholder="City"></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="taluka" value="<%=taluka%>" placeholder="Taluka"></td>
                                            <td><input type="text" name="zip" value="<%=zip%>" placeholder="Zip Code"></td>
                                            <td><input type="text" name="dist" value="<%=dist%>" placeholder="District"></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="state" value="<%=state%>" placeholder="State"></td>
                                            <td><input type="text" name="country" value="<%=country%>" placeholder="Country"></td>
                                        </tr>
                                    </table>
                                </fieldset>   


                                <fieldset>
                                    <legend>Police Station Detail  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td colspan="2"><textarea cols="110" rows="8" name="ps_detail" placeholder="Enter Police Station Name & Address Here...."><%=ps_detail%></textarea></td>
                                        </tr>
                                    </table>
                                </fieldset>


                                



                                <table align="center">
                                    <tr>
                                        <td colspan="2" align="center"><input type="submit" value="Update User" style="width: 150px; border-radius: 0px; background-color: greenyellow"></td>
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


                    <div id="Adminfooternav">
                        <div id="footersection">
                            <ul>
                                <li><a href="AdminHome.jsp">Home</a></li>
                            </ul>
                        </div>
                        <div id="footersection">
                            <ul>
                                <li><a href="AddCriminal.jsp">Add Criminal Detail</a></li>
                                <li><a href="ViewCriminal.jsp">View Criminal Detail</a></li>
                                <li><a href="SearchCriminal.jsp">Search Criminal Detail</a></li>
                            </ul>
                        </div>
                        <div id="footersection">
                            <ul>
                                <li><a href="AddCrime.jsp">Add Crime Detail</a></li>
                                <li><a href="ViewCrime.jsp">View Crime Detail</a></li>
                                <li><a href="SearchCrime.jsp">Search Crime Detail</a></li>
                            </ul>
                        </div>
                        <div id="footersection">
                            <ul>
                                <li><a href="AddUser.jsp">Add User Detail</a></li>
                                <li><a href="ViewUser.jsp">View User Detail</a></li>
                                <li><a href="SearchUser.jsp">Search User Detail</a></li>
                            </ul>
                        </div>
                        <div id="footersection">
                            <ul>
                                
                            </ul>
                        </div>
                        <div id="footersection">
                            <ul>
                                <li><a href="Predict.jsp">Predict</a></li>
                            </ul>
                        </div>
                        <div id="footersection">
                            <ul>
                          
                                <li><a href="ChangePassword.jsp">Change Password</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
      </form>
    </body>
</html>
