<%-- 
    Document   : login
    Created on : 21 Mar, 2023, 10:20:09 PM
    Author     : harish shaikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link href="doctors.css" rel="stylesheet">
    </head>
    <body style="background-color: lightskyblue;">
        <!-- Page Content -->
        <!-- /Login-page -->
        <div class="login-page" id="login-page">
            <div class="center">
                <h2>login</h2>
                <form method="post" action="loginDP">
                    <div class="login-label">
                        <input type="text" required name="emailId">
                        <span></span>
                        <label>EmailID/Mobile</label>
                    </div>
                    <div class="login-label">
                        <input type="password" required name="password">
                        <span></span>
                        <label>Password</label>
                    </div>
                    <div class="pass">Forget Password?</div>
                    <div class="login-btn">
                        <button type="submit" >Login</button>
                    </div>
                    <div class="signup_link">
                        <a href="#" id="patient"> New Registaration?</a>
                    </div>

                </form>
            </div>

        </div>
        <!-- /Login-page -->
        <!-- /registration-page -->

        <div class="login-page" id="patient-registration">

            <div class="center">

                <div class="Are-Doctor">
                    <a href="#" id="Doctor-page" >Are You a Doctor?</a>
                </div>
                <form method="post" action="PDRegistration">
                    <h2>
                        <input readonly name="PatientsDoctor" value="PATIENT">
                    </h2>


                    <div class="login-label">
                        <input type="text" required name="emailid">
                        <span></span>
                        <label>EmailID</label>
                    </div>
                    <div class="login-label">
                        <input type="text" required name="mobile">
                        <span></span>
                        <label>Mobile</label>
                    </div>
                    <div class="login-label">
                        <input type="password" required name="password">
                        <span></span>
                        <label> Create Password</label>
                    </div>
                    <div class="pass">Forget Password?</div>
                    <div class="login-btn">
                        <button type="submit" >Login</button>
                    </div>
                    <div class="signup_link">
                        <a href="#" id="Login1">AlReady have an account?</a>
                    </div>

                </form>
            </div>

        </div>
        <!-- /registration-page -->
        <!-- /Doctor-Registration -->

        <div class="login-page" id="Doctor-registration">

            <div class="center">
                <div class="Are-Doctor">
                    <a href="#" id="patient-page" >not a Doctor?</a>
                </div>
                <form method="post" action="PDRegistration">
                    <h2><input readonly name="PatientsDoctor" value="DOCTOR"></h2>


                    <div class="login-label">
                        <input type="text" required name="emailid">
                        <span></span>
                        <label>EmailID</label>
                    </div>
                    <div class="login-label">
                        <input type="text" required name="mobile">
                        <span></span>
                        <label>Mobile</label>
                    </div>
                    <div class="login-label">
                        <input type="password" required name="password">
                        <span></span>
                        <label> Create Password</label>
                    </div>
                    <div class="pass">Forget Password?</div>
                    <div class="login-btn">
                        <button type="submit" >Login</button>
                    </div>
                    <div class="signup_link">
                        <a href="#" id="Login1">AlReady have an account?</a>
                    </div>

                </form>
            </div>

        </div>
        <!--<Doctor-registration>-->
        <!--<login-page>-->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>
            $(document).ready(() => {
                $("#login-page").show();
                $("#Doctor-registration").hide();
                $("#patient-registration").hide();
                $("#patient").click(() => {
                    $("#login-page").hide();
                    $("#Doctor-registration").hide();
                    $("#patient-registration").show();

                });
                $("#Doctor-page").click(() => {
                    $("#login-page").hide();
                    $("#patient-registration").hide;
                    $("#Doctor-registration").show();

                });
                $("#patient-page").click(() => {
                    $("#login-page").hide();
                    $("#patient-registration").show();
                    $("#Doctor-registration").hide();
                });
                $("#Login1").click(() => {
                    $("#login-page").show();
                    $("#patient-registration").hide();
                    $("#Doctor-registration").hide();

                });



            });
        </script>
    </body>
</html>
