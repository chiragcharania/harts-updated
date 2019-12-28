import java.io.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateLogin
 */
@WebServlet("/ValidateLogin")
public class ValidateLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ValidateLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, NullPointerException {
		try {
			// retrieve data from patient database
			String role = request.getParameter("role");
			if (role.equals("patient")) {
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String sql = "select * from patient where email = ? and password = ?";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/harts_schema?" + "autoReconnect=true&useSSL=false", "root",
						"12345");
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				PrintWriter pw = response.getWriter();
				String dbname = null;
				String dbpassword = null;
				while (rs.next()) {
					dbname = rs.getString("email");
					dbpassword = rs.getString("password");
				}
				if (email.equals(dbname) && password.equals(dbpassword)) {
					HttpSession session = request.getSession();
					session.setAttribute("email", dbname);
					response.sendRedirect("patientupload.jsp");
				} else {
					pw.print("Incorrect Details" + " <a href='index.jsp'> Login again!</a>");
				}
			}
			// retrieve data from doctor database
			else if (role.equals("doctor")) {
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String sql = "select * from doctor where email = ? and password = ?";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/harts_schema?" + "autoReconnect=true&useSSL=false", "root",
						"12345");
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				PrintWriter pw = response.getWriter();
				String dbname = null;
				String dbpassword = null;
				while (rs.next()) {
					dbname = rs.getString("email");
					dbpassword = rs.getString("password");
				}
				if (email.equals(dbname) && password.equals(dbpassword)) {
					HttpSession session = request.getSession();
					session.setAttribute("email", dbname);
					response.sendRedirect("doctormain.jsp");
				} else {
					pw.print("Incorrect Details" + " <a href='index.jsp'> Login again!</a>");
				}
			}
			// retrieve data from pharmacy database
			else if (role.equals("pharmacy")) {
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String sql = "select * from pharmacy where email = ? and password = ?";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/harts_schema?" + "autoReconnect=true&useSSL=false", "root",
						"12345");
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				PrintWriter pw = response.getWriter();
				String dbname = null;
				String dbpassword = null;
				while (rs.next()) {
					dbname = rs.getString("email");
					dbpassword = rs.getString("password");
				}
				if (email.equals(dbname) && password.equals(dbpassword)) {
					HttpSession session = request.getSession();
					session.setAttribute("email", dbname);
					response.sendRedirect("pharmacymain.jsp");
				} else {
					pw.print("Incorrect Details" + " <a href='index.jsp'> Login again!</a>");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
