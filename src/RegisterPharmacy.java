
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
 * Servlet implementation class RegisterPharmacy
 */
@WebServlet("/RegisterPharmacy")
public class RegisterPharmacy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterPharmacy() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */ }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ncpdp = request.getParameter("ncpdp");
		String location = request.getParameter("location");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String sql = "insert into pharmacy(ncpdp, location, email, password) " + "values (?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// storing the data in database
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/harts_schema?" + "autoReconnect=true&useSSL=false", "root", "12345");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ncpdp);
			ps.setString(2, location);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.executeUpdate();
			PrintWriter pw = response.getWriter();
			pw.print("Registration Successfull!" + " <a href='index.jsp'>Go to Login</a>");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
