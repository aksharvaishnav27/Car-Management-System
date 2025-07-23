<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>
		/* Styles for container and halves */
		
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
	align-items: center;
    color: rgb(34, 29, 29);
    text-shadow: 1px 1px rgb(255, 3, 209);

  }
input[type="text"],
input[type="number"],
button {
  padding: 8px;
  margin-bottom: 15px;
  width: 200px;
}

/* Style for submit buttons */
button[type="submit"] {
  background-color: #4caf50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* Hover effect for buttons */
button[type="submit"]:hover {
  background-color: #45a049;
}

.container {
  display: flex;
  background-color: #E5C9C7;
}

.top {
  display: flex;
  background-color: #E5C9C7;
}

.halfleft {
  left: 0;
  backgrond-color: 	#F2D6D6;
  width: 50%;
  padding: 10px;
  box-sizing: border-box;
  border-style: solid;
  border: 10px;
}

.upperleft {
  left: 0;
  backgrond-color: 	#F2D6D6;
  width: 50%;
  padding: 10px;
  box-sizing: border-box;
  border-style: solid;
  border: 10px;
}

.halfright {
  right: 0;
  background-color: #F2D6D6;
  width: 50%;
  padding: 10px;
  box-sizing: border-box;
  border-style: solid;
  border: 10px;
}

.upperright {
  right: 0;
  background-color: #F2D6D6;
  width: 50%;
  padding: 10px;
  box-sizing: border-box;
  border-style: solid;
  border: 10px;
}

/* Styles for form inputs and labels */
/* ... (use the styles provided in the previous CSS example) */
		
.container text {
    /* width: 100px; */
    width: 440px;
    height: 450px;
    /* border: #4caf50;*/
/*     border-style: inherit;  */
	  position: absolute;
	  background-color: #f7f7f7;

}


.logo {
    font-size: 24px;
    font-weight: bold;
}

header {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px 0;
}


</style>
</head>
<script >function redirectToPage5() {
    // Use the window.location.href property to set the URL you want to redirect to.
    window.location.href = 'viewtransection.jsp';
    //document.getElementById("logoutForm").submit();
}
function redirectToPage() {
    // Use the window.location.href property to set the URL you want to redirect to.
    window.location.href = 'viewfeedback.jsp';
    //document.getElementById("logoutForm").submit();
}
</script>
<body>
	<header>
	<div class="logo">CARDX</div>
	</header>
<div class="top">

	<div class="upperleft">
	
		<h3 align="center">View all type Transection table here</h3>
		<h3 align="center">  <button type="submit" onclick="redirectToPage5()">View Transections</button></h3>
	<h3 align="center">View all Feedbacks</h3>
		<h3 align="center"><button type="submit" onclick="redirectToPage()">View Feedbacks</button></h3>
	</div>
	
	<div class="upperright">
	<form method="post" action="make_admin">
	<h3 align="center">Make Admin</h3>
		<label for="newadmin">Email id:</label>
		<input type="text" id="newadmin" name="newadmin"><br>
		
		<h3 align="center"><button type="submit">Give access</button></h3>
	</form>
	</div>
	
</div>

	<hr>
	
	<div class="container">
	<div class="halfleft">
	<form method="post" action="add-newcar" onsubmit="return validateForm()">
	<h3 align="center">Add New car</h3>
		<label for="Model">Model:</label>
		<input type="text" id="Model" name="Model" required><br><br>
		
		<label for="company">Company:</label>
		<input type="text" id="company" name="company" required><br><br>
		
		<label for="Price">Price:</label>
		<input type="text" id="Price" name="Price" required><br><br>
		
		<label for="colour">Colour:</label>
		<input type="text" id="colour" name="colour" required><br><br>
		
		<label for="fuel">Fuel type:</label>
		<input type="text" id="fuel" name="fuel" required><br><br>
		
		<label for="safety">Safety Ratings:</label>
		<input type="number" id="safety" name="safety" min="0" max="5" step="0.1" required><br><br>
		
		<label for="transmission">Transmission type:</label>
		<input type="text" id="tranmission" name="transmission" required><br><br>
		
		<label for="warranty">Warranty_year:</label>
		<input type="text" id="warranty" name="warranty" required><br><br>
		
		<h3 align="center"><button type="submit">Add car</button></h3>
	</form>
	</div>
	
	
	<div class="halfright">
	<form method="post" action="add-rentcar" onsubmit="return validateForm()">
	
	<h3 align="center">Add Rental car</h3>
		<label for="Model">Model:</label>
		<input type="text" id="Model" name="Model" required><br><br>
		
		<label for="company">Company:</label>
		<input type="text" id="company" name="company" required><br><br>
		
		<label for="Price">Price per day:</label>
		<input type="text" id="Price" name="Price" required><br><br>
		
		<label for="colour">Colour:</label>
		<input type="text" id="colour" name="colour" required><br><br>
		
		<label for="fuel">Fuel type:</label>
		<input type="text" id="fuel" name="fuel" required><br><br>
	
		<h3 align="center"><button type="submit">Add car</button></h3>
	</form>
	</div>
	
	</div>
</body>
</html>