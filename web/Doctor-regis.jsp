<%-- 
    Document   : DoctorADD
    Created on : 2 Feb, 2023, 9:17:40 PM
    Author     : harish shaikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="doctors.css" rel="stylesheet">
        <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
    </head>
    <body style="background-color: lightcyan">
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
        <!--<awards & Registrations info>-->

    </body>
</html>
