<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Car Dealership Login</title>
</head>
<style>



body {
    display: flex;
    justify-content: right;
	padding-right: 180px;
    align-items: center;
    height: 100vh;
    margin: 0;
    
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.container {
	opacity: 0.8;
    text-align: center;
    /*border: #101010;
    border-style:outset;
     border: radius 40%;; */
	position: relative;
	display: inline-block;
	background-color: #f7f7f7;
    

}

.container img {
    display: block;
}
.container text {
    /* width: 100px; */
    width: 440px;
    height: 450px;
    /* border: #4caf50;*/
/*     border-style: inherit;  */
	  position: absolute;
	  background-color: #f7f7f7;

}

.login-form {
/*     display: flex; */
    flex-direction: column;
    align-items: center;
}

label,
input {
    margin-bottom: 10px;
}

.login-button {
    background-color: #4caf50;
    color: white;
    border: #4caf50;
    padding: 10px 20px;
    cursor: pointer;
    transition: transform 0.3s ease;
}

.login-button:hover {
    transform: scale(1.1);
}
body {
  background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdHtqioLW3qAdaZCALAUcebNjUHLGPovCJ4A&usqp=CAU');
  background-size: cover;
  opacity: 0.9;

}
</style>
<body>
    <div class="container">
		<form onsubmit="return validateForm()" action="regform" method="post" class="login-form">
          <div class="text">
			<h3><font color="red">Welcome to CARDX</font></h3>
            <label for="Email_id">Email-ID:</label>
            <input type="text" id="Email_id" name="customer_id" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password"  required><br><br>

            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" required><br><br>

            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required><br><br>
            
           
            
            

           
            <label for="apt_name">Apt Name:</label>
            <input type="text" id="apt_name" name="apt_name" required><br><br>
            
            <label for="area_name">Area Name:</label>
            <input type="text" id="area_name" name="area_name" required><br><br>

            <label for="apt_number">Apartment Number:</label>
            <input type="text" id="apt_number" name="apt_number" required><br><br>

            <label for="city">City</label>
            <input type="text" id="city" name="city" required><br><br>
             
            <label for="state">State</label>
            <input type="text" id="state" name="state" required><br><br>
             

            <label for="pin_code">PIN Code:</label>
            <input type="text" id="pin_code" name="pin_code" required><br><br>
            
            <label for="Mobile_number">Mobile no:</label>
            <input type="text" id="Mobile_number" name="Mobile_number" required><br><br>
            
           

            <input type="submit" value="Submit" class="login-button"><br><br>	
			already registered?<a href="index.jsp">Log in</a>
              </div>
            
        </form>
    </div>
</body>

</html>