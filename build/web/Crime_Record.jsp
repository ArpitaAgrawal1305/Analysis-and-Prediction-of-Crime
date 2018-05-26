<%-- 
    Document   : Crime_Record
    Created on : Oct 25, 2015, 1:47:27 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crime Detail</title>
    </head>
    <body>
              <%
            String[] crime_types = new String[9];
            char c;
            String str = "";
            int j = 0;
           
            HttpSession session1 = request.getSession(false);
            int crime_id = (Integer) session1.getAttribute("crime_id");
            int criminal_id = (Integer) session1.getAttribute("criminal_id");
            String crime_type = (String) session1.getAttribute("crime_type");
            String crime_description = (String) session1.getAttribute("crime_description");
            String date_of_crime = (String) session1.getAttribute("date_of_crime");
            String date_of_report = (String) session1.getAttribute("date_of_report");
            String area = (String) session1.getAttribute("area");
            String city = (String) session1.getAttribute("city");
            String taluka = (String) session1.getAttribute("taluka");
            int zip = (Integer) session1.getAttribute("zip");
            String dist = (String) session1.getAttribute("dist");
            String state = (String) session1.getAttribute("state");
            String country = (String) session1.getAttribute("country");
            String arrestradio = (String) session1.getAttribute("arrestradio");
            String iofficerid = (String) session1.getAttribute("iofficerid");
            String police_station = (String) session1.getAttribute("police_station");
        %>
       <div id="centeredDiv">
                            <div id="maindata">
                                <table>
                                    <tr>
                                        <td colspan="2"><h2 align="center">View Crime</h2></td>
                                    </tr>
                                </table>
                                <fieldset>
                                    <legend>Criminal Id </legend>
                                    <table cellspacing="10">
                                        <tr> 
                                              <%
                                            String id2="CRN000"+criminal_id;
                                            %>
                                        <input type="hidden" name="crime_id" value="<%=crime_id%>">
                                        <td colspan="2" align="center"><input type="text" name="criminalid" placeholder="Criminal Id" value="<%=id2%>" readonly></td>
                                        </tr>
                                    </table>
                                </fieldset>

                                <fieldset>
                                    <legend>Crime Type  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td>
                                                <%
                                                    String t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("childabuse")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                                                <input type="checkbox" name="crime_type" <%=t%> value="childabuse" style="width: 50px; height: 5px;">Child Abuse</td>
                                            <td>
                                                  <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("domesticviolence")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                               <input type="checkbox" name="crime_type" <%=t%> value="domesticviolence" style="width: 50px; height: 5px;">Domestic Violence</td>
                                            <td>
                                                   <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("assault")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                               <input type="checkbox" name="crime_type" <%=t%> value="assault" style="width: 50px; height: 5px;">Assault</td>

                                        </tr>
                                        <tr>
                                            <td>
                                                   <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("murder")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                                                <input type="checkbox" name="crime_type" <%=t%> value="murder" style="width: 50px; height: 5px;">Murder</td>
                                            <td>
                                                   <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("homicide")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                                                <input type="checkbox" name="crime_type" <%=t%> value="homicide" style="width: 50px; height: 5px;">Homicide</td>
                                            <td>
                                                   <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("dwi")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                                                <input type="checkbox" name="crime_type" <%=t%> value="dwi" style="width: 50px; height: 5px;">DWI*</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                   <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("robbery")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                                                <input type="checkbox" name="crime_type" <%=t%> value="robbery" style="width: 50px; height: 5px;">Robbery</td>
                                            <td>
                                                   <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("hitandrun")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                       str = "";
                                   }
                               }%>
                                                <input type="checkbox" name="crime_type" <%=t%> value="hitandrun" style="width: 50px; height: 5px;">Hit & Run</td>
                                            <td>
                                                   <%
                                                    t = "unchecked";

                                                    for (int i = 0; i < crime_type.length(); i++) {
                                                        c = crime_type.charAt(i);

                                                        if (Character.isLetter(c)) {
                                                            str = str + c;
                                                        } else {

                                                            if (str.equals("other")) {
                                                                t = "checked";
                                                                break;
                                                            } else {
                                                                t = "unchecked";
                                       }
                                                            
                                       str = "";
                                   }
                               }%>
                               
                                                <input type="checkbox" name="crime_type" <%=t%> value="other" style="width: 50px; height: 5px;">Other</td>
                                        </tr>

                                    </table>
                                </fieldset>  



                                <fieldset>
                                    <legend>Crime Detail  </legend>
                                    <table cellspacing="10">
                                        <tr>

                                            <td colspan="2"><textarea name="crime_description" cols="110" rows="8" placeholder="Enter Crime Description Here...."><%=crime_description%></textarea></td>

                                        </tr>
                                        <tr>
                                            <td><input type="text" name="dateofcrime" placeholder="Date Of Crime(dd/mm/yyyy)" value="<%=date_of_crime%>"></td>
                                            <td><input type="text" name="dateofreport" placeholder="Date Of Crime Reported(dd/mm/yyyy)" value="<%=date_of_report%>"></td>
                                        </tr>
                                    </table>
                                </fieldset>

                                <fieldset>
                                    <legend>Location Of Crime  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td><input type="text" name="street" placeholder="Area" value="<%=area%>"></td>
                                            <td><input type="text" name="city" placeholder="City" value="<%=city%>"></td>
                                            <td><input type="text" name="taluka" placeholder="Taluka" value="<%=taluka%>"></td>
                                        </tr>
                                        <tr> 
                                            <td><input type="text" name="zip" placeholder="Zip Code" value="<%=zip%>"></td>
                                            <td><input type="text" name="dist" placeholder="District" value="<%=dist%>"></td>
                                            <td><input type="text" name="state" placeholder="State" value="<%=state%>"></td>
                                        </tr>
                                        <tr>  
                                            <td><input type="text" name="country" placeholder="Country" value="<%=country%>"></td>
                                        </tr>
                                    </table>
                                </fieldset>

                                <fieldset>
                                    <legend>Other Detail  </legend>
                                    <table cellspacing="10">
                                        <tr>
                                            <td>Has arrest been made? </td>
                                            <td>
                                                <%
                                                String ar="unchecked";
if("on".equals(arrestradio))
{
    ar="checked";
}
%>
<input type="radio" name="arrestradio" style="width: 50px; height: 5px;" value="yes" <%=ar%>>YES
                                                <%
  ar="unchecked";
if("on".equals(arrestradio))
{
    ar="checked";
}
%>
<input type="radio" name="arrestradio" style="width: 50px; height: 5px;" value="no" <%=ar%>>NO
                                            </td>
                                            <td><input type="text" name="iofficerid" placeholder="Investigation Officer Id" value="<%=iofficerid%>"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><textarea name="police_station" cols="110" rows="8" placeholder="Enter Name and Address Of Police Department...."><%=police_station%></textarea></td>
                                        </tr>

                                    </table>
                                </fieldset>
                               
                          

    </body>
</html>
