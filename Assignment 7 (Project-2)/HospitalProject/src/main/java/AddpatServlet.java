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
@WebServlet("/AddpatServlet")
public class AddpatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddpatServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// getting input values from jsp page
			String id = request.getParameter("p_id");
			String f_name = request.getParameter("fname");
			String l_name = request.getParameter("lname");
			String gn = request.getParameter("g");
			java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("bd"));
			java.sql.Date bdate = new java.sql.Date(date.getTime());
//			String bdate = request.getParameter("bd");
			String stt = request.getParameter("st");
			String stat = request.getParameter("state");
			String cyt = request.getParameter("ct");
			String pin = request.getParameter("pincode");
			String a_1 = request.getParameter("a1");
			String a_2 = request.getParameter("a2");
			String a_3 = request.getParameter("a3");
			int hg = Integer.parseInt(request.getParameter("h"));
			int wt = Integer.parseInt(request.getParameter("w"));
			// System.out.println("id:"+d_id +" oo "fname);

			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/hospital_db";
			String username = "root";
			String password = "password";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Printing connection object addpat: " + conn);

			// Prepared Statement to add student data
//			PreparedStatement st = conn.prepareStatement("insert into patient values(?,?,?,?,?,?,?)");
//			st.setString(1, id);
//			st.setString(2, f_name);
//			st.setString(3, l_name);
//			st.setString(4, gn);
//			st.setDate(5, bdate);
//			st.setInt(6, hg);
//			st.setInt(7, wt);
//			int result = st.executeUpdate();
//			System.out.println("addpat: " + st);
			// ...............
//			PreparedStatement st1 = conn.prepareStatement("insert into allergies values(?,?,?,?,null,null)");
//			st1.setString(1, id);
//			st1.setString(2, a_1);
//			st1.setString(3, a_2);
//			st1.setString(4, a_3);
//			System.out.println("adddoc: " + st1);
//			int result1 = st1.executeUpdate();
//
//			// ............................
//			PreparedStatement st2 = conn.prepareStatement("insert into address values(?,?,?,?,?)");
//			st2.setString(1, id);
//			st2.setString(2, stt);
//			st2.setString(3, cyt);
//			st2.setString(4, stat);
//			st2.setString(5, pin);
//			System.out.println("adddoc: " + st2);
//			int result2 = st2.executeUpdate();

			// Prepared Statement to verify if the doctor already exists.
			PreparedStatement checkPat = conn.prepareStatement("select * from patient where patient_id = ?");
			checkPat.setString(1, id);
			ResultSet rs = checkPat.executeQuery();
			int countPat = 0;
			while (rs.next()) {
				countPat += 1;
			}

			if (countPat == 0) {
				PreparedStatement st = conn.prepareStatement("insert into patient values(?,?,?,?,?,?,?)");
				st.setString(1, id);
				st.setString(2, f_name);
				st.setString(3, l_name);
				st.setString(4, gn);
				st.setDate(5, bdate);
				st.setInt(6, hg);
				st.setInt(7, wt);
				int result = st.executeUpdate();
				System.out.println("addpat: " + st);
				
				PreparedStatement st3 = conn .prepareStatement("insert into patpass values(?,?)");
		 		st3.setString(1,id);
				st3.setString(2,id);
				int result3=st3.executeUpdate();
				
				PreparedStatement st1 = conn.prepareStatement("insert into allergies values(?,?,?,?,null,null)");
				st1.setString(1, id);
				st1.setString(2, a_1);
				st1.setString(3, a_2);
				st1.setString(4, a_3);
				System.out.println("addallergy: " + st1);
				int result1 = st1.executeUpdate();

				
				PreparedStatement st2 = conn.prepareStatement("insert into address values(?,?,?,?,?)");
				st2.setString(1, id);
				st2.setString(2, stt);
				st2.setString(3, cyt);
				st2.setString(4, stat);
				st2.setString(5, pin);
				System.out.println("addaddress: " + st2);
				int result2 = st2.executeUpdate();

				// Checks if insert is successful.If yes,then redirects to AddResult.jsp page
				if (result1 > 0) {
					RequestDispatcher rd = request.getRequestDispatcher("Resultpat.jsp");
					rd.forward(request, response);
				}
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("addpatException.jsp");
				rd.forward(request, response);
			}
			
			// Checks if insert is successful.If yes,then redirects to Result.jsp page
//			if (result1 + result2 + result == 3) {
//
//				RequestDispatcher rd = request.getRequestDispatcher("Resultpat.jsp");
//				rd.forward(request, response);
//			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
