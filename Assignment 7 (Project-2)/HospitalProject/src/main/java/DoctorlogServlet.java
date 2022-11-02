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
 * Servlet implementation class IssueServlet
 */
@WebServlet("/DoctorlogServlet")
public class DoctorlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DoctorlogServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

//Fetching Input values from jsp page

			String dID = request.getParameter("d_id");
			String pass = request.getParameter("p_id");
			System.out.println("welcome " + dID + " " + pass);
			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/hospital_db";
			String username = "root";
			String password = "password";

// Connection Establishment
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password); 
			System.out.println("Printing connection object doclog: " + conn);

// Prepared Statement to check if the student exists in the database
			PreparedStatement checkStudent = conn
					.prepareStatement("SELECT count(*) as cnt FROM docpass WHERE doc_id = ? and pass= ?");

			checkStudent.setString(1, dID);
			checkStudent.setString(2, pass);
			ResultSet resultSet = checkStudent.executeQuery();
			resultSet.next();
			// System.out.println(studentId+" "+bookId+" "+i_date+ resultSet.getInt("cnt")
			// );

			System.out.println(resultSet.getInt("cnt"));
			if (resultSet.getInt("cnt") == 0) {
				RequestDispatcher rd = request.getRequestDispatcher("nosuchdoc.jsp");
				rd.forward(request, response);

			}

// Prepared Statement to add issue data
			if (resultSet.getInt("cnt") != 0) {

				RequestDispatcher rd = request.getRequestDispatcher("doctor.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {

			System.out.println("welcome not");
			e.printStackTrace();
		}

	}

}