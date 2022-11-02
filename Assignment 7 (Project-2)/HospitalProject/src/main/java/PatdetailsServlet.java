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
@WebServlet("/PatdetailsServlet")
public class PatdetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public PatdetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
	
		//getting input values from jsp page
		String id = request.getParameter("p_id");
		
		//System.out.println("id:"+d_id +" oo "fname);

		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/hospital_db"; 
		String username = "root"; 
 		String password = "password"; 
		
 		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password); //attempting to connect to PostgreSQL database
 		System.out.println("Printing connection object patdetails: " + conn);

         
		//Prepared Statement to add student data
		PreparedStatement st = conn .prepareStatement("select * from patient where patient_id=?");
 		st.setString(1,id);
 		ResultSet resultSet = st.executeQuery();
		resultSet.next();
		String f_name=resultSet.getString("first_name");
		String l_name=resultSet.getString("last_name");
		String gender=resultSet.getString("gender");
		String dob=resultSet.getString("birth_date");
		int ht=resultSet.getInt("height");
		int wt=resultSet.getInt("weight");
		System.out.println("result: " + resultSet );
		st.executeQuery();
		

		//Checks if insert is successful.If yes,then redirects to Result.jsp page 
		//if(result>0)
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("patdeatails.jsp");
			request.setAttribute("id", id);
            request.setAttribute("f_name", f_name);
            request.setAttribute("l_name", l_name);
            request.setAttribute("gender", gender);
            request.setAttribute("dob", dob);
            request.setAttribute("ht", ht);
            request.setAttribute("wt", wt);
			rd.forward(request, response);
		}
		

		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}

	
	}


}

