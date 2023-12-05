<%-- 
    Document   : Doctor-dasboard
    Created on : 19 Feb, 2023, 9:51:37 PM
    Author     : harish shaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="Entity.Dregistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% Dregistration dr = (Dregistration) session.getAttribute("data2");%>
        <!--<main css link>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link href="doctors.css" rel="stylesheet">
    </head>
    <body style="background-color:snow;margin: 0;box-sizing: border-box;">




        <!--<navber>-->
        <header>

            <div class="Dnav" >
                <h2 style="margin-left: 2rem;">
                    <div class="D-logo">
                        <span>Pet</span>
                        <span style="color:green ;margin-left: 0rem;">Care</span><br>
                    </div>

                </h2>
                <div class="dnav-list">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Appointment</a></li>
                        <li><a href="#">Contacts</a></li>
                    </ul>  

                </div>
                <!--<Login>-->
                <div class="nav-login-page">
                    <div class="nav-login-page1">
                        <span>DASHBOARD</span>
                        <h3><%=dr.getEmailId()%></h3>
                    </div>
                </div>
                <!--<Login>-->

            </div>

        </header>
        <!--<navber>-->
        <section>
            <div class="dash-card">
                <div class="dash-cardboard">
                    <div class="dash-img">
                        <img src="img/" >
                    </div>
                    <div class="dash-dr-name">
                        <span> Dr-Name</span><br>
                        <small>DR- Infromation</small>
                    </div>
                    <div class="dash-list">
                        <div class="dash-list1">
                            <ul>
                                <li id="Dashboard"><i class="fa fa-dashboard"></i><a href="#">Dashboard</a></li>
                                <li id="Appoinments"><i class="fa fa-calendar"></i><a href="#">Appoinment</a></li>
                                <li id="My patients"><i class="fa fa-male"></i><a href="#">My Patient</a></li>                                
                                <li id="Invoices"><i class="fas fa-file-invoice"></i><a href="#">Invoices</a></li>
                                <li id="Reviews"><i class="fa fa-star" aria-hidden="true"></i><a href="#">Reviews</a></li>
                                <li id="Profile-Setting"><i class="fa fa-gear"></i><a href="#">Profile Settings</a></li>
                                <li id="Social Media"><i class="fas fa-share-alt"></i><a href="#">Social Media</a></li>
                                <li id="Change Password"><i class="fas fa-lock"></i><a href="#">Change Password</a></li>
                                <li id="Log Out"><i class="fa fa-sign-out"></i><a href="LogoutPage">Log Out</a></li>
                            </ul>
                        </div>
                    </div>



                    <div class="dash-right">

                        <div class="dash-right1">


                            <!--<Main-Dashboard>-->
                            <div id="main-dashboard">
                                <div class="appoinment-detail"><span>Petname</span>
                                    <span>Breed</span>
                                    <span>Weight</span>
                                    <span>Age</span>
                                    <span>emailId</span>
                                    <span>mobile</span>
                                    <span>sympton</span>

                                </div>
                            </div>
                            <!--<Main-Dashboard>-->

                            <!--<Appoinment>-->
                            <div id="Appoinment" class="appoinment">
                                <%
                                    Connection con2 = ConnectionProvider.getConnection();
                                    PreparedStatement ps2 = con2.prepareStatement("select * from bookingappoinment where demail=?");
                                    ps2.setString(1, dr.getEmailId());

                                    ResultSet rs2 = ps2.executeQuery();
                                    while (rs2.next()) {
                                        String pn = rs2.getString("petname");
                                        String b = rs2.getString("breed");
                                        String w = rs2.getString("weight");
                                        String a = rs2.getString("age");
                                        String e = rs2.getString("emailid");
                                        String m = rs2.getString("mobile");
                                        String dt = rs2.getString("datetime");
                                        String s = rs2.getString("symptom");

                                %>

                                <div class="appoinment-detail">

                                    <div class="appoinment-detail2">
                                        <span>Pet-Name</span>
                                        <h2><%=pn%><h2>
                                                </div>
                                                <div class="appoinment-detail2">
                                                    <span>breed</span>
                                                    <h2><%=b%></h2>
                                                </div>
                                                <div class="appoinment-detail2">
                                                    <span>No-of-days</span>
                                                    <h2><%=w%></h2>
                                                </div>
                                                <div class="appoinment-detail2">
                                                    <span>Charges</span>
                                                    <h2><%=s%></h2>
                                                </div>


                                                <div class="appoinment-detail2">
                                                    <button class="fa fa-close"></button>
                                                    <button id="accept" class="fa fa-check"></button>
                                                </div>

                                                </div>
                                                <%}%>
                                                </div>

                                                <!--<Appoinment>-->

                                                <!--<Doctor-registration>-->
                                                <div id="DoctorForm">
                                                    <div class="D-form" id="Doctor-registration">
                                                        <div class="D-form1">
                                                            <form method="post" action="doctorRegistration" enctype="multipart/form-data">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                        <h2 class="card-title">Basic Information</h2>
                                                                        <div class="row form-row">
                                                                            <div class="col-md-12">
                                                                                <div class="form-group">
                                                                                    <div class="change-avatar">
                                                                                        <div class="profile-img">
                                                                                            <img src="img/Doctospet.png"   alt="User Image">
                                                                                        </div>
                                                                                        <div class="upload-img">
                                                                                            <div class="change-photo-btn">
                                                                                                <span><i class="fa fa-upload"></i> Upload Photo</span>
                                                                                                <input type="file" name="D-image">
                                                                                            </div>
                                                                                            <small class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of 2MB</small>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6-h1">
                                                                                <div class="col-md-6-h">
                                                                                    <div class="col-md-6">
                                                                                        <div class="form-group">
                                                                                            <label>First Name <span class="text-danger">*</span></label>
                                                                                            <input type="text" name="DF-name" class="form-control" >
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="form-group">
                                                                                            <label>Email <span class="text-danger">*</span></label>
                                                                                            <input type="email" class="form-control" name="D-email">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="form-group">
                                                                                            <label>Phone Number</label>
                                                                                            <input type="text" class="form-control" name="D-number">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="form-group">
                                                                                            <label>Gender</label>
                                                                                            <select  name="D-gender" class="form-control select" style="width: 27.5rem;height: 3rem;margin-left: 2rem; font-size: 1.2rem;">
                                                                                                <option>Select</option>
                                                                                                <option value="male">Male</option>
                                                                                                <option value="female">Female</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>






                                                                                </div>
                                                                                <div class="col-md-6-h">
                                                                                    <div class="col-md-6">
                                                                                        <div class="form-group">
                                                                                            <label>Last Name <span class="text-danger">*</span></label>
                                                                                            <input type="text" class="form-control" name="DL-name">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="form-group">
                                                                                            <label>Adhar No <span class="text-danger">*</span></label>
                                                                                            <input type="text" class="form-control" name="D-adhar">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-6">
                                                                                        <div class="form-group mb-0">
                                                                                            <label>Date of Birth</label>
                                                                                            <input type="date" class="form-control" name="dob">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- About Me and clinic info -->
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                        <h2 class="card-title">About Me</h2>
                                                                        <div class="form-group1">

                                                                            <label>Biography</label><br>
                                                                            <textarea  name="D-bio" class="form-control" rows="5"></textarea>
                                                                        </div>
                                                                        <h2 class="card-title">Clinic Info</h2>
                                                                        <div class="row form-row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label>Clinic Name</label>
                                                                                    <input type="text" class="form-control" name="DC-name">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label>Clinic Address</label>
                                                                                    <input type="text" class="form-control" name="DC-address">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12-h">
                                                                                <div class="col-md-12">
                                                                                    <div class="form-group">
                                                                                        <div class="change-avatar">
                                                                                            <div class="profile-img">
                                                                                                <img src="img/Doctospet.png" alt="User Image" >
                                                                                            </div>
                                                                                            <div class="upload-img">
                                                                                                <div class="change-photo-btn">
                                                                                                    <span><i class="fa fa-upload"></i> Upload Photo</span>
                                                                                                    <input type="file" name="DC-image1" class="upload">

                                                                                                </div>
                                                                                                <small class="form-text text-muted">Clinic photo</small>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                    <div class="form-group">
                                                                                        <div class="change-avatar">
                                                                                            <div class="profile-img">
                                                                                                <img src="img/Doctospet.png" alt="User Image">
                                                                                            </div>
                                                                                            <div class="upload-img">
                                                                                                <div class="change-photo-btn">
                                                                                                    <span><i class="fa fa-upload"></i> Upload Photo</span>
                                                                                                    <input type="file" name="DC-image2" class="upload">

                                                                                                </div>
                                                                                                <small class="form-text text-muted">Clinic photo</small>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- /About Me and clinic info -->



                                                                <!-- Contact Details -->
                                                                <div class="card contact-card">
                                                                    <div class="card-body-1">
                                                                        <h2 class="card-title">Contact Details</h2>
                                                                        <div class="row form-row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group" >
                                                                                    <label> Full Address</label>
                                                                                    <input type="text" name="D-address" style="width: 60rem;" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                            <!--                                <div class="col-md-6">
                                                                                                                <div class="form-group">
                                                                                                                    <label class="control-label">Address Line 2</label>
                                                                                                                    <input type="text" name="D-address2"class="form-control">
                                                                                                                </div>
                                                                                                            </div>-->
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label">City</label>
                                                                                    <input type="text" name="D-city" class="form-control">
                                                                                </div>
                                                                            </div>

                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label">State / Province</label>
                                                                                    <input type="text" name="D-state"class="form-control">
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--Clinic add-->
                                                                <!--prcing-->
                                                                <div class="card" style="height: 12rem;">
                                                                    <div class="card-body">
                                                                        <h2 class="card-title">Pricing</h2>



                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label class="control-label">Custom Price (per hour)</label>
                                                                                <input type="text" name="D-price"  placeholder="free">
                                                                            </div>
                                                                        </div>



                                                                    </div>
                                                                </div>
                                                                <!-- /Pricing -->
                                                                <!-- Services and Specialization -->
                                                                <div class="card">
                                                                    <div class="card-body" style="height: 15rem;">
                                                                        <h2 class="card-title">Services and Specialization</h2>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Services</label>
                                                                                <input type="text" name="D-service"class="input-tags form-control" placeholder="Enter Services" name="services">

                                                                            </div> </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Specialization </label>
                                                                                <input class="input-tags form-control" name="D-specialization" type="text"  placeholder="Enter Specialization" name="specialist">

                                                                            </div> 
                                                                        </div>
                                                                    </div>              
                                                                </div>
                                                                <!-- /Services and Specialization -->

                                                                <!-- Education -->
                                                                <div class="card">
                                                                    <div class="card-body" style="height: 20rem;overflow-y: scroll;">
                                                                        <h2 class="card-title">Education</h2>
                                                                        <div class="education-info">
                                                                            <div class="row form-row education-cont">
                                                                                <div class="col-12 col-md-10 col-lg-11">
                                                                                    <div class="row form-row">
                                                                                        <div class="col-12 col-md-6 col-lg-4">
                                                                                            <div class="form-group">
                                                                                                <label>Degree&(Year of Completion)</label>
                                                                                                <input type="text" name="D-degree[]" class="form-control">
                                                                                            </div> 
                                                                                        </div>
                                                                                        <div class="col-12 col-md-6 col-lg-4">
                                                                                            <div class="form-group">
                                                                                                <label>College/Institute</label>
                                                                                                <input type="text"name="D-college[]" class="form-control">
                                                                                            </div> 
                                                                                        </div>

                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="add-more">
                                                                            <a  href="#" class="add-education"><i class="fa fa-plus-circle"></i> Add More</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- /Education -->

                                                                <!-- Experience -->
                                                                <div class="card">
                                                                    <div class="card-body"  style="height: 20rem;overflow-y: scroll;">
                                                                        <h2 class="card-title">Experience</h2>
                                                                        <div class="experience-info">
                                                                            <div class="row form-row experience-cont">
                                                                                <div class="col-12 col-md-10 col-lg-11">
                                                                                    <div class="row form-row">
                                                                                        <div class="col-12 col-md-6 col-lg-4">
                                                                                            <div class="form-group">
                                                                                                <label>Hospital Name & (From to To)</label>
                                                                                                <input type="text" name="D-hospital[]" class="form-control">
                                                                                            </div> 
                                                                                        </div>

                                                                                        <div class="col-12 col-md-6 col-lg-4">
                                                                                            <div class="form-group">
                                                                                                <label>Designation</label>
                                                                                                <input type="text" name="D-designation[]" class="form-control">
                                                                                            </div> 
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="add-more">
                                                                            <a class="add-experience"><i class="fa fa-plus-circle"></i> Add More</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- /Experience -->

                                                                <!-- Awards & Registrations -->
                                                                <div class="card">
                                                                    <div class="card-body"  style="height: 20rem ;overflow-y: scroll;">
                                                                        <h2 class="card-title">Awards & Registrations</h2>
                                                                        <div class="award-info">
                                                                            <div class="row form-row experience-cont">
                                                                                <div class="col-12 col-md-10 col-lg-11">
                                                                                    <div class="row form-row">
                                                                                        <div class="col-12 col-md-6 col-lg-4">
                                                                                            <div class="form-group" >
                                                                                                <label>Awards&(Years)</label>
                                                                                                <input type="text" placeholder="" name="D-award[]" class="Award-filed form-control" >
                                                                                            </div>  
                                                                                        </div> 
                                                                                        <div class="col-12 col-md-6 col-lg-4">
                                                                                            <div class="form-group">
                                                                                                <label>Registrations&(years)</label>
                                                                                                <input type="text" name="D-registration[]" class="form-control">
                                                                                            </div>  
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br>
                                                                        <div class="add-more " >
                                                                            <a id="add-award" class="btn btn-primary mt-3"><i class="fa fa-plus-circle"></i>Add More</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- /Awards & Registrations -->



                                                                <div class="submit-section-submit-btn-bottom">
                                                                    <button type="submit" class="btn btn-primary submit-btn">Save Changes</button>
                                                                </div>




                                                            </form>
                                                        </div>
                                                    </div>
                                                    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
                                                    <!--<education-info>-->


                                                    <script>
                                                        $(document).ready(function () {
                                                            var max_fields = 10;
                                                            var wrapper = $(".education-info");
                                                            var add_button = $(".add-education");
                                                            var x = 1;
                                                            $(add_button).click(function (e) {
                                                                e.preventDefault();
                                                                if (x < max_fields) {
                                                                    $(wrapper).append('<div><div class="row form-row">\n\
                                                                                    <div class="col-12 col-md-6 col-lg-4">\n\
                                                                                            <div class="form-group">\n\
                                                                                                    <label>Degree&(Year of Completion)</label>\n\
                                                                                                    <input type="text" name="D-degree[]" class="form-control">\n\
                                                                                            </div> \n\
                                                                                    </div>\n\
                                                                                    <div class="col-12 col-md-6 col-lg-4">\n\
                                                                                            <div class="form-group">\n\
                                                                                                    <label>College/Institute</label>\n\
                                                                                                    <input type="text" name="D-college[]" class="form-control">\n\
                                                                                            </div> \n\
                                                                                    </div>\n\
                                                                                    </div><a href="#" class="remove_field" ><i class="fa-solid fa-xmark"></i></a></div>');
                                                                    x++;
                                                                }

                                                            });
                                                            $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text

                                                                e.preventDefault();
                                                                $(this).parent('div').remove();
                                                                x--;
                                                            });
                                                        });
                                                    </script>
                                                    <!--<education-info>-->

                                                    <!--<Experience-info>-->
                                                    <script>
                                                        $(document).ready(function () {
                                                            var max_fields = 10;
                                                            var wrapper = $(".experience-info"); //Fields wrapper
                                                            var add_button = $(".add-experience");
                                                            var x = 1;
                                                            $(add_button).click(function (e) { //on add input button click
                                                                e.preventDefault();
                                                                if (x < max_fields) {
                                                                    $(wrapper).append('<div><div class="col-12 col-md-6 col-lg-4">\n\
                                                                                            <div class="form-group">\n\
                                                                                                <label>Hospital Name & (From to To)</label>\n\
                                                                                                <input type="text" name="D-hospital[]" class="form-control">\n\
                                                                                            </div> \n\
                                                                                        </div>\n\
                                                                  <div class="col-12 col-md-6 col-lg-4">\n\
                                                                                            <div class="form-group">\n\
                                                                                                <label>Designation</label>\n\
                                                                                                <input type="text" name="D-designation[]" class="form-control">\n\
                                                                                            </div>\n\</div><a href="#" class="remove_field" ><i class="fa-solid fa-xmark"></i></a></div>');
                                                                    x++;
                                                                }

                                                            });
                                                            $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text

                                                                e.preventDefault();
                                                                $(this).parent('div').remove();
                                                                x--;
                                                            });
                                                        });
                                                    </script>
                                                    <!--<experience-info>-->
                                                    <!--<awards & Registrations info>-->
                                                    <script>
                                                        $(document).ready(function () {
                                                            var max_fields = 10; //maximum input boxes allowed
                                                            var wrapper = $(".award-info"); //Fields wrapper
                                                            var add_button = $("#add-award"); //Add button ID

                                                            var x = 1; //initlal text box count


                                                            $(add_button).click(function (e) { //on add input button click
                                                                e.preventDefault();
                                                                if (x < max_fields) { //max input box allowed

                                                                    //text box increment
                                                                    $(wrapper).append('<div><div class="row form-row">\n\
                                                                                            <div class="col-12 col-md-6 col-lg-4">\n\
                                                                                                <div class="form-group">\n\
                                                                                                    <label>Awards&(years)</label>\n\
                                                                                                    <input type="text" name="D-awards[]" class="form-control">\n\
                                                                                              </div></div></div>\n\<div class="row form-row">\n\
                                                                                            <div class="col-12 col-md-6 col-lg-4">\n\
                                                                                                <div class="form-group">\n\
                                                                                                    <label>Registrations&(years)</label>\n\
                                                                                                    <input type="text" name="D-registration[]" class="form-control">\n\
                                                                                              </div></div></div>\n\ <a href="#" class="remove_field" ><i class="fa-solid fa-xmark"></i></a></div>'); //add input box
                                                                    x++;
                                                                }
                                                            });

                                                            $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text

                                                                e.preventDefault();
                                                                $(this).parent('div').remove();
                                                                x--;
                                                            })
                                                        });

                                                    </script>
                                                </div>
                                                <!--<Doctor-registration>-->




                                                </div>
                                                </div>
                                                </div>
                                                </div>






                                                </section>







                                                <footer>

                                                </footer>
                                                <script>
                                                    document.getElementById("main-dashboard").style.display = "flex";
                                                    document.getElementById("DoctorForm").style.display = "none";
                                                    document.getElementById("Appoinment").style.display = "none";

                                                    document.getElementById("Dashboard").addEventListener("click", function () {
                                                        document.getElementById("main-dashboard").style.display = "flex";
                                                        document.getElementById("DoctorForm").style.display = "none";
                                                        document.getElementById("Appoinment").style.display = "none";
                                                    });
                                                    document.getElementById("Profile-Setting").addEventListener("click", function () {
                                                        document.getElementById("main-dashboard").style.display = "none";
                                                        document.getElementById("DoctorForm").style.display = "block";
                                                        document.getElementById("Appoinment").style.display = "none";
                                                    });
                                                    document.getElementById("Appoinments").addEventListener("click", function () {
                                                        document.getElementById("main-dashboard").style.display = "none";
                                                        document.getElementById("DoctorForm").style.display = "none";
                                                        document.getElementById("Appoinment").style.display = "block";
                                                    });
                                                </script>
                                                </body>
                                                </html>
