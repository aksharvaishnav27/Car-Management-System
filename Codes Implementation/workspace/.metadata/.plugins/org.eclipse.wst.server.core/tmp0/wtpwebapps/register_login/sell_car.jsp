<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="sellcar.css">
  <title>Sell Your Car</title>
</head>
<body>

    <div class="header">
        <h1>Sell Car</h1>
      </div>

<div class="sell-car-container">

 <form action="sellcar" method="post">
  <!-- First Box -->
  <div class="box">
    <div class="box-content">
      <div class="flex-container">
        <!-- Left side image of car -->
        <img src="https://source.unsplash.com/random/259x150?cars" alt="Car Image">
        <!-- Right side: Model, Company Name, Price -->
        <div class="details">
          <div class="input-txt"><strong>Model:</strong> <span class="input-field"><input type="text" name="Model" required></span></div>
         <div class="input-txt">  <p><strong>Company:</strong> <span class="input-field"><input type="text" name="Company" required></span></p></div>
         <div class="input-txt"> <p><strong>Price:</strong> <span class="input-field"><input type="text" name="Price" required></span></p></div>
        </div>
      </div>
    </div>
  </div>

  <!-- Second Box -->
  <div class="box">
    <div class="box-content">
      <div class="flex-container">
        <!-- Left side: Year, Kilometer, Car Type -->
        <div class="details">
         <div class="input-txt"> <strong>Year:</strong> <span class="input-field"><input type="text" name="year" required></span></div>
         <div class="input-txt"> <strong>Kilometer:</strong> <span class="input-field"><input type="text" name="kilometer" required></span></div>
        <div class="input-txt">  <strong>Colour:</strong> <span class="input-field"><input type="text" name="colour" required></span>
        </div>
        </div>
        <!-- Right side: Add Date, Description -->
        <div class="details">
         <div class="input-txt"> <p><strong>Fuel Type:</strong> <span class="input-field"><input type="text" name="fuel_type" required></span></p></div>
       <div class="input-txt">  <p><strong>Description:</strong> <span class="input-field"><textarea name="description" rows="4" required></textarea></span></p></div>
        </div>
      </div>
    </div>
  </div>

  <!-- Button -->
  <div class="button-container">
    <button class="sell-button">Sell My Car</button>
  </div>
</form>
</div>

</body>
</html>