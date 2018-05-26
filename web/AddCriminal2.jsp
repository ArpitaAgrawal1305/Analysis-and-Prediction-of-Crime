<%-- 
    Document   : AddCriminal2
    Created on : Oct 12, 2015, 3:15:01 PM
    Author     : USER
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Criminal</title>
        <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
        <link href="CSS/AdminCSS.css" rel="stylesheet">
    </head>
    <body>
        <form action="AddCriminal2" method="POST">
            <div id="mainDIv">
                <div id="mainDiv2">
                    <div id="HeaderDiv">
                        Crime analysis and prediction using data mining
                    </div>

                    <%@ include file="CriminalIdGenerator.jsp" %>

                    <input type="hidden" name="id" value="<%=temp%>">

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
                            <li><a href="#">Setting</a>
                                <ul>
                                    <li><a href="ViewProfile.jsp">View Profile</a></li>
                                    <li><a href="ChangePassword.jsp">Change Password</a></li>

                                </ul>
                            </li>
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
                                <li><a href="ViewProfile.jsp">View Profile</a></li>
                                <li><a href="ChangePassword.jsp">Change Password</a></li>
                                <li><a href="Logout.jsp">Logout</a></li>
                            </ul>
                        </div>

                        <div id="centeredDiv">
                            <div id="maindata">
                                <table>
                                    <tr>
                                        <td colspan="2"><h2 align="center">Add Criminal</h2></td>
                                    </tr>
                                </table>


                                <fieldset>
                                    <legend>Occupation Detail  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td><input type="text" name="occupation" placeholder="Occupation Type(Business/Service)"></td>
                                            <td><input type="text" name="salary" placeholder="Income/Salary"></td>
                                            <td><input type="text" name="wplace" placeholder="Working Place"></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="company" placeholder="Shop/Company Name"></td>
                                            <td><input type="text" name="telephone" placeholder="Office Telephone"></td>
                                            <td><input type="text" name="officemob" placeholder="Office Mobile"></td>
                                        </tr>

                                    </table>
                                </fieldset>



                                <fieldset>
                                    <legend>Family Detail  </legend>
                                    <table cellspacing="0">
                                        <tr>

                                            <td style="padding-bottom: 0.3em;padding-left: 0em;"><input type="hidden" name="rownum" value="1"><input type="text" name="fmfname1" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;padding-left: 0em;"><input type="text" name="fmmname1" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;padding-left: 0em;"><input type="text" name="fmlname1" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;padding-left: 0em;">
                                                <select name="fmgender1" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>   

                                            </td>

                                            <td style="padding-bottom: 0.3em;padding-left: 0em;"><input type="text" name="fmoccupation1" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;padding-left: 0em;"><input type="text" name="fmrel1" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>

                                        <tr>

                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="2"><input type="text" name="fmfname2" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname2" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname2" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;">
                                                <select name="fmgender2" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>   

                                            </td>

                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation2" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel2" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>

                                        <tr>

                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="3"><input type="text" name="fmfname3" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname3" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname3" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;">
                                                <select name="fmgender3" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>   

                                            </td>

                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation3" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel3" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>

                                        <tr>

                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="4"><input type="text" name="fmfname4" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname4" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname4" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;">
                                                <select name="fmgender4" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>   

                                            </td>

                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation4" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel4" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>

                                        <tr>

                                            <td><input type="hidden" name="rownum" value="5"><input type="text" name="fmfname5" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname5" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"></td>
                                            <td><input type="text" name="fmlname5" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td>
                                                <select name="fmgender5" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>   

                                            </td>

                                            <td><input type="text" name="fmoccupation5" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                            <td><input type="text" name="fmrel5" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>
                                    </table>
                                </fieldset>


                                <fieldset>
                                    <legend>Friend Circle  </legend>
                                    <table>


                                        <tr>

                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="1"><input type="text" name="frdfname1" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdlname1" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;">
                                                <select name="frdgender1" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>  
                                            </td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdcity1" placeholder="City" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdmob1" placeholder="Mobile Number" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdcriminalid1" placeholder="Criminal Id(if any)" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>

                                        <tr>

                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="2"><input type="text" name="frdfname2" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdlname2" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;">
                                                <select name="frdgender2" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>  
                                            </td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdcity2" placeholder="City" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdmob2" placeholder="Mobile Number" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdcriminalid2" placeholder="Criminal Id(if any)" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>

                                        <tr>

                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="3"><input type="text" name="frdfname3" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" ></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdlname3" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;">
                                                <select name="frdgender3" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                                    <option value="0">Select Gender</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>  
                                            </td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdcity3" placeholder="City" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdmob3" placeholder="Mobile Number" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="frdcriminalid3" placeholder="Criminal Id(if any)" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>

                                        </tr>
                                    </table>
                                </fieldset>


                                <fieldset>
                                    <legend>Educational Detail  </legend>
                                    <table>
                                        <tr>
                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="1"><input type="text" name="srno1" value="1" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"  readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="std1" value="7th" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="scname1" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="city1" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass1" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                        </tr>
                                        <tr>
                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="2"><input type="text" name="srno2" value="2" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"  readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="std2" value="10th" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="scname2" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="city2" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass2" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                        </tr>
                                        <tr>
                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="3"><input type="text" name="srno3" value="3" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="std3" value="12th" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="scname3" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="city3" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass3" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                        </tr>
                                        <tr>
                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="4"><input type="text" name="srno4" value="4" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="std4" value="Graduation" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="scname4" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="city4" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass4" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                        </tr>
                                        <tr>
                                            <td style="padding-bottom: 0.3em;"><input type="hidden" name="rownum" value="5"><input type="text" name="srno5" value="5" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="std5" value="Post Graduation" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" readonly></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="scname5" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="city5" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                            <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass5" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"></td>
                                        </tr>
                                    </table>
                                </fieldset>









                                <table align="center">
                                    <tr>
                                        <td colspan="2" align="center"><input type="submit" value="Add Criminal" style="width: 150px; border-radius: 0px; background-color: greenyellow"></td>
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
