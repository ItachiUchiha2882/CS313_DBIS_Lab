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
@WebServlet("/DocdetailsServlet")
public class DocdetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DocdetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
	
		//getting input values from jsp page
		String id = request.getParameter("d_id");
		
		//System.out.println("id:"+d_id +" oo "fname);

		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/hospital_db"; 
		String username = "root"; 
 		String password = "password"; 
		
 		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password); //attempting to connect to PostgreSQL database
 		System.out.println("Printing connection object docdetails: " + conn);

         
		//Prepared Statement to add student data
		PreparedStatement st = conn .prepareStatement("select * from doctor where doctor_id=?");
 		st.setString(1,id);
 		ResultSet resultSet = st.executeQuery();
		resultSet.next();
		String f_name=resultSet.getString("first_name");
		String l_name=resultSet.getString("last_name");
		String d_name=resultSet.getString("dept_name");
		String sp=resultSet.getString("speciality");
		int sa=resultSet.getInt("salary");
		System.out.println("result: " + resultSet );
		System.out.println("result: " + sa );
		st.executeQuery();
		

		//Checks if insert is successful.If yes,then redirects to Result.jsp page 
		//if(result>0)
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("docdeatails.jsp");
			request.setAttribute("id", id);
            request.setAttribute("f_name", f_name);
            request.setAttribute("l_name", l_name);
            request.setAttribute("d_name", d_name);
            request.setAttribute("spp", sp);
            request.setAttribute("sal", sa);
			rd.forward(request, response);
		}
		

		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}

	
	}


}

