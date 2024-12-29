
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Dao;
import com.model.Ideaperson;
import com.model.Investor;
import com.model.Register;
import com.util.Util;

public class Authcontroller extends HttpServlet {
	Dao dao = new Dao();
	// RequestDispatcher dispatcher;

	// SEND EMAIL START
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {

		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}
	// SEND EMAIL END

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer id = null;
		String actioncode = request.getParameter("actionCode");

		HttpSession session = request.getSession();

		final String basePath = request.getContextPath() + "/wp-content/Frontend/";

		// Get all User data
		if (actioncode.equals("getalluser")) {
			List<Register> alluser = dao.doloadRegister();
			session.setAttribute("Registration", alluser);
			response.sendRedirect(basePath + "registerdetails.jsp");
		}

		if (actioncode.equals("updateuserData")) {
			id = Integer.parseInt(request.getParameter("id"));
			List<Register> userbyid = dao.getRegisterData(id);
			request.getSession(false).setAttribute("Userbyid", userbyid);
			response.sendRedirect(basePath + "edit.jsp");

		}

		if (actioncode.equals("deleteData")) {
			id = Integer.parseInt(request.getParameter("id"));
			Register reg = new Register();
			reg.setId(id);
			String status = null;
			status = dao.dodeleteRegister(reg);
			if (status.equals("success")) {
				List<Register> deleteuser = dao.doloadRegister();
				request.getSession(false).setAttribute("Registration", deleteuser);
				request.setAttribute("successDeleteMessage", "User delete successfully!");
				// request.getRequestDispatcher("/wp-content/Frontend/userlogin.jsp").forward(request,
				// response);
				response.sendRedirect(basePath + "registerdetails.jsp");
			}
		}

		if (actioncode.equals("getallData")) {

			id = Integer.parseInt(request.getParameter("id"));

		}

	};

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actioncode = request.getParameter("actionCode");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		// REGISTRATION START
		if (actioncode.equals("addRegister")) {

			String type = request.getParameter("st");
			String name = request.getParameter("name");
			String phone = request.getParameter("pn");
			String email = request.getParameter("email");
			String username = request.getParameter("un");
			String password = request.getParameter("password");

			Register reg = new Register();
			reg = new Register(type, name, phone, email, username, password);
			try {
				boolean resul = dao.register(reg);
				if (resul) {
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/userlogin.jsp");
					System.out.println("Registration Sucessfully");
				} else {
					out.println("<h1>This User is Already Register with Swap Portal</h1>");
					out.println("To try again<a href=wp-content/Frontend/registration.jsp>Click here</a>");
				}

			} finally {
				out.close();
			}
		} // REGISTRATION END

		// LOGIN START
		if (actioncode.equals("addLogin")) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			// Validate input
			if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
				request.setAttribute("errorMessage", "Email and password must not be empty.");
				request.getRequestDispatcher("/wp-content/Frontend/userlogin.jsp").forward(request, response);
				return;
			}

			Register reg = dao.getRegisterUserIfAvailable(email, password);
			if (reg != null) {
				request.getSession(false).setAttribute("Userdetail", reg);

				String userType = reg.getType();
				if (userType.equals("Investor") && userType != null) {
					List<Ideaperson> ideapersonList = dao.doloadIdeaperson();
					request.getSession(false).setAttribute("Ideapersonlist", ideapersonList);
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/investordashboard.jsp");
				} else {
					List<Investor> investorList = dao.doloadInvestor();
					request.getSession(false).setAttribute("Investorlist", investorList);
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideapersondashboard.jsp");
				}

			} else {
				request.setAttribute("errorMessage", "Your account is not registered on Swapportal");
				request.getRequestDispatcher("/wp-content/Frontend/userlogin.jsp").forward(request, response);
				return;
			}

		}

		// LOGIN END

		// SEND EMAIL START
		if (actioncode.equals("emailCompose"))

		{
			String recipient = request.getParameter("recipient");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String resultMessage = "";

			try {
				Util.sendEmail(host, port, user, pass, recipient, subject, content);
				resultMessage = "The e-mail was sent successfully";
				System.out.println(resultMessage);
			} catch (Exception ex) {
				ex.printStackTrace();
				resultMessage = "There were an error: " + ex.getMessage();
				System.out.println(resultMessage);
			} finally {
				request.setAttribute("Message", resultMessage);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/admin.jsp");
			}

		}
		// SEND EMAIL END

		if (actioncode.equals("addForgot")) {
			String email = request.getParameter("email");

			boolean result = dao.authenticateUser(email);
			Register reg = dao.getUserdatabyEmail(email);

			if (result == true) {

				String resultMessage = "";
				String subject = "Password";
				String content = "Your password is " + reg.getPassword();
				try {

					Util.sendEmail(host, port, user, pass, email, subject, content);
					resultMessage = "The e-mail was sent successfully";
					System.out.println(resultMessage);
				} catch (Exception ex) {
					ex.printStackTrace();
					resultMessage = "There were an error: " + ex.getMessage();
					System.out.println(resultMessage);
				} finally {
					request.setAttribute("Message", resultMessage);
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/userlogin.jsp");

				}
			} else {
				response.sendRedirect(request.getContextPath() + "/wp-content/error.jsp");
			}

		}

		// update Start

		if (actioncode.equals("updateData")) {
			String name = request.getParameter("name");
			String phone = request.getParameter("pn");
			String email = request.getParameter("email");
			String username = request.getParameter("un");
			String password = request.getParameter("password");

			Integer id = Integer.parseInt(request.getParameter("id"));
			String status = null;
			Register reg = new Register();
			reg.setId(id);
			reg.setName(name);
			reg.setPhone(phone);
			reg.setEmail(email);
			reg.setUsername(username);
			reg.setPassword(password);

			status = dao.doupdateRegister(reg);
			if (status.equals("success")) {
				List<Register> list = dao.doloadRegister();
				request.getSession(false).setAttribute("Registration", list);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/registerdetails.jsp");
			}
		}
		// update closed

	}

}
