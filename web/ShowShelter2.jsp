<%-- 
    Document   : ShowDoctors2
    Created on : 26 Mar, 2023, 10:14:20 PM
    Author     : harish shaikh
--%>

<%@page import="Entity.Dregistration"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="Entity.SearchDoctars"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%Dregistration dr = (Dregistration) session.getAttribute("data3");%>   
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="doctors.css" rel="stylesheet">
        <link href="Shelter.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin: 0rem;padding: 0rem;box-sizing: border-box;">

        <!--<navber>-->
        <header>

            <div class="Dnav" >
                <h2 style="margin-left: 3rem;">
                    <div class="D-logo">
                        <span>Pet</span>
                        <span style="color:green;margin-left: -2rem; ">Care</span><br>
                    </div>

                </h2>
                <div class="dnav-list">
                    <ul>
                        <li><a href="Shelter.jsp">Home</a></li>
                        <li><a href="#">Appointment</a></li>
                        <li><a href="#">Contacts</a></li>
                    </ul>  

                </div>
               <!--<Login>-->
                        <div class="nav-login-page" style="margin-top: -1rem;">
                            <div class="nav-login-page1">
                                <%if (dr != null) {%>

                                <h3><%=dr.getEmailId()%></h3>
                                <br>
                                <a href="LogoutPage"> <li>Logout/Signup</li></a>


                                <%} else {%>
                                <a href="LoginShelter.jsp"> <li>Login/Singup</li></a>
                                        <%}%>
                            </div>
                        </div>
                        <!--<Login>-->

            </div>

        </header>
        <!--<navber>-->


        <% Connection con = ConnectionProvider.getConnection();
            String ss = request.getParameter("SS2");
            PreparedStatement ps = con.prepareStatement("select * from shelterdata where Sname=?");
            ps.setString(1, ss);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String sn = rs.getString("Sname");
                String on = rs.getString("Oname");
                String sm = rs.getString("Smobile");
                String ot = rs.getString("Otime");
                String sa = rs.getString("Saddress");
                String sA = rs.getString("Sabout");
                String si = rs.getString("Simage");
                String pd = rs.getString("Pdog");
                String pc = rs.getString("Pcat");


        %>

        <!--<Section-part>-->
        <div class="ShowShelter-section">
            <div class="ShowShelter-section1">
                <!--<Section-left-part>-->
                <div class="ShowShelter-sectionleft">
                    <h1><%=sn%>(<%=on%>)</h1>
                    <div class="ShowShelter-img">
                        <img src="<%=si%>">

                    </div>

                    <div class="ShowShelter-detail">
                        <h1>OFFICE TIME</h1>
                        <span><%=ot%></span>
                        <h1>CHARGES PER DAY PET</h1>
                        <span>Per/Dog:-<%=pd%></span>
                        <span>per/Cat:-<%=pc%></span>
                        <h1>SHELTER-ADDRESS</h1>
                        <span><%=sa%></span>
                        <div class="shelter-about">
                            <h1>ABOUT</h1>
                            <p><%=sA%></p>
                        </div>
                    </div>

                </div>
                <!--<Section-left-part>-->

                <!--<Section-right-part>-->
                <div class="ShowShelter-sectionright">

                    <form method="post" action="ShelterBookingForm" enctype="multipart/form-data">
                        <div class="patient-detail">
                            <div class="patient-detail1">

                                <div class="patient-head">
                                    <h1>Booking Detail</h1>
                                    <input name="Semailid" value="<%=dr.getEmailId()%>"  readonly >
                                    <input name="Sname"  value="<%=sn%>" readonly >


                                </div>
                                <div class="patient-detail2">
                                    <span>User-Name</span><br>
                                    <input type="text"  name="Uname" required>


                                </div><div class="patient-detail2">
                                    <span>User-Mobile </span><br>
                                    <input type="text"  name="Umobile" required >


                                </div>
                                <div class="patient-detail2">
                                    <span>User-Email </span><br>
                                    <input type="text"  name="Uemail" required>


                                </div>
                                <div class="patient-detail2">
                                    <span>User-Address </span><br>
                                    <input type="text"  name="Uaddress" required>


                                </div>
                                <div class="patient-detail2">
                                    <span>Pet-Type</span><br>
                                    <select id="pettype" name="Pettype" style="width:25rem;
                                            height: 1.4rem;
                                            margin-left: 2rem;
                                            font-size: 1.2rem;
                                            border-top: none;
                                            border-left: none;
                                            border-right: none;
                                            border-bottom-color: silver;
                                            outline: none;">
                                        <option ></option>
                                        <option value="dog">Dog</option>
                                        <option value="cat">Cat</option>
                                    </select>



                                </div>
                                <div class="patient-detail2">
                                    <span>Pet-Name </span><br>
                                    <input type="text"  name="Petname" required>


                                </div>

                                <div class="patient-detail2">
                                    <span>NO Of Days</span><br>
                                    <input type="number"  name="day" required id="days">


                                </div>


                                <div class="patient-detail2">
                                    <span>Price </span>
                                  
                                    <button onclick="sum()" class="fa fa-search" style="display: flex;float: right;margin-right: 2rem;"></button>
                                    <input type="text" id="gprice" name="Price"  >


                                </div>
                                <div class="patient-detail2">
                                    <span>Reporting Date </span><br>
                                    <input type="datetime-local"  name="Ureportdate" required  >

                                </div>
                                <div class="patient-detail2">
                                    <span>PetImage</span><br>
                                    <input type="file"  name="Petimage" required>


                                </div>


                            </div>
                        </div>
                               <%if(dr!=null){%>  
                        <div class="patient-button">
                            <button type="submit">Confirm</button>
                        </div>
                        <%}else{%>
                        <div class="patient-button">
                            
                        <button  onclick="Shelterlog()">Confirm</button>
                        </div>
                        <%}%>
                    </form>

                </div>
                
                <!--<Section-right-part>-->
            </div>
        </div>
        <script>
            function sum() {
              var a=<%=pd%>
                 var b=<%=pc%>
                  var r=document.getElementById("days").value;
                   var Type=document.getElementById("pettype").value;
                   
                   
                   if(Type=="dog"){
                     var  p1=parseInt(a)*parseInt(r);
                   
                      
                   }
                   else if(Type=="cat"){
                       var  p1=parseInt(b)*parseInt(r);
                     
                   }
                    document.getElementById("gprice").value=p1;
            }
             function Shelterlog(){
                           alert("please login first")
                           }
        </script>
        <%}%>
    </body>
</html>
