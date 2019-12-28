

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterDoctor
 */
@WebServlet("/RegisterDoctor")
public class RegisterDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String upin = request.getParameter("upin");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
	    String dob = request.getParameter("dob");
	    String ssn = request.getParameter("ssn");
	    String address = request.getParameter("address");
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    String specialization = request.getParameter("specialization");
		// storing the data in database
	    String sql = "insert into doctor(upin, fname, lname, dob, ssn, address"
	    		+ ", email, password, specialization) values (?,?,?,?,?,?,?,?,?)";
	    try {
			Class.forName("com.mysql.jdbc.Driver");
			
			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/harts_schema?"
			 		+ "autoReconnect=true&useSSL=false",
			            "root", "12345");
			    PreparedStatement ps = con.prepareStatement(sql);
			    ps.setString(1, upin);
			    ps.setString(2, fname);
			    ps.setString(3, lname);
			    ps.setString(4, dob);
			    ps.setString(5, ssn);
			    ps.setString(6, address);
			    ps.setString(7, email);
			    ps.setString(8, password);
			    ps.setString(9, specialization);
			    ps.executeUpdate();
			    PrintWriter pw = response.getWriter();
			    pw.print("Registration Successfull!"+" <a href='index.jsp'>Go to Login</a>");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		doGet(request, response);
	}

}
