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
import java.text.SimpleDateFormat;
import java.sql.Date;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/AddappServlet")
public class AddappServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddappServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// getting input values from jsp page
			String pid = request.getParameter("p_id");
			String aid = request.getParameter("a_id");
			String did = request.getParameter("d_id");
			java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dt"));
			java.sql.Date dtt = new java.sql.Date(date.getTime());
//			String dtt = request.getParameter("dt");
			String dag = request.getParameter("da");
			// System.out.println("id:"+d_id +" oo "fname);

			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/hospital_db";
			String username = "root";
			String password = "password";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Printing connection object addapp: " + conn);

//			// Prepared Statement to add appointment data
//			PreparedStatement st = conn.prepareStatement("insert into appointment values(?,?,?,?,?)");
//			st.setString(1, aid);
//			st.setString(2, pid);
//			st.setString(3, did);
//			// st.setString(4,dept_name);
//			st.setDate(4, dtt);
//			st.setString(5, dag);
//			int result = st.executeUpdate();
//			System.out.println("addpat: " + st);

			PreparedStatement checkApp = conn.prepareStatement("select * from appointment where appointment_id = ?");
			checkApp.setString(1, aid);
			ResultSet rs = checkApp.executeQuery();
			int countApp = 0;
			while (rs.next()) {
				countApp += 1;
			}

			if (countApp == 0) {
				// Prepared Statement to add appointment data
				PreparedStatement st = conn.prepareStatement("insert into appointment values(?,?,?,?,?)");
				st.setString(1, aid);
				st.setString(2, pid);
				st.setString(3, did);
				st.setDate(4, dtt);
				st.setString(5, dag);
				int result = st.executeUpdate();
				System.out.println("addpat: " + st);

				// Checks if insert is successful.If yes,then redirects to AddResult.jsp page
				if (result > 0) {
					RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
					rd.forward(request, response);
				}
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("addappException.jsp");
				rd.forward(request, response);
			}
			
//			// Checks if insert is successful.If yes,then redirects to Result.jsp page
//			if (result != 0) {
//				RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
//				rd.forward(request, response);
//			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
