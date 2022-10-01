package Part_A;

import java.sql.*;
import java.util.Scanner;
public class Driver {
    static final String DB_URL = "jdbc:mysql://localhost:3306/university";
//	static final String DB_URL = "jdbc:mysql://127.0.0.1:3306/university";
	static final String USER = "root";
	static final String PASS = "password";

	public static void main(String[] args) {
		try {
			// loading the driver
			// Class.forName ("com.mysql.jdbc.Driver"); 
			
			// opening connection
			Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
			
			// executing the queries
			Statement stmt = conn.createStatement();
			
			// question 3 queries
			/*
			String QUERY3 = "SELECT c.room_number "
					  	  + "FROM classroom c NATURAL JOIN section s "
					  	  + "WHERE c.building = ? AND c.capacity > 30 AND "
					  	  + "  	 s.year NOT IN (SELECT year "
					  						 + "FROM section "
					  						 + "WHERE year = '2009');";
			*/
			String QUERY4 = "SELECT c.room_number "
					+ "		 FROM classroom AS c"
					+ "		 WHERE c.building = ? AND c.capacity > 30 "
					+ "		 AND NOT EXISTS(SELECT * "
					+ "						FROM section AS s"
					+ "						WHERE s.room_number = c.room_number "
					+ "						AND s.year = ? AND "
					+ "						s.semester = ?);";
			PreparedStatement pStmt = conn.prepareStatement(QUERY4);
			
			// Retrieving the results (i.e. extracting the data)
			String QUERY1 = "SELECT * FROM student";
			ResultSet rs1 = stmt.executeQuery(QUERY1);			
			
			if(rs1 == null) {
				System.out.println("No Records Found.");
			}
			System.out.println("+---------------------+");
			System.out.println("| PART A : Question 1 |");
			System.out.println("+---------------------+");
			System.out.println(" ID     name          ");
			System.out.println("----------------");
	 
			while(rs1.next()) {
				System.out.println(rs1.getString("ID") + "  " + rs1.getString("name"));
			}
			
			// calling function for question 2
			listDepartments(stmt);
			
			// calling function for question 3
			listDepartments(pStmt);
			
			// closing the connections
			stmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void listDepartments(Statement stmt)
	{
		try {
			String QUERY2 = "SELECT dept_name, s_count, i_count "
						  + "FROM (SELECT dept_name, COUNT(ID) AS s_count "
						  		+ "FROM department NATURAL LEFT JOIN student "
						  		+ "GROUP BY dept_name) AS s natural join "
						  		+ "(SELECT dept_name, COUNT(ID) AS i_count "
						  		+ "FROM department NATURAL LEFT JOIN instructor "
						  		+ "GROUP BY dept_name) AS i "
						  + "ORDER BY dept_name ASC;";
			ResultSet rs2 = stmt.executeQuery(QUERY2);
			if(rs2 == null) {
				System.out.println("No records found");
			}
			System.out.println("+---------------------+");
			System.out.println("| PART A : Question 2 |");
			System.out.println("+---------------------+");
			System.out.println("dept_name  s_count  i_count");
			System.out.println("----------------------------");
			while(rs2.next()) {
				String dept_name = rs2.getString("dept_name");
				dept_name = String.format("%-12s", dept_name);
				String s_count = rs2.getString("s_count");
				s_count = String.format("%-7s", s_count);
				String i_count = rs2.getString("i_count");
				i_count = String.format("%-7s", i_count);
				
				System.out.println(dept_name + " " + s_count + " " + i_count);
			} while(rs2.next());
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void listDepartments(PreparedStatement stmt)
	{
		try {
			System.out.println("+---------------------+");
			System.out.println("| PART A : Question 3 |");
			System.out.println("+---------------------+");
			Scanner in = new Scanner(System.in);
			System.out.println("Enter building name : ");
	    	String building = in.nextLine();
	    	System.out.println("Enter Year : ");
	    	String year = in.nextLine();
	    	System.out.println("Enter Semester : ");
	    	String semester = in.nextLine();
			stmt.setString(1, building);
			stmt.setString(2, year);
			stmt.setString(3, semester);
			System.out.println("Classrooms -> ");
			System.out.println("+-------------+");
			System.out.println("| room_number |");
			System.out.println("+-------------+");
			ResultSet rs3 = stmt.executeQuery();
			if(rs3 == null) {
				System.out.println("No records found");
			}
			while(rs3.next()) {
				System.out.println(rs3.getString("c.room_number"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
