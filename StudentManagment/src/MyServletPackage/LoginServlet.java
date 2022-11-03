package MyServletPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
			String id = request.getParameter("l_id");
			String pass = request.getParameter("l_pass");
			String rpass= "";
			String f_name="" , l_name="";
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String url="jdbc:mysql://localhost:3306/myonlineproject";
			String user="root";
			String password="yourpassword";
			
			try {
				Connection cl= DriverManager.getConnection(url,user,password);
				String query="Select online_password, first_name , last_name from OnlineUser where login_id=?";
				PreparedStatement pst=cl.prepareStatement(query);
				pst.setString(1,id);
				ResultSet rs=pst.executeQuery();
				if(rs.next())
				{
					rpass= rs.getString(1);
					f_name = rs.getString(2);
					l_name = rs.getString(3);
					
					if(pass.equals(rpass))
					{
						request.setAttribute("firstName", f_name);
						request.setAttribute("lastName", l_name);
						request.getRequestDispatcher("/user.jsp").forward (request ,response);
					}
						else
					{
						request.setAttribute("error","incorrect password");
						request.getRequestDispatcher("/login.jsp").forward(request,response);
						
					}
				}
				else
				{
					request.setAttribute("message", "Please register before log in.");
					request.getRequestDispatcher("/register.jsp").forward(request, response);
				}
				cl.close();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
	}

}
