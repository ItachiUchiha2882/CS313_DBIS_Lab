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
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// declaring variables for later use in making connection
	static final String DB_URL = "jdbc:mysql://localhost:3306/Library";
	static final String USER = "root";
	static final String PASS = "password";

	public AddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// getting input values from jsp page
			String book_id = request.getParameter("book_id");
			String title = request.getParameter("title");
			String category = request.getParameter("category");
			String author = request.getParameter("author");

			Connection conn = null;
			Class.forName("com.mysql.jdbc.Driver"); // loading the driver
			conn = DriverManager.getConnection(DB_URL, USER, PASS); // attempting to connect to MySQL database
			System.out.println("Printing connection object " + conn);

			// Prepared Statement to verify if the book already exists.
			PreparedStatement checkBook = conn.prepareStatement("select * from book where book_id = ?");
			checkBook.setString(1, book_id);
			ResultSet rs = checkBook.executeQuery();
			int countBook = 0;
			while (rs.next()) {
				countBook += 1;
			}

			if (countBook == 0) {
				// Prepared Statement to add book details
				String addQuery = "INSERT INTO book VALUES(?, ?, ?, ?);";
				PreparedStatement pStmt = conn.prepareStatement(addQuery);
				pStmt.setString(1, book_id);
				pStmt.setString(2, title);
				pStmt.setString(3, category);
				pStmt.setString(4, author);
				int result = pStmt.executeUpdate();
				System.out.println("result is " + result);

				// Checks if insert is successful.If yes,then redirects to AddResult.jsp page
				if (result > 0) {
					RequestDispatcher rd = request.getRequestDispatcher("AddResult.jsp");
					rd.forward(request, response);
				}
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("AddResultException.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
