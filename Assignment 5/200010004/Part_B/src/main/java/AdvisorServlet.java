import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AdvisorServlet extends HttpServlet{
	static final String DB_URL = "jdbc:mysql://localhost:3306/university";
	static final String USER = "root";
	static final String PASS = "password";

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		response.setContentType("text/html;charset=UTF-8");
		
		String i_id = request.getParameter("id");// getting advisor id as input from index.html page
		
		PrintWriter out = response.getWriter();
		Connection conn = null;
		Statement  stmt = null;
		String dept_name=null;
		try {
			out.println("<!DOCTYPE html>");// print in the form of HTML code
			out.println("<html>");
			out.println("<head><title>Advisor Qurey Servlet</title>");
			out.println("<link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap\" rel=\"stylesheet\">");
			out.println("<style>*{font-family: 'Noto Sans', sans-serif;}</style></head>");
		    // added some fonts above :)
			out.println("<body>"); // reached here!!!
			
			Class.forName("com.mysql.jdbc.Driver"); // loading mysql driver
			String query="SELECT i.dept_name "
					   + "FROM instructor AS i, advisor AS a "
					   + "WHERE i.ID = a.i_id AND i_id = ? "; // query to get the dept_name for given advisor id 
			
			conn = DriverManager.getConnection(DB_URL, USER, PASS);// mysql connection with username and password
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, i_id);
			ResultSet rset = ps.executeQuery();
			
			int count=0;
			while(rset.next()) {
				dept_name=rset.getString("dept_name"); //getting dept_name name and storing in a variable
				++count;
			}
			out.println("Advisor id is " + i_id + " And he belongs to the department " + "<u><strong>" + dept_name + "</strong></u>" ); //printing advisor id and dept_name he belongs.
			out.println("<p>==== " + count + " rows found =====</p>");
			out.println("</body></html>");
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			out.close();
			try {
				if (stmt != null) stmt.close();
				if (conn != null) conn.close();  // closing connection and statement variables
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}
}

