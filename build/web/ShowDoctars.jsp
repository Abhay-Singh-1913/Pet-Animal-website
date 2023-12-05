<%-- 
    Document   : ShowDoctars
    Created on : 28 Mar, 2023, 2:44:20 PM
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
        <%SearchDoctars sd = (SearchDoctars) session.getAttribute("data1");%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="doctors.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <!--<navber>-->
        <header>

            <div class="Dnav" >
                <h2 style="margin-left: 4rem;">
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
            PreparedStatement ps = con.prepareStatement("select * from doctorregistration where dstate=? and Dcity=?");
              ps.setString(1, sd.getState());ps.setString(2, sd.getCity());
              ResultSet rs=ps.executeQuery();
              while(rs.next()){
                  String DFn=rs.getString("DFname");
                  String DLn=rs.getString("DLname");
                  String Di=rs.getString("Dimage");
                  String Dn=rs.getString("Dnumber");
                  String DCn=rs.getString("DCname");
                  String Da=rs.getString("DCaddress");
                  String Dp=rs.getString("Dprice");
                  String Ds=rs.getString("Dservice");
                  String Dss=rs.getString("Dspecialization");
                  String Dd=rs.getString("Ddegree");
                  
              
        %>
        <!--<Section-part>-->
        <div class="ShowDoctor1">
            <div class="ShowDoctors2">
                <div class="ShowDoctor-left">
                    <div class="S-Doctor1">
                        <img src="img/<%=Di%>">
                        <div class="S-Doctor2">
                            <span><a href="ShowDoctors2.jsp?data1=<%=DFn%>" style="text-decoration: none;color:lime;"><%=DFn%><%=DLn%></a><small style="font-size: 1.5rem;margin-top: 0.5rem;">(Clinic Name:<%=DCn%>)</small></span>

                        </div>
                        <div class="S-Doctor3">
                            
                            <span>Filds:<%=Ds%><%=Dss%></span>
                            <span>Qulification:<%=Dd%></span><br>
                            <span>Full Address:<%=Da%></span><br>
                            <span>Consultion fees:<%=Dp%></span>

                        </div>
                        <div class="S-Doctor4">
                            <a href="ShowDoctors2.jsp?data1=<%=DFn%>"><span> Book Clinic Visit</span></a>

                        </div>

                    </div>
                </div>
                        <%}%>
<!--                <div class="ShowDoctor-right">

                </div>-->
            </div>

        </div>
        <!--<Section-part>-->
    </body>
</html>
