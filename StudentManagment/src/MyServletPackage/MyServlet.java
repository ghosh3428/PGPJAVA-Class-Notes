package MyServletPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/myservlet")
public class MyServlet  extends HttpServlet
{

		public void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException
		{
			res.setContentType("text/html");
			
			PrintWriter out = res.getWriter();
			
			String m1 = "Hello User";
			String m2 = "Welcome to NIIT JADAVPUR";
			
			out.print("<h1 style='color:blue'>" + m1 + "</h1>");
			out.print("<h3 style='color:red'>" + m2 + "</h3>");
		}
}
