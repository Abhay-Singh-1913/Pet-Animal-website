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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin: 0rem;padding: 0rem;box-sizing: border-box;">

        <!--<navber>-->
        <header>

            <div class="Dnav" >
                <h2 style="margin-left: 2rem;">
                    <div class="D-logo">
                        <span>Pet</span>
                        <span style="color:green ">Care</span><br>
                    </div>

                </h2>
                <div class="dnav-list">
                    <ul>
                        <li><a href="Doctor.jsp">Home</a></li>
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
                                <a href="login.jsp"> <li>Login/Singup</li></a>
                                        <%}%>
                            </div>
                        </div>
                        <!--<Login>-->

            </div>

        </header>
        <!--<navber>-->


        <% Connection con = ConnectionProvider.getConnection();
            String d = request.getParameter("data1");
            PreparedStatement ps = con.prepareStatement("select * from doctorregistration where DFname=?");
            ps.setString(1, d);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String DFn = rs.getString("DFname");
                String DLn = rs.getString("DLname");
                String Di = rs.getString("Dimage");
                String Dn = rs.getString("Dnumber");
                String DCn = rs.getString("DCname");
                String Da = rs.getString("DCaddress");
                String Dp = rs.getString("Dprice");
                String Ds = rs.getString("Dservice");
                String Dss = rs.getString("Dspecialization");
                String Dd = rs.getString("Ddegree");
                String De = rs.getString("Demail");


        %>

        <!--<Section-part>-->
        <div class="ShowPet-section">
            <div class="ShowPet-section1">
                <!--<Section-left-part>-->
                <div class="ShowPet-sectionleft">
                    <div class="S-Doctor1" style="margin-left: -0.01rem;position: absolute;">
                        <img src="img/<%=Di%>">
                        <div class="S-Doctor2">
                            <span><a href="#" style="text-decoration: none;color:lime;"><%=DFn%><%=DLn%></a><small style="font-size: 1.5rem;margin-top: 0.5rem;">(Clinic Name:<%=DCn%>)</small></span>

                        </div>
                        <div class="S-Doctor3">
                            <span>Filds:<%=Ds%><%=Dss%></span>
                            <span>Qulification:<%=Dd%></span><br>
                            <span>Full Address:<%=Da%></span><br>
                            <span>Consultion fees:<%=Dp%></span>

                        </div>
                        <div class="S-Doctor4">
                            <span> <a href="#"> Book Clinic Visit</a></span>

                        </div>

                    </div>

                    <div class="ShowPet-sectionleft-mid">
                        <div class="ShowPet-sectionleft-mid1">
                            <a id="info" href="#">Info</a>

                        </div>
                        <div id="infot" class="ShowPet-sectionleft-mid2">

                        </div>
                        <div class="ShowPet-sectionleft-mid1">
                            <a  id="stories" href="#">Stories</a>

                        </div>
                        <div id="storiest" class="ShowPet-sectionleft-mid2">
                            ynnns
                        </div>
                        <div class="ShowPet-sectionleft-mid1">
                            <a id="awards" href="#">Awards</a>

                        </div>
                        <div id="awardst" class="ShowPet-sectionleft-mid2">
                            jkbc
                        </div>
                        <div class="ShowPet-sectionleft-mid1">
                            <a id="consult" href="#">Consult</a> 

                        </div>
                        <div id="consultt" class="ShowPet-sectionleft-mid2">

                        </div>
                    </div>
                </div>
                <!--<Section-left-part>-->

                <!--<Section-right-part>-->
                <div class="ShowPet-sectionright">
                    <form method="post" action="BookingAppoinment">
                        <div class="patient-detail">
                            <div class="patient-detail1">

                                <div class="patient-head">
                                    <h1>Patient Detail</h1>
                                    <input name="demailid"  value="<%=De%>" readonly >
                                    <input name="dmobile"  value="<%=Dn%>" readonly >


                                </div>
                                <div class="patient-detail2">
                                    <span>PetName</span><br>
                                    <input type="text"  name="petname" required>


                                </div><div class="patient-detail2">
                                    <span>Breed </span><br>
                                    <input type="text"  name="breed" required >


                                </div><div class="patient-detail2">
                                    <span>Weight </span><br>
                                    <input type="text"  name="weight" required>


                                </div><div class="patient-detail2">
                                    <span>Age </span><br>
                                    <input type="text"  name="age" required>


                                </div>

                                <div class="patient-detail2">
                                    <span>EmailID </span><br>
                                    <input type="email"  name="emailid" required  >


                                </div><div class="patient-detail2">
                                    <span>Mobile </span><br>
                                    <input type="text"  name="mobile" required  >

                                </div>
                                    <div class="patient-detail2">
                                    <span>Date </span><br>
                                    <input type="datetime-local"  name="datetime" required  >

                                </div>
                                <div class="patient-detail2">
                                    <span>Symptoms </span><br>
                                    <textarea type="text" name="symptom"></textarea>


                                </div>
                            </div>
                        </div>
                        <div class="patient-button">
                            <button type="submit">Confirm</button>
                        </div>
                    </form>

                </div>
                <!--<Section-right-part>-->
            </div>
        </div>
        <%}%>
        <!--<Section-part>-->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>
            $(document).ready(() => {
                $("#infot").show();
                $("#storiest").hide();
                $("#awardst").hide();
                $("#consultt").hide();
                $("#info").click(() => {
                    $("#infot").show();
                    $("#storiest").hide();
                    $("#awardst").hide();
                    $("#consultt").hide();

                });
                $("#stories").click(() => {
                    $("#infot").hide();
                    $("#storiest").show();
                    $("#awardst").hide();
                    $("#consultt").hide();
                });
                $("#awards").click(() => {
                    $("#infot").hide();
                    $("#storiest").hide();
                    $("#awardst").show();
                    $("#consultt").hide();
                });
                $("#consult").click(() => {
                    $("#infot").hide();
                    $("#storiest").hide();
                    $("#awardst").hide();
                    $("#consultt").show();
                });
            });
        </script>
    </body>
</html>
