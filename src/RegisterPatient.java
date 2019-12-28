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
 * Servlet implementation class RegisterPatient
 */
@WebServlet("/RegisterPatient")
public class RegisterPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterPatient() {
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
	 * @throws IOException
	 * @throws ServletException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String ssn = request.getParameter("ssn");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String blood_group = request.getParameter("blood_group");
		String gender = request.getParameter("gender");
		String emergency_contact = request.getParameter("emergency_contact");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		// storing the data in database
		String sql = "insert into patient(ssn, fname, lname, dob, blood_group, gender"
				+ ", emergency_contact, password, email) values (?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/harts_schema?" + "autoReconnect=true&useSSL=false", "root", "12345");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ssn);
			ps.setString(2, fname);
			ps.setString(3, lname);
			ps.setString(4, dob);
			ps.setString(5, blood_group);
			ps.setString(6, gender);
			ps.setString(7, emergency_contact);
			ps.setString(8, password);
			ps.setString(9, email);
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
