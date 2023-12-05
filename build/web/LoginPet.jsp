<%-- 
    Document   : LoginPet
    Created on : 29 Mar, 2023, 9:25:22 PM
    Author     : harish shaikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Animal.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginPet</title>
    </head>
    <body style="background-color: lightcyan; margin: 0rem; padding: 0rem;box-sizing: border-box;">
        <div class="login-page" id="login-page">
            <div class="center">
                <h2>login</h2>
                <form method="post" action="login">
                    <div class="login-label">
                        <input type="email" required name="emailId">
                        <span></span>
                        <label>EmailID</label>
                    </div>
                    <div class="login-label">
                        <input type="password" required name="password">
                        <span></span>
                        <label>Password</label>
                    </div>
                    <div class="pass">Forget Password?</div>
                    <div class="login-btn">
                        <button type="submit" value="login">Login</button>
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

                <h2> New Registaration</h2>

                <form method="post" action="loginRegistration" enctype="multipart/form-data">
                    <div class="login-label">
                        <input type="text" required name="fullName">
                        <span></span>
                        <label>Full Name</label>
                    </div>
                    <div class="login-label">
                        <input type="email" required name="emailId">
                        <span></span>
                        <label>EmailID</label>
                    </div>
                    <div class="login-label">
                        <input type="text" required name="mobile">
                        <span></span>
                        <label>Mobile</label>
                    </div>
                    <div class="login-label">
                        <input type="text" required name="fullAddress">
                        <span></span>
                        <label>Full Address</label>
                    </div>
                    <div class="login-label">
                        <input type="file"  name="image" required  style="font-size: 1rem;padding-top: 1rem;" name="mobile">
                        <span></span>
                        <label>Image</label>
                    </div>
                    <div class="login-label">
                        <input type="password" required name="password">
                        <span></span>
                        <label> Create Password</label>
                    </div>
                    <div class="pass">Forget Password?</div>
                    <div class="signup_link" style="display: flex;color: #666666;margin-top: -4rem;margin-left: 9rem;">
                        <h2 id="Login1">AlReady have an account?</h2>
                    </div>
                    <div class="login-btn">
                        <button type="submit">Login</button>
                    </div>


                </form>
            </div>

        </div>
        <!-- /registration-page -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>
            $(document).ready(() => {
                $("#login-page").show();
                $("#patient-registration").hide();

                $("#patient").click(() => {
                    $("#login-page").hide();
                    $("#patient-registration").show();
                });

                $("#Login1").click(() => {
                    $("#login-page").show();
                    $("#patient-registration").hide();


                });
            });
        </script>


    </body>
</html>
