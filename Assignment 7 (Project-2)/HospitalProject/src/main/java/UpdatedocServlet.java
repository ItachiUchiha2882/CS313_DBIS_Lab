import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/UpdatedocServlet")
public class UpdatedocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdatedocServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// getting input values from jsp page
			String id = request.getParameter("d_id");
			String f_name = request.getParameter("fname");
			String l_name = request.getParameter("lname");
			String deptname = request.getParameter("dept_name");
			String spcility = request.getParameter("spacility");
			int salry = Integer.parseInt(request.getParameter("salary"));
			// System.out.println("id:"+d_id +" oo "fname);

			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/hospital_db";
			String username = "root";
			String password = "password";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Printing connection object updatedoc: " + conn);

			// Prepared Statement to add student data
			PreparedStatement st = conn.prepareStatement(
			"UPDATE doctor SET first_Name = ?,last_Name = ?, dept_Name = ?,speciality = ?,salary = ? WHERE doctor_id = ?");
			st.setString(6, id);
			st.setString(1, f_name);
			st.setString(2, l_name);
			st.setString(3, deptname);
			st.setString(4, spcility);
			st.setInt(5, salry);
			int result = st.executeUpdate();
			System.out.println("updatedoc: " + st);
			// Checks if insert is successful.If yes,then redirects to Result.jsp page
			if (result > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("Resultdocupdated.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
