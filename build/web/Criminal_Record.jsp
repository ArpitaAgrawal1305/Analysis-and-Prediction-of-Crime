<%-- 
    Document   : Criminal_Record
    Created on : Oct 25, 2015, 11:57:09 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Criminal Detail</title>
          <%@ include file="DisplayImage.jsp" %>
    </head>
    <body>
      

            <%
                String[] habit = new String[5];
                char c;
                String str = "";
                int j = 0;
           
                HttpSession session1 = request.getSession(false);
                int id = (Integer) session1.getAttribute("criminal_id");
                String mt = (String) session1.getAttribute("mt");
                String e1 = (String) session1.getAttribute("e");
                String fname = (String) session1.getAttribute("fname");
                String mname = (String) session1.getAttribute("mname");
                String lname = (String) session1.getAttribute("lname");
                String gender = (String) session1.getAttribute("gender");
                String dob = (String) session1.getAttribute("dob");
                String pob = (String) session1.getAttribute("pob");
                String htele = (String) session1.getAttribute("htele");
                String otele = (String) session1.getAttribute("otele");
                String cell = (String) session1.getAttribute("cell");
                String flat = (String) session1.getAttribute("flat");
                String street = (String) session1.getAttribute("street");
                String city = (String) session1.getAttribute("city");
                String taluka = (String) session1.getAttribute("taluka");
                int zip = (Integer) session1.getAttribute("zip");
                String dist = (String) session1.getAttribute("dist");
                String state = (String) session1.getAttribute("state");
                String country = (String) session1.getAttribute("country");
                String habits = (String) session1.getAttribute("habit");
                String occupation = (String) session.getAttribute("occupation");
                int salary = (Integer) session.getAttribute("salary");
                String wplace = (String) session.getAttribute("wplace");
                String company = (String) session.getAttribute("company");
                String telephone = (String) session.getAttribute("telephone");
                String officemob = (String) session.getAttribute("officemob");
            %>
           
                    <div id="centeredDiv">
                        <div id="maindata">
                            <div id="profilePicture">
                                <img src=<%=name2%>>
                            </div>
                            <fieldset>
                                <legend>Primary Detail  </legend>
                                <table cellspacing="10">
                                    <tr>
                                        <%@ include file="CriminalIdGenerator.jsp" %>
                                        <td>
                                            <%
                                            String id2="CRN000"+id;
                                            %>
                                            <input type="text" name="criminalid1" value=<%=id2%> readonly></td>
                                        <td><input type="text" name="mother_tongue" value="<%=mt%>" placeholder="mother toungue"></td>
                                        <td>
                                            <%if (e1.equals("dead")) {%>
                                            <select name="existance">
                                                <option value="dead" selected>Dead</option>
                                                <option value="alive">Alive</option> 
                                                <option value="unknown">Unknown</option> 
                                            </select>
                                            <%} else if (e1.equals("alive")) {%>
                                            <select name="existance">
                                                <option value="dead">Dead</option>
                                                <option value="alive" selected>Alive</option> 
                                                <option value="unknown">Unknown</option> 
                                            </select>
                                            <%} else {%>
                                            <select name="existance">
                                                <option value="dead">Dead</option>
                                                <option value="alive">Alive</option> 
                                                <option value="unknown" selected>Unknown</option> 
                                            </select>
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
                                        <td><input type="text" name="dob" value="<%=dob%>"></td>
                                        <td><input type="text" name="pob" value="<%=pob%>"></td>
                                    </tr>
                                </table>
                            </fieldset>
                            <fieldset>
                                <legend>Contact Detail  </legend>
                                <table cellspacing="10">
                                    <tr>
                                        <td><input type="text" name="hometelephone" value="<%=htele%>" placeholder="Home Telephone"></td>
                                        <td><input type="text" name="officetelephone" value="<%=otele%>" placeholder="Office Telephone"></td>
                                        <td><input type="text" name="cellnumber" value="<%=cell%>" placeholder="Cell Number"></td>
                                    </tr>
                                </table>
                            </fieldset>
                            <fieldset>
                                <legend>Address Detail  </legend>
                                <table cellspacing="10">
                                    <tr>
                                        <td><input type="text" name="flat" value="<%=flat%>" placeholder="Flat Number"></td>
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
                                <legend>Habit Detail  </legend>
                                <table cellspacing="10">
                                    <tr>
                                        <td>
                                            <%
                                                String t = "unchecked";

                                                for (int i = 0; i < habits.length(); i++) {
                                                    c = habits.charAt(i);

                                                    if (Character.isLetter(c)) {
                                                        str = str + c;
                                                    } else {

                                  if (str.equals("smoking")) {
                                      t = "checked";
                                      break;
                                  } else {
                                      t = "unchecked";
                                  }
                                  str = "";
                              }
                          }%>
                                            <input type="checkbox" <%=t%> name="habit" value="smoking" style="width: 50px; height:5px;">Smoking</td>        
                                        <td>
                                            <%
                                                t = "unchecked";

                                                for (int i = 0; i < habits.length(); i++) {
                                                    c = habits.charAt(i);

                                                    if (Character.isLetter(c)) {
                                                        str = str + c;
                      } else {
                          if (str.equals("drinking")) {
                              t = "checked";
                              break;
                          } else {
                              t = "unchecked";
                          }
                          str = "";
                      }
                  }%>
                                            <input type="checkbox" <%=t%> name="habit" value="drinking" style="width: 50px; height: 5px;">Drinking</td>
                                        <td>
                                            <%
                                                t = "unchecked";

                                                for (int i = 0; i < habits.length(); i++) {
                                                    c = habits.charAt(i);

                                                    if (Character.isLetter(c)) {
                                                        str = str + c;
                             } else {

                                 if (str.equals("fighting")) {
                                     t = "checked";
                                     break;
                                 } else {
                                     t = "unchecked";
                                 }
                                 str = "";
                             }
                         }%>
                                            <input type="checkbox" <%=t%> name="habit" value="fighting" style="width: 50px; height: 5px;">Fighting</td>
                                    </tr>
                                    <tr>
                                        <td>

                                            <%
                                                t = "unchecked";

                                                for (int i = 0; i < habits.length(); i++) {
                                                    c = habits.charAt(i);

                                                    if (Character.isLetter(c)) {
                                                        str = str + c;
                                      } else {

                                          if (str.equals("drugs")) {
                                              t = "checked";
                                              break;
                                          } else {
                                              t = "unchecked";
                                          }
                                          str = "";
                                      }
                                  }%>
                                            <input type="checkbox" <%=t%> name="habit" value="drugs" style="width: 50px; height:5px;">Drugs</td>
                                        <td>
                                            <%
                                                t = "unchecked";

                                                for (int i = 0; i < habits.length(); i++) {
                                                    c = habits.charAt(i);

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
                                            <input type="checkbox" <%=t%> name="habit" value="other" style="width: 50px; height: 5px;">Other</td>
                                    </tr>
                                </table>       
                            </fieldset>
                            <fieldset>
                                <legend>Occupation Detail  </legend>
                                <table cellspacing="10">
                                    <tr>
                                        <td><input type="text" name="occupation" value="<%=occupation%>"></td>
                                        <td><input type="text" name="salary" value="<%=salary%>"></td>
                                        <td><input type="text" name="wplace" value="<%=wplace%>"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="company" value="<%=company%>"></td>
                                        <td><input type="text" name="telephone" value="<%=telephone%>"></td>
                                        <td><input type="text" name="officemob" value="<%=officemob%>"></td>
                                    </tr>

                                </table>
                            </fieldset>
    </body>
</html>
