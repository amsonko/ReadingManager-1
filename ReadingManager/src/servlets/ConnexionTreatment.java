package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dao.UserDAO;
import beans.UserBean;
import sql.Database;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ConnexionTreatment")
public class ConnexionTreatment extends HttpServlet 
{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		try
		{
			
			if (request.getParameter("tbMail").isEmpty() || request.getParameter("tbPassword").isEmpty())
			{
					String errorMessage = "You didn't filled all the obligatory fields";
					request.getSession().setAttribute("missingFields", errorMessage);
					response.sendRedirect("Connexion.jsp"); 
			} 
			else 
			{
				UserBean user = new UserBean();
				user.setMail(request.getParameter("tbMail")); 
				user.setPassword(request.getParameter("tbPassword"));
				
				UserDAO userDAO = new UserDAO();
				user=userDAO.getLogin(user);
				
				//Creation of session
				HttpSession session = request.getSession(true);
				session.setAttribute("user", user);
				
				response.sendRedirect("Home.jsp");
			}
			
			
		}
		catch (ServletException e)
		{
			String error = e.getMessage();
			request.getSession().setAttribute("loginFailed", error);
			response.sendRedirect("Connexion.jsp"); 
		}
		catch (IOException e)
		{
			String error = e.getMessage();
			request.getSession().setAttribute("loginFailed", error);
			response.sendRedirect("Connexion.jsp"); 
		}
		catch (Exception e)
		{
			String error = e.getMessage();
			request.getSession().setAttribute("loginFailed", error);
			response.sendRedirect("Connexion.jsp"); 
		}
		

		

	}

}
