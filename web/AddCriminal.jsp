<%-- 
    Document   : AddCriminal
    Created on : Oct 11, 2015, 4:13:01 PM
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
        <form action="AddCriminal1" method="POST" enctype="multipart/form-data">
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
                      <table>
                  <tr>
                      <td colspan="2"><h2 align="center">Add Criminal</h2></td>
                  </tr>
                     </table>
                   
                         <fieldset>
                      <legend>Profile Picture</legend>
                      <table align="center" width="100%">
                   <table align="center">
                  <tr>
                      <td align="center">Select Image : </td>
                      <td align="center"><input type="file" name="image"></td>
                  </tr>
              </table>
                      </table>
                  </fieldset>
                       
                       
                        <fieldset>
                      <legend>Primary Detail  </legend>
                      <table cellspacing="10">
                  <tr>
                      <%@ include file="CriminalIdGenerator.jsp" %>
                      <%
String id="CRN000";
String cid=String.valueOf(temp);
String criminal_id=id+cid;            

%>
                      <td>
                          <input type="hidden" name="criminalid" value=<%=cid%>>
                          <input type="text" name="criminalid1" value=<%=criminal_id%> readonly></td>
                      <td><input type="text" name="mother_tongue" placeholder="mother toungue"></td>
                      <td>
                             <select name="existance">
                              <option value="0">Select Existance</option>
                              <option value="dead">Dead</option>
                              <option value="alive">Alive</option> 
                          <option value="unknown">Unknown</option> 
                          
                      </td>
                  </tr>
                 
                      </table>
                  </fieldset>
                       
                       
                  <fieldset>
                      <legend>Personal Detail  </legend>
                      <table cellspacing="10">
                  <tr>
                      <td><input type="text" name="fname" placeholder="First Name"></td>
                      <td><input type="text" name="mname" placeholder="Middle Name"></td>
                      <td><input type="text" name="lname" placeholder="Last Name"></td>
                  </tr>
                  <tr>
                      <td>
                            <select name="gender">
                              <option value="0">Select Gender</option>
                              <option value="male">Male</option>
                              <option value="female">Female</option>     
                      </td>
                      <td><input type="text" name="dob" placeholder="Date Of Birth(dd/mm/yyy)"></td>
                       <td><input type="text" name="pob" placeholder="Place Of Birth"></td>
                  </tr>
                      </table>
                  </fieldset>
                   
                   
                   <fieldset>
                      <legend>Contact Detail  </legend>
                      <table cellspacing="10">
                  <tr>
                      <td><input type="text" name="hometelephone" placeholder="Home TelePhone"></td>
                      <td><input type="text" name="officetelephone" placeholder="Office Telephone"></td>
                      <td><input type="text" name="cellnumber" placeholder="Cell Number"></td>
                  </tr>
                    </table>
                  </fieldset>
                   
                   <fieldset>
                      <legend>Address Detail  </legend>
                      <table cellspacing="10">
                  <tr>
                      <td><input type="text" name="flat" placeholder="Flat Number"></td>
                      <td><input type="text" name="street" placeholder="Street Name"></td>
                      <td><input type="text" name="city" placeholder="City"></td>
                  </tr>
                  <tr>
                      <td><input type="text" name="taluka" placeholder="Taluka"></td>
                      <td><input type="text" name="zip" placeholder="Zip Code"></td>
                      <td><input type="text" name="dist" placeholder="District"></td>
                  </tr>
                  <tr>
                      <td><input type="text" name="state" placeholder="State"></td>
                      <td><input type="text" name="country" placeholder="Country"></td>
                  </tr>
                      </table>
                  </fieldset>
                   
                   
                  
                   
                   
                   <fieldset>
                      <legend>Habit Detail  </legend>
                      <table cellspacing="10">
                  <tr>
                      <td><input type="checkbox" name="habit" value="smoking" style="width: 50px; height: 5px;">Smoking</td>
                      <td><input type="checkbox" name="habit" value="drinking" style="width: 50px; height: 5px;">Drinking</td>
                      <td><input type="checkbox" name="habit" value="fighting" style="width: 50px; height: 5px;">Fighting</td>
                      
                  </tr>
                  <tr>
                      <td><input type="checkbox" name="habit" value="drugs" style="width: 50px; height: 5px;">Drugs</td>
                      <td><input type="checkbox" name="habit" value="other" style="width: 50px; height: 5px;">Other</td>
                      
                  </tr>
                      </table>
                  </fieldset>

                   
                     
                   
                       <table align="center">
                  <tr>
                      <td colspan="2" align="center"><input type="submit" value="Continue&Gt;" style="width: 150px; border-radius: 0px; background-color: greenyellow"></td>
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
