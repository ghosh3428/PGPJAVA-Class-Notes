package MyServletPackage;

import java.io.IOException;
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
			
			
			if(id.equals("Niit#1267"))
			{
				if(pass.equals("pass@1290#787"))
				{	
					request.setAttribute("id", id);
					request.setAttribute("time", new Date());
					request.getRequestDispatcher("/user.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("error", "Incorrect Password");
					request.getRequestDispatcher("/login.jsp").include(request, response);
				}
				
			}
			else
			{
				request.setAttribute("error", "Incorrect ID");
				request.getRequestDispatcher("/login.jsp").include(request, response);
			}
	}

}
