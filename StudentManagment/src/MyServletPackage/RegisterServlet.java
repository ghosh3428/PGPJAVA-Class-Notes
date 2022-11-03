package MyServletPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myonlineproject" , "root" , "yourpassword");
			
			String query = "insert into onlineuser values(?,?,?,?,?,?);";
			
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setNString(1, request.getParameter("l_id"));
			pst.setNString(2, request.getParameter("l_pass"));
			pst.setNString(3, request.getParameter("f_name"));
			pst.setNString(4, request.getParameter("l_name"));
			pst.setNString(5, request.getParameter("phone"));
			pst.setNString(6, request.getParameter("email"));
			
			pst.executeUpdate();
			con.close();
			
			
			request.setAttribute("message", "User Registerd Successfully");
			request.getRequestDispatcher("/index.jsp").include(request, response);
			
			
		} 
		
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
