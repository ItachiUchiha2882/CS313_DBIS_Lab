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
import java.sql.ResultSet;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/AddstaffServlet")
public class AddstaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddstaffServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// getting input values from jsp page
			String id = request.getParameter("s_id");
			String f_name = request.getParameter("fname");
			String l_name = request.getParameter("lname");
			String deptname = request.getParameter("dept_name");
			int salry = Integer.parseInt(request.getParameter("salary"));
			// System.out.println("id:"+d_id +" oo "fname);

			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/hospital_db";
			String username = "root";
			String password = "password";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Printing connection object adddoc: " + conn);

			// Prepared Statement to add student data
//			PreparedStatement st = conn.prepareStatement("insert into doctor values(?,?,?,?,?,?)");
//			st.setString(1, id);
//			st.setString(2, f_name);
//			st.setString(3, l_name);
//			st.setString(4, deptname);
//			st.setString(5, spcility);
//			st.setInt(6, salry);
//			int result = st.executeUpdate();
//			System.out.println("adddoc: " + st);

			// Prepared Statement to verify if the doctor already exists.
			PreparedStatement checkStaff = conn.prepareStatement("select * from staff where staff_id = ?");
			checkStaff.setString(1, id);
			ResultSet rs = checkStaff.executeQuery();
			int countStaff = 0;
			while (rs.next()) {
				countStaff += 1;
			}

			if (countStaff == 0) {
				// Prepared Statement to add doctor data
				PreparedStatement st = conn.prepareStatement("insert into staff values(?,?,?,?,?)");
				st.setString(1, id);
				st.setString(2, f_name);
				st.setString(3, l_name);
				st.setString(4, deptname);
				st.setInt(5, salry);
				int result1 = st.executeUpdate();
				System.out.println("adddoc: " + st);

				// Checks if insert is successful.If yes,then redirects to AddResult.jsp page
				if (result1 > 0) {
					RequestDispatcher rd = request.getRequestDispatcher("Resultstaff.jsp");
					rd.forward(request, response);
				}
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("addstaffException.jsp");
				rd.forward(request, response);
			}
			
			// Checks if insert is successful.If yes,then redirects to Result.jsp page
//			if (result > 0) {
//				RequestDispatcher rd = request.getRequestDispatcher("Resultdoc.jsp");
//				rd.forward(request, response);
//			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
