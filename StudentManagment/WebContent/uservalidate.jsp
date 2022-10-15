<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>


<%

	String id = request.getParameter("l_id");
	String pass = request.getParameter("l_pass");
	String c_pass = request.getParameter("c_pass");
	String f_name = request.getParameter("f_name");
	String l_name = request.getParameter("l_name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	int u = 0 , l=0 , d=0 , s=0;
	boolean check = true;
	char data;
	
	/*
		1) password and confirm must be same
		2) password must have 1 cap , 1 digit , 1 special , i small , min length 8 , max length 13
		3) f_name 1st alpha must be cap
		4) phone number length 10
		5) email domain must be niit.com
		6) data cannot be empty

	*/
	if(c_pass.equals(""))
	{
		check = false ;
		request.setAttribute("c_pass_error", "Please enter confirm password.");
	}
	else if (!(pass.equals(c_pass)))
	{
		check = false ;
		request.setAttribute("c_pass_error", "Password and Confirm Password Does not match.");
	}
		
	if(pass.equals(""))
	{
		check = false ;
			request.setAttribute("pass_error", "Please enter password.");
	}
	else if(pass.length() <8 || pass.length()>13)
	{
		check = false ;
		request.setAttribute("pass_error", "Password Length must be between 8 and 13.");
	}
	else
	{
		for(int i = 0 ; i<pass.length() ; i++)
		{
			data = pass.charAt(i);			
			if(Character.isUpperCase(data))
				u++;
			
			if(Character.isLowerCase(data))
				l++;
			
			if(Character.isDigit(data))
				d++;
			
			if(data=='#' || data=='$' || data=='@' ||data=='&' || data=='*')
				s++;
		}
		
		if(u<1 || l<1 || s<1 || d<1)
		{
			check = false ;
			request.setAttribute("pass_error", "Invalid Password.");
		}
	}
	
	
	if(f_name.equals(""))
	{
		check = false ;
			request.setAttribute("fname_error", "Please enter first name.");
	}	
	else if(!(Character.isUpperCase(f_name.charAt(0))))
	{
		check = false ;
			request.setAttribute("fname_error", "First Name must start with an Capital Alphabet");
	}
	
	if(l_name.equals(""))
	{
		check = false ;
			request.setAttribute("lname_error", "Please enter last name.");
	}
	
	if(phone.equals(""))
	{
		check = false ;
			request.setAttribute("phone_error", "Please enter phone number.");
	}	
	else if(phone.length() != 10)
	{
		check = false ;
		request.setAttribute("phone_error", "Invalid Phone number - must be 10 digits");
	}
		
	if(email.equals(""))
	{
		check = false ;
		request.setAttribute("email_error", "Please enter Email.");
	}	
	else if(!(email.substring(email.lastIndexOf('@') + 1).equals("niit.com")))
	{
		check = false ;
		request.setAttribute("email_error", "Domain must be niit.com");
	}
	
	if(id.equals(""))
	{
		check = false ;
			request.setAttribute("id_error", "Please enter Login ID.");
	}	
	
	if(check == true)
	{
		request.getRequestDispatcher("/RegisterServlet").forward(request , response);
	}
	else
	{
	request.getRequestDispatcher("/register.jsp").forward(request , response);
	}

%>

</body>
</html>

