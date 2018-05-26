<%-- 
    Document   : Criminal_Record2
    Created on : Oct 25, 2015, 12:46:04 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Criminal Detail</title>
    </head>
    <body>
        <%
            String[] habit = new String[5];
            char c;
            String str = "";
            int j = 0;
            int id = 0;
            String habits2 = "";
            HttpSession session1 = request.getSession(false);
            id = (Integer) session1.getAttribute("criminal_id");
            String fmfname1 = (String) session.getAttribute("fmfname1");
            String fmmname1 = (String) session.getAttribute("fmmname1");
            String fmlname1 = (String) session.getAttribute("fmlname1");
            String fmgender1 = (String) session.getAttribute("fmgender1");
            String fmoccupation1 = (String) session.getAttribute("fmoccupation1");
            String fmrel1 = (String) session.getAttribute("fmrel1");
            String fmfname2 = (String) session.getAttribute("fmfname2");
            String fmmname2 = (String) session.getAttribute("fmmname2");
            String fmlname2 = (String) session.getAttribute("fmlname2");
            String fmgender2 = (String) session.getAttribute("fmgender2");
            String fmoccupation2 = (String) session.getAttribute("fmoccupation2");
            String fmrel2 = (String) session.getAttribute("fmrel2");
            String fmfname3 = (String) session.getAttribute("fmfname3");
            String fmmname3 = (String) session.getAttribute("fmmname3");
            String fmlname3 = (String) session.getAttribute("fmlname3");
            String fmgender3 = (String) session.getAttribute("fmgender3");
            String fmoccupation3 = (String) session.getAttribute("fmoccupation3");
            String fmrel3 = (String) session.getAttribute("fmrel3");
            String fmfname4 = (String) session.getAttribute("fmfname4");
            String fmmname4 = (String) session.getAttribute("fmmname4");
            String fmlname4 = (String) session.getAttribute("fmlname4");
            String fmgender4 = (String) session.getAttribute("fmgender4");
            String fmoccupation4 = (String) session.getAttribute("fmoccupation4");
            String fmrel4 = (String) session.getAttribute("fmrel4");
            String fmfname5 = (String) session.getAttribute("fmfname5");
            String fmmname5 = (String) session.getAttribute("fmmname5");
            String fmlname5 = (String) session.getAttribute("fmlname5");
            String fmgender5 = (String) session.getAttribute("fmgender5");
            String fmoccupation5 = (String) session.getAttribute("fmoccupation5");
            String fmrel5 = (String) session.getAttribute("fmrel5");
            String frdfname1 = (String) session.getAttribute("frdfname1");
            String frdlname1 = (String) session.getAttribute("frdlname1");
            String frdgender1 = (String) session.getAttribute("frdgender1");
            String frdcity1 = (String) session.getAttribute("frdcity1");
            String frdmob1 = (String) session.getAttribute("frdmob1");
            String frdcriminalid1 = (String) session.getAttribute("frdcriminalid1");
            String frdfname2 = (String) session.getAttribute("frdfname2");
            String frdlname2 = (String) session.getAttribute("frdlname2");
            String frdgender2 = (String) session.getAttribute("frdgender2");
            String frdcity2 = (String) session.getAttribute("frdcity2");
            String frdmob2 = (String) session.getAttribute("frdmob2");
            String frdcriminalid2 = (String) session.getAttribute("frdcriminalid2");
            String frdfname3 = (String) session.getAttribute("frdfname3");
            String frdlname3 = (String) session.getAttribute("frdlname3");
            String frdgender3 = (String) session.getAttribute("frdgender3");
            String frdcity3 = (String) session.getAttribute("frdcity3");
            String frdmob3 = (String) session.getAttribute("frdmob3");
            String frdcriminalid3 = (String) session.getAttribute("frdcriminalid3");
            String std1 = (String) session.getAttribute("std1");
            String scname1 = (String) session.getAttribute("scname1");
            String city1 = (String) session.getAttribute("city1");
            String yearofpass1 = (String) session.getAttribute("yearofpass1");
            String std2 = (String) session.getAttribute("std2");
            String scname2 = (String) session.getAttribute("scname2");
            String city2 = (String) session.getAttribute("city2");
            String yearofpass2 = (String) session.getAttribute("yearofpass2");
            String std3 = (String) session.getAttribute("std3");
            String scname3 = (String) session.getAttribute("scname3");
            String city3 = (String) session.getAttribute("city3");
            String yearofpass3 = (String) session.getAttribute("yearofpass3");
            String std4 = (String) session.getAttribute("std4");
            String scname4 = (String) session.getAttribute("scname4");
            String city4 = (String) session.getAttribute("city4");
            String yearofpass4 = (String) session.getAttribute("yearofpass4");
            String std5 = (String) session.getAttribute("std5");
            String scname5 = (String) session.getAttribute("scname5");
            String city5 = (String) session.getAttribute("city5");
            String yearofpass5 = (String) session.getAttribute("yearofpass5");
        %>
        <input type="text" name="criminal_id" value=<%=id%>>
        <%--
        int i=id;
        HttpSession s=request.getSession();
        s.setAttribute("criminal_id", i);
        RequestDispatcher rd6=request.getRequestDispatcher("UpdateCriminalRecord2");
        rd6.forward(request, response);


        --%>


        <%--
            if ("".equals(fmfname1)) {
                fmfname1 = "NA";
                fmmname1 = "NA";
                fmlname1 = "NA";
                fmgender1 = "NA";
                fmoccupation1 = "NA";
                fmrel1 = "NA";
            }
            if ("".equals(fmfname2)) {
                fmfname2 = "NA";
                fmmname2 = "NA";
                fmlname2 = "NA";
                fmgender2 = "NA";
                fmoccupation2 = "NA";
                fmrel2 = "NA";
            }
            if ("".equals(fmfname3)) {
                fmfname3 = "NA";
                fmmname3 = "NA";
                fmlname3 = "NA";
                fmgender3 = "NA";
                fmoccupation3 = "NA";
                fmrel3 = "NA";
            }
            if ("".equals(fmfname4)) {
                fmfname4 = "NA";
                fmmname4 = "NA";
                fmlname4 = "NA";
                fmgender4 = "NA";
                fmoccupation4 = "NA";
                fmrel4 = "NA";
            }
            if ("".equals(fmfname5)) {
                fmfname5 = "NA";
                fmmname5 = "NA";
                fmlname5 = "NA";
                fmgender5 = "NA";
                fmoccupation5 = "NA";
                fmrel5 = "NA";
            }

                if ("".equals(frdfname1)) {
                    frdfname1 = "NA";
                    frdlname1 = "NA";
                    frdgender1 = "NA";
                    frdcity1 = "NA";
                    frdmob1 = "NA";
                    frdcriminalid1 = "NA";
                }

                if ("".equals(frdfname2)) {
                    frdfname2 = "NA";
                    frdlname2 = "NA";
                    frdgender2 = "NA";
                    frdcity2 = "NA";
                    frdmob2 = "NA";
                    frdcriminalid2 = "NA";
                }

                if ("".equals(frdfname3)) {
                    frdfname3 = "NA";
                    frdlname3 = "NA";
                    frdgender3 = "NA";
                    frdcity3 = "NA";
                    frdmob3 = "NA";
                    frdcriminalid3 = "NA";
                }

                if ("".equals(scname1)) {
                    scname1 = "NA";
                    city1 = "NA";
                    yearofpass1 = "NA";
                }


                if ("".equals(scname2)) {
                    scname2 = "NA";
                    city2 = "NA";
                    yearofpass2 = "NA";
                }

                if ("".equals(scname3)) {
                    scname3 = "NA";
                    city3 = "NA";
                    yearofpass3 = "NA";
                }


                if ("".equals(scname4)) {
                    scname4 = "NA";
                    city4 = "NA";
                    yearofpass4 = "NA";
                }


                if ("".equals(scname5)) {
                    scname5 = "NA";
                    city5 = "NA";
                    yearofpass5 = "NA";
                }
        --%>


        <div id="centeredDiv">
            <fieldset>
                <legend>Family Detail  </legend>
                <table>
                    <tr>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmfname1" placeholder="First Name" id="data_arrange" style="width:140px; padding:0px 0px; margin:0px 0px 0px 0px; font-size:smaller; font-weight:normal;" value="<%=fmfname1%>" ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname1" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight:normal;"value="<%=fmmname1%>" ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname1" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value=""<%=fmlname1%>"></td>

                        <td style="padding-bottom: 0.3em;">
                            <%if (fmgender1.equals("NA")) {%>
                            <select name="fmgender1" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (fmgender1.equals("male")) {%>
                            <select name="fmgender1" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="fmgender1" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation1" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmoccupation1%>"></td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel1" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value=""<%=fmrel1%>"></td>

                    </tr>

                    <tr>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmfname2" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmfname2%>" ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname2" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" value="<%=fmmname2%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname2" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmlname2%>"></td>

                        <td style="padding-bottom: 0.3em;">
                            <%if (fmgender2.equals("NA")) {%>
                            <select name="fmgender2" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (fmgender2.equals("male")) {%>
                            <select name="fmgender2" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="fmgender2" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation2" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmoccupation2%>"></td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel2" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmrel2%>"></td>

                    </tr>

                    <tr>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmfname3" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=fmfname3%>"  ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname3" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" value="<%=fmmname3%>" ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname3" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmlname3%>" ></td>

                        <td style="padding-bottom: 0.3em;">
                            <%if (fmgender3.equals("NA")) {%>
                            <select name="fmgender3" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (fmgender3.equals("male")) {%>
                            <select name="fmgender3" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="fmgender3" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation3" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmoccupation3%>"></td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel3" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmrel3%>"></td>

                    </tr>

                    <tr>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmfname4" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmfname4%>" ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname4" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"value="<%=fmmname4%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname4" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmlname4%>"></td>

                        <td style="padding-bottom: 0.3em;">
                            <%if (fmgender4.equals("NA")) {%>
                            <select name="fmgender4" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (fmgender4.equals("male")) {%>
                            <select name="fmgender4" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="fmgender4" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation4" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmoccupation4%>"></td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel4" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=fmrel4%>"></td>

                    </tr>


                    <tr>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmfname5" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmfname5%>" ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmmname5" placeholder="Middle Name" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"value="<%=fmmname5%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmlname5" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmlname5%>"></td>

                        <td style="padding-bottom: 0.3em;">
                            <%if (fmgender5.equals("NA")) {%>
                            <select name="fmgender5" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (fmgender5.equals("male")) {%>
                            <select name="fmgender5" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="fmgender5" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmoccupation5" placeholder="Occupation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=fmoccupation5%>"></td>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="fmrel5" placeholder="Relation" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=fmrel5%>"></td>
                    </tr>    
                </table>
            </fieldset>
            <fieldset>
                <legend>Friend Circle  </legend>
                <table>
                    <tr>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdfname1" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdfname1%>" ></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdlname1" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdlname1%>"></td>
                        <td style="padding-bottom: 0.3em;">
                            <%if (frdgender1.equals("NA")) {%>
                            <select name="frdgender1" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (frdgender1.equals("male")) {%>
                            <select name="frdgender1" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="frdgender1" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdcity1" placeholder="City" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdcity1%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdmob1" placeholder="Mobile Number" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdmob1%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdcriminalid1" placeholder="Criminal Id(If any)" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdcriminalid1%>"></td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdfname2" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"  value="<%=frdfname2%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdlname2" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdlname2%>"></td>
                        <td style="padding-bottom: 0.3em;">
                            <%if (frdgender2.equals("NA")) {%>
                            <select name="frdgender2" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (frdgender2.equals("male")) {%>
                            <select name="frdgender1" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="frdgender2" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdcity2" placeholder="City" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdcity2%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdmob2" placeholder="Mobile Number" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=frdmob2%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdcriminalid2" placeholder="Criminal Id(If any)" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdcriminalid2%>"></td>

                    </tr>

                    <tr>

                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdfname3" placeholder="First Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"  value="<%=frdfname3%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdlname3" placeholder="Last Name" style="width: 140px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=frdlname3%>"></td>
                        <td style="padding-bottom: 0.3em;">
                            <%if (frdgender3.equals("NA")) {%>
                            <select name="frdgender3" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0" selected>Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else if (frdgender3.equals("male")) {%>
                            <select name="frdgender3" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male" selected>Male</option>
                                <option value="female">Female</option>   
                            </select>
                            <%} else {%>
                            <select name="frdgender3" style="width: 140px;padding: 0px 0px;margin:0px 0px 0px 0px;font-size: smaller;font-weight: normal;">
                                <option value="0">Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female" selected>Female</option>     
                            </select>
                            <%}%>
                        </td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdcity3" placeholder="City" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=frdcity3%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdmob3" placeholder="Mobile Number" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=frdmob3%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="frdcriminalid3" placeholder="Criminal Id(If any)" style="width: 140px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=frdcriminalid3%>"></td>
                    </tr>
                </table>
            </fieldset>
            <fieldset>
                <legend>Educational Detail  </legend>
                <table>
                    <tr>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="srno1" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"  value="1"readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="std1" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"value="7th" readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="scname1" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=scname1%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="city1" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=city1%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass1" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=yearofpass1%>"></td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="srno2" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="2" readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="std2"  style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;" value="10th" readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="scname2" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=scname2%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="city2" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=city2%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass2" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=yearofpass2%>"></td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="srno3"  style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="3"readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="std3"  style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"value="12th" readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="scname3" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=scname3%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="city3" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=city3%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass3" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=yearofpass3%>"></td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="srno4" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="4"readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="std4" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"value="Graduation" readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="scname4" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=scname4%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="city4" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=city4%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass4" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=yearofpass4%>"></td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="srno5"style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="5"readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="std5"style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;;font-weight: normal;"value="Post Graduation" readonly></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="scname5" placeholder="School/College Name" style="width: 160px;padding: 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;" value="<%=scname5%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="city5" placeholder="City" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=city5%>"></td>
                        <td style="padding-bottom: 0.3em;"><input type="text" name="yearofpass5" placeholder="Year Of Passing" style="width: 160px;padding: 0px 0px 0px 0px;margin: 0px 0px 0px 0px;font-size: smaller;font-weight: normal;"value="<%=yearofpass5%>"></td>
                    </tr>
                </table>
            </fieldset>

    </body>
</html>
