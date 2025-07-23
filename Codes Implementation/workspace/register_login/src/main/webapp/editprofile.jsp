<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script>
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>
<style>
body {
    display: flex;
    justify-content: center;
    align-items: center;
    /*height: 100vh;*/
    margin: 0;
}

form {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
}

label {
    font-weight: bold;
    margin-bottom: 5px;
}

input {
    padding: 8px;
    margin-bottom: 15px;
    width: 100%;
    box-sizing: border-box;
}

.login-button {
    background-color: #4caf50;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.login-button:hover {
    background-color: #45a049;
}

.showpass {
	align-items: left;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String fname=(String) session.getAttribute("first_name");
String lname=(String) session.getAttribute("last_name");
 String pin_code=(String) session.getAttribute("pin_code");
 String area1=(String) session.getAttribute("city");
 String pincode1=(String) session.getAttribute("pin_code");
 String mobile1=(String) session.getAttribute("mobile");
 String apt_name1=(String) session.getAttribute("apt_name");
 String area_name1=(String) session.getAttribute("area_name");
 String city1=(String) session.getAttribute("city");
 String state1=(String) session.getAttribute("state");
 String password=(String) session.getAttribute("password");
//String name=(String) session.getAttribute("name");%>


	<form onsubmit="return validateForm()" action="editprofile" method="post">
		<label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" value="<%=fname %>" required><br><br>
            
        <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" value="<%=lname %>" required><br><br>
            
         <label for="apt_name">Apt Name:</label>
            <input type="text" id="apt_name" name="apt_name" value="<%=apt_name1 %>" required><br><br>
            
          <label for="area_name">Area Name:</label>
            <input type="text" id="area_name" name="area_name" value="<%=area_name1 %>"required><br><br>
         
         <label for="city">City:</label>	
            <input type="text" id="city" name="city" value="<%=city1 %>" required><br><br>
            
         <label for="pin_code">PIN Code:</label>
            <input type="text" id="pin_code" name="pin_code" value="<%=pincode1 %>" required><br><br>
            
         <label for="Mobile_number">Mobile no:</label>
            <input type="text" id="Mobile_number" name="Mobile_number" value="<%=mobile1 %>" required><br><br>
            
         <label for="password">Password:</label>
            <input type="password" id="password" name="password"  value="<%=password %>" required>
           <div class="showpass"> <pre>Show Password<input type="checkbox" onclick="myFunction()"></pre><br><br></div>
            
         <input type="submit" value="Save Changes" class="login-button"><br><br>	
            
         
	</form>
</body>
</html>