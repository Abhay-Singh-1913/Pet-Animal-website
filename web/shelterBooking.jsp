<%-- 
    Document   : shelterBooking.jsp
    Created on : 10 Apr, 2023, 4:21:40 PM
    Author     : harish shaikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Shelter.css" rel="Stylesheet">
        <title>Shelter Booking</title>
    </head>
    <body class="gradient-background">
        <form class="shelterForm" method="post" action="#" enctype="multipart/form-data">
            <div class="shelterFormDiv">
            <label class="shelterLabel">Shelter Name</label>
            <input class="shelterInput" type="text" name="Sname" required/>
            </div>
            
            <div class="shelterFormDiv">
            <label class="shelterLabel">Owner Name</label>
            <input class="shelterInput" type="text" name="Oname" required/>
            </div>
            
            <div class="shelterFormDiv">
            <label class="shelterLabel">Shelter Mobile</label>
            <input class="shelterInput" type="text" name="Smobile" required/>
            </div>
            
            <div class="shelterFormDiv">
            <label class="shelterLabel">Office Time</label>
            <input class="shelterInput" type="text" name="Otime" required/>
            </div>
            
          
            
            <div class="shelterFormDiv">
            <label class="shelterLabel">Shelter Address</label>
            <input class="shelterInput" type="text" name="Saddress" required/>
            </div>
            
            <div class="shelterFormDiv">
            <label class="shelterLabel">State</label>
            <input class="shelterInput" type="text" name="Sstate" required/>
            </div>
            
            <div class="shelterFormDiv">
            <label class="shelterLabel">City</label>
            <input class="shelterInput" type="text" name="Scity" required/>
            </div>
            
            <div class="shelterFormDiv">
            <label class="shelterLabel">About</label>
            <textarea class="shelterInput" type="text" name="Sabout" required></textarea>
            </div>
            
            
            
              <div class="shelterFormDiv">
            <label class="shelterLabel">Shelter Image</label>
            <input class="shelterInput" type="file" name="Simage" required/>
            </div>
            
             <div class="shelterFormDiv">
            <label class="shelterLabel">Price Dog</label>
            <input class="shelterInput" type="text" name="Pdog" required/>
            </div>
             <div class="shelterFormDiv">
            <label class="shelterLabel">Price Cat</label>
            <input class="shelterInput" type="text" name="Pcat" required/>
            </div>
            
            <div class="shelterForm-Button">
                <button type="submit">Submit</button>
            </div>
        </form>
    </body>
</html>
