package backand;
import java.sql.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.*;
@WebServlet("/sent-serv-req")
public class sent_serv_req extends jakarta.servlet.http.HttpServlet {
	public static  void insert(String email_id,String description,Connection con,HttpServletRequest request,HttpServletResponse resp) throws IOException, ServletException {
		PrintWriter out= resp.getWriter();
		
		try {
			String sql=String.format("insert into service_request(customer_id,description_about_service) values('%s','%s')", email_id,description); ///!!!!!!!!!!!
			Statement  ps = con.createStatement();
			int rowsInserted = ps.executeUpdate(sql);
			
			 if (rowsInserted > 0) {
				  resp.setContentType("text/html");
				  out.print("<h3 style='color:green'>your service request has been sent</h3>");
            RequestDispatcher rd=request.getRequestDispatcher("/homepage.jsp");
            rd.include(request, resp);
        } else {
       	 resp.setContentType("text/html");
			  out.print("<h3 style='color:red'>service-request unsuccessful</h3>");
       RequestDispatcher rd=request.getRequestDispatcher("/homepage.jsp");
       rd.include(request, resp);
        }

		}

		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			resp.setContentType("text/html");
			  out.print("<h3 style='color:red'> "+e.getMessage() +"</h3>");
       RequestDispatcher rd=request.getRequestDispatcher("/register.jsp");
       rd.include(request, resp);
		}
		
}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				 HttpSession session=request.getSession();
				 	String email_id = (String) session.getAttribute("email");
			        String description = request.getParameter("description");
	            Class.forName("org.postgresql.Driver");

	            String url = "jdbc:postgresql://localhost:5432/postgres";
	            String username = "postgres";
	            String password2 = "jay";
	            
	            Connection con = DriverManager.getConnection(url, username, password2);

	           
	            Statement  ps = con.createStatement();
	            
	            insert(email_id,description,con,request, response);

				}
			
			 catch (ClassNotFoundException e) {
		            e.printStackTrace();
		            System.out.println("PostgreSQL JDBC driver not found");
		        } catch (SQLException e) {
		            e.printStackTrace();
		            System.out.println("Connection to the database failed");
		        }
		
		
	}
}