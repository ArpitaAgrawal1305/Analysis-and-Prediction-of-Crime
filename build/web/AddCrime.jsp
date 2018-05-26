<%-- 
    Document   : AddCrime
    Created on : Oct 12, 2015, 5:05:22 PM
    Author     : USER
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Crime</title>
          <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
          <link href="CSS/AdminCSS.css" rel="stylesheet">
    </head>
    <body>
        <form action="AddCrime" method="POST">
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
                      <td colspan="2"><h2 align="center">Add Crime</h2></td>
                  </tr>
                     </table>
                    <fieldset>
                      <legend>Criminal Id </legend>
                      <table cellspacing="10">
                  <tr> 
                      <td colspan="2" align="center"><input type="text" name="criminalid" placeholder="Criminal Id"></td>
                  </tr>
                      </table>
                  </fieldset>
                   
                 <fieldset>
                      <legend>Crime Type  </legend>
                      <table cellspacing="10">
                  <tr>
                      <td><input type="radio" name="crime_type" value="childabuse" style="width: 50px; height: 5px;">Child Abuse</td>
                      <td><input type="radio" name="crime_type" value="domesticviolence" style="width: 50px; height: 5px;">Domestic Violence</td>
                      <td><input type="radio" name="crime_type" value="assault" style="width: 50px; height: 5px;">Assault</td>
                      
                  </tr>
                  <tr>
                      <td><input type="radio" name="crime_type" value="murder" style="width: 50px; height: 5px;">Murder</td>
                      <td><input type="radio" name="crime_type" value="homicide" style="width: 50px; height: 5px;">Homicide</td>
                      <td><input type="radio" name="crime_type" value="dwi" style="width: 50px; height: 5px;">DWI*</td>
                  </tr>
                  <tr>
                      <td><input type="radio" name="crime_type" value="robbery" style="width: 50px; height: 5px;">Robbery</td>
                      <td><input type="radio" name="crime_type" value="hitandrun" style="width: 50px; height: 5px;">Hit & Run</td>
                      <td><input type="radio" name="crime_type" value="other" style="width: 50px; height: 5px;">Other</td>
                  </tr>

                      </table>
                  </fieldset>  
                   
                   
                   
                      <fieldset>
                      <legend>Crime Detail  </legend>
                      <table cellspacing="10">
                  <tr>
                      
                      <td colspan="2"><textarea name="crime_description" cols="110" rows="8" placeholder="Enter Crime Description Here...."></textarea></td>
                      
                  </tr>
                 <tr>
                      <td><input type="text" name="dateofcrime" placeholder="Date Of Crime(dd/mm/yyyy)"></td>
                      <td><input type="text" name="dateofreport" placeholder="Date Of Crime Reported(dd/mm/yyyy)"></td>
                  </tr>
                      </table>
                  </fieldset>
                   
                   <fieldset>
                      <legend>Location Of Crime  </legend>
                      <table cellspacing="10">
                  <tr>
                      <td><input type="text" name="street" placeholder="Area"></td>
                      <td><input type="text" name="city" placeholder="City"></td>
                      <td><input type="text" name="taluka" placeholder="Taluka"></td>
                  </tr>
                  <tr> 
                      <td><input type="text" name="zip" placeholder="Zip Code"></td>
                      <td><input type="text" name="dist" placeholder="District"></td>
                      <td><input type="text" name="state" placeholder="State"></td>
                  </tr>
                  <tr>  
                      <td><input type="text" name="country" placeholder="Country"></td>
                  </tr>
                      </table>
                  </fieldset>
                   
                   <fieldset>
                      <legend>Other Detail  </legend>
                      <table cellspacing="10">
                  <tr>
                      <td>Has arrest been made? </td>
                      <td>
                          <input type="radio" name="arrestradio" style="width: 50px; height: 5px;">YES
                      <input type="radio" name="arrestradio" style="width: 50px; height: 5px;">NO
                      </td>
                      <td><input type="text" name="iofficerid" placeholder="Investigation Officer Id"></td>
                  </tr>
                  <tr>
                      <td colspan="3"><textarea name="police_station" cols="110" rows="8" placeholder="Enter Name and Address Of Police Department...."></textarea></td>
                  </tr>
                  
                      </table>
                  </fieldset>
                     <table align="center">
                  <tr>
                      <td colspan="2" align="center"><input type="submit" value="Add Crime" style="width: 150px; border-radius: 0px; background-color: greenyellow"></td>
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
