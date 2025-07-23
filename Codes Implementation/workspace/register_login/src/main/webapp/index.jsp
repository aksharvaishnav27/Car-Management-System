<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style >
 

body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f7f7f7;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.container {
    text-align: center;
    border: #101010;
    border-style:outset;
    /* border: radius 40%;; */
    

}
.text {
    /* width: 100px; */
    width: 500px;
    height: 200px;
    /* border: #4caf50;
    border-style: inherit; */
}
.logo {
    width: 500px;
    height: 200px;
    object-fit: contain;
    margin-bottom: 20px;
    border-bottom: #4caf50;
   
}

.login-form {
    display: flex;
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
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    transition: transform 0.3s ease;
}

.login-button:hover {
    transform: scale(1.1);
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <img src="http://www.picshunger.com/wp-content/uploads/2015/01/WWCruisers-Car-Logo-no-background.gif"  class="logo">
        <div class="text">
            <form class="login-form" action="loginform" method="post">
               <p> Username : <input type="text" id="username" name="username" placeholder="Enter your Username" required></p>
            <p> Password : <input type="password" id="password" name="password" placeholder="Enter Your Password" required></p>
               
                <button type="submit" class="login-button">Login</button>
              <p> new user? <a href="register.jsp"> create a new account </a> </p>
            </form>
        </div>
        
    </div>
</body>
</html>