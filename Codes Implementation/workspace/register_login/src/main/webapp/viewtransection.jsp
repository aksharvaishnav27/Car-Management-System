<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	try {
		response.setContentType("text/html");
        Class.forName("org.postgresql.Driver");
		String url = "jdbc:postgresql://localhost:5432/postgres";
        String username = "postgres";
        String password2 = "jay";
        
        Connection con = DriverManager.getConnection(url, username, password2);
        
        PreparedStatement ps = con.prepareStatement("select * from transaction");
        
        ResultSet rs=ps.executeQuery();
	
	%>
	
	
	<table border="1">
                <tr>
                    <th>Transaction ID</th>
                    <th>Amount</th>
                    <th>Buyer ID</th>
                    <th>Seller ID</th>
                    <th>Date</th>
                    <th>Car Type</th>
                    <th>Car ID</th>
                </tr>
                
                
         <%
                    while(rs.next()) {
          %>
          
         				 <tr>
                            <td><%= rs.getInt("transaction_id") %></td>
                            <td><%= rs.getInt("amount") %></td>
                            <td><%= rs.getString("buyer_id") %></td>
                            <td><%= rs.getString("seller_id") %></td>
                            <td><%= rs.getDate("date") %></td>
                            <td><%= rs.getString("car_type") %></td>
                            <td><%= rs.getInt("car_id") %></td>
                        </tr>
                        
                        <%
                    }
                %>
            </table>
            
            	<%
            	
	}
	
	catch (ClassNotFoundException e) {
	    e.printStackTrace();
	    System.out.println("PostgreSQL JDBC driver not found");
	} catch (SQLException e) {
		response.setContentType("text/html");
		out.print("<h2 style='color:red'> "+e.getMessage() +"</h2>");
		RequestDispatcher rd=request.getRequestDispatcher("/admin.jsp");
		rd.include(request, response);
	}
	
            	%>
	
	
</body>
</html>