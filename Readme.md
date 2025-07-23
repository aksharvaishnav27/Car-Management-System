# Car Dealer Management System

## Objective

Design and implement a user-friendly car dealer management system to streamline dealership operations, enhance customer experience, and improve inventory and sales management efficiency.

## Description

The Car Dealer Management System (CDMS) helps dealerships manage car inventory, customer interactions, and sales/rental decisions.  
It supports multiple user roles:

- **Customers:** Sign up, buy/sell new or old cars, rent cars, and request services.
- **Mechanics:** Register and provide services after subscribing monthly (₹1000).
- **Admin:** Earns 5% commission on old car sales, profits from new car sales, rentals, and mechanic subscriptions.

**Features:**

- Filter cars by price, color, brand, etc.
- Bargaining feature for old cars.
- Mechanics can accept service requests based on area.

## Project Structure

```text
Codes Implementation/
└── workspace/
    ├── Servers/
    │   ├── Tomcat v10.1 Server at localhost-config/
    │   ├── .settings/
    │   └── .project
    ├── register_login/
    │   ├── src/
    │   ├── build/
    │   ├── .settings/
    │   ├── .classpath
    │   └── .project
    ├── demo1/
    │   ├── src/
    │   ├── build/
    │   ├── .settings/
    │   ├── .classpath
    │   └── .project
    └── .metadata/
        ├── .plugins/
        ├── .log
        ├── version.ini
        ├── .bak_2.log
        ├── .bak_1.log
        ├── .bak_0.log
        └── .lock

main/
├── webapp/
│   ├── admin.jsp
│   ├── editprofile.jsp
│   ├── homepage.css
│   ├── homepage.jsp
│   ├── index.jsp
│   ├── mlogin.jsp
│   ├── mprofile.jsp
│   ├── Newcar.jsp
│   ├── oldcar.css
│   ├── oldcar.jsp
│   ├── profileFile.jsp
│   ├── register.jsp
│   ├── Rentcar.jsp
│   ├── script.js
│   ├── sellcar.css
│   ├── sell_car.jsp
│   ├── style.css
│   ├── temp/
│   ├── userdetail.css
│   ├── viewfeedback.jsp
│   └── viewtransaction.jsp
├── java/
│   ├── accept_bargain.java
│   ├── addimage.java
│   ├── adminAddNewCar.java
│   ├── adminAddRentCar.java
│   ├── editprofile.java
│   ├── feedback.java
│   ├── login.java
│   ├── logout.java
│   ├── mlogin.java
│   ├── new_buy.java
│   ├── newsort.java
│   ├── oldbuy.java
│   ├── oldsort.java
│   ├── register.java
│   ├── rent_buy.java
│   ├── rentsort.java
│   ├── req_accept.java
│   ├── sellcar.java
│   ├── send_bargain.java
│   ├── sent_serv_req.java
│   └── temp/
└── temp/
```

## Contents

- Software Requirements Specification
- Entity Relationship Model
- ER Diagram to Relational Model
- Noun Analysis
- Normalization Schema
- DDL Script
- All implementation codes

## Next Steps

- Add external views such as payment gateways.
- Deploy the local system to a live website where users can register, login, and perform car transactions.
