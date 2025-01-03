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

import com.dao.Authdao;
import com.dao.Feedbackdao;
import com.model.Feedback;
import com.model.Register;
import com.util.Util;

public class Feedbackcontroller extends HttpServlet {
	Feedbackdao dao = new Feedbackdao();
	Authdao authdao = new Authdao();

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

		// Add headers to prevent caching of protected pages
		response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);

		Integer id = null;
		String actioncode = request.getParameter("actionCode");

		HttpSession session = request.getSession(false);

		final String basePath = request.getContextPath() + "/wp-content/Frontend/";

		// Get All Feedback
		if (actioncode.equals("getallfeedback")) {
			List<Feedback> allfeedback = dao.doloadFeedback();
			session.setAttribute("Feedback", allfeedback);
			response.sendRedirect(basePath + "feedbackdetails.jsp");
		}

		if (actioncode.equals("getfeedback")) {
			id = Integer.parseInt(request.getParameter("id"));
			List<Register> lista = authdao.getRegisterData(id);
			request.getSession(false).setAttribute("User", lista);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/feedback.jsp");

		}

		// Reply Feedback
		if (actioncode.equals("replyfeedback")) {

			System.out.println("Email sent start");
			id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			Register replyfeedback = authdao.getUserdataById(id);
			System.out.println(replyfeedback.getEmail());
			String email = replyfeedback.getEmail();
			String resultMessage = "";
			String subject = "Respond to your feedback";
			String content = "Thanks for your Valueable feedback. We will get back to you on this. ";
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
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/admin.jsp");
			}
		}
	};

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actioncode = request.getParameter("actionCode");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		// SEND EMAIL START
		if (actioncode.equals("emailCompose")) {
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

		if (actioncode.equals("addFeedback")) {

			String name = request.getParameter("name");
			String comments = request.getParameter("comments");
			Integer id = Integer.parseInt(request.getParameter("id"));
			Feedback feedback = new Feedback();
			feedback = new Feedback(id, name, comments);

			Integer fid = Integer.valueOf(0);
			fid = dao.doaddFeedback(feedback);
			Register istype = authdao.getUserdataById(id);

			if (fid.intValue() > 0) {

				if (istype.getType().equals("Investor")) {
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/investordashboard.jsp");
				} else {
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideapersondashboard.jsp");
				}
			}

		}

	}

}
