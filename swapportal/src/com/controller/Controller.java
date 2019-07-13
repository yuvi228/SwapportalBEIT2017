
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import comm.EmailUtility;
import com.dao.Dao;
import com.model.Feedback;
import com.model.Ideaperson;
import com.model.Investor;
import com.model.Post;
import com.model.Register;


public class Controller extends HttpServlet {
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

	List<Register> alluser = dao.doloadRegister();
	List<Investor> allinvestor = dao.doloadInvestor();
	List<Ideaperson> allideaperson = dao.doloadIdeaperson();
	List<Post> allPost = dao.doloadPost();
	List<Feedback> allfeedback = dao.doloadFeedback();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer id = null;
		String actioncode = request.getParameter("actionCode");

		request.getSession(false).setAttribute("Registration", alluser);

		request.getSession(false).setAttribute("Investor", allinvestor);

		request.getSession(false).setAttribute("Ideaperson", allideaperson);

		request.getSession(false).setAttribute("Post", allPost);

		request.getSession(false).setAttribute("Feedback", allfeedback);

		// Get All Feedback
		if (actioncode.equals("getallfeedback")) {
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/feedbackdetails.jsp");
		}

		// Get all Post Table Data
		if (actioncode.equals("getallIdea")) {

			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideadetails.jsp");
		}

		// Get all Investor Table data
		if (actioncode.equals("getallInvestor")) {
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/investorprofiledetails.jsp");
		}

		// Get all Ideaperson Table data
		if (actioncode.equals("getallIdeaperson")) {
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideapersonprofiledata.jsp");
		}

		// Get all User data
		if (actioncode.equals("getalluser")) {

			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/registerdetails.jsp");
		}

		if (actioncode.equals("updateuserData")) {

			id = Integer.parseInt(request.getParameter("id"));
			List<Register> userbyid = dao.getRegisterData(id);
			request.getSession(false).setAttribute("Userbyid", userbyid);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/edit.jsp");

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

				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/registerdetails.jsp");
			}
		}

		if (actioncode.equals("investorprofile")) {
			id = Integer.parseInt(request.getParameter("id"));
			boolean result = dao.authenticateInvestor(id);
			List<Register> lista = dao.getRegisterData(id);
			request.getSession(false).setAttribute("User", lista);
			List<Investor> investor = dao.getInvestorById(id);
			request.getSession(false).setAttribute("invprofile", investor);

			if (result == true) {

				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewinvestorprofile.jsp");
			} else {

				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/investorprofile.jsp");
			}

		}
		if (actioncode.equals("ideapersonprofile")) {
			id = Integer.parseInt(request.getParameter("id"));
			boolean result = dao.authenticateIdeaperson(id);
			List<Register> register = dao.getRegisterData(id);
			request.getSession(false).setAttribute("User", register);
			List<Ideaperson> ideaperson = dao.getIdeapersonById(id);
			request.getSession(false).setAttribute("Ideaperson", ideaperson);

			if (result == true) {

				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewideapersonprofile.jsp");
			} else {

				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideapersonprofile.jsp");
			}
		}
		if (actioncode.equals("getallData")) {

			id = Integer.parseInt(request.getParameter("id"));

		}
		if (actioncode.equals("viewIdeaperson")) {
			id = Integer.parseInt(request.getParameter("id"));
			List<Ideaperson> person = dao.getIdeapersonById(id);
			request.getSession(false).setAttribute("Ideaperson", person);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewideapersonprofile.jsp");
		}
		if (actioncode.equals("editinvestor")) {

			id = Integer.parseInt(request.getParameter("id"));
			List<Register> reg = dao.getRegisterData(id);
			List<Investor> investors = dao.getInvestorById(id);
			request.getSession(false).setAttribute("Investor", investors);
			request.getSession(false).setAttribute("User", reg);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/editinvestor.jsp");
		}
		if (actioncode.equals("editideaperson")) {

			id = Integer.parseInt(request.getParameter("id"));
			List<Ideaperson> person = dao.getIdeapersonById(id);
			request.getSession(false).setAttribute("Ideaperson", person);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/editideaperson.jsp");
		}
		if (actioncode.equals("uploadidea")) {

			id = Integer.parseInt(request.getParameter("id"));
			List<Ideaperson> person = dao.getIdeapersonById(id);
			request.getSession(false).setAttribute("Ideaperson", person);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/postidea.jsp");
		}

		if (actioncode.equals("updateIdea")) {

			id = Integer.parseInt(request.getParameter("id"));
			List<Post> postbyid = dao.getpostById(id);
			request.getSession(false).setAttribute("Idea", postbyid);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/editidea.jsp");
		}

		if (actioncode.equals("viewIdea")) {

			id = Integer.parseInt(request.getParameter("id"));
			List<Register> lista = dao.getRegisterData(id);
			request.getSession(false).setAttribute("User", lista);
			List<Post> postbyid = dao.getpostById(id);
			request.getSession(false).setAttribute("Idea", postbyid);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewidea.jsp");
		}

		if (actioncode.equals("deleteIdea")) {
			Integer pid = Integer.parseInt(request.getParameter("pid"));
			Post post = new Post();
			post.setPid(pid);
			String stats = null;
			stats = dao.dodeletePost(post);
			if (stats.equals("success")) {
				List<Post> allpost = dao.doloadPost();
				request.getSession(false).setAttribute("Idea", allpost);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideadetails.jsp");

			}
		}

		if (actioncode.equals("getfeedback")) {
			id = Integer.parseInt(request.getParameter("id"));
			List<Register> lista = dao.getRegisterData(id);
			request.getSession(false).setAttribute("User", lista);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/feedback.jsp");

		}

		// Reply Feedback
		if (actioncode.equals("replyfeedback")) {

			System.out.println("Email sent start");
			id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			Register replyfeedback = dao.getUserdataById(id);
			System.out.println(replyfeedback.getEmail());
			String email = replyfeedback.getEmail();
			String resultMessage = "";
			String subject = "Respond to your feedback";
			String content = "Thanks for your Valueable feedback. We will get back to you on this. ";
			try {

				EmailUtility.sendEmail(host, port, user, pass, email, subject, content);
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

					if (email.trim().length() >= 0 && email != null && password.trim().length() >= 0 && password != null) {
						boolean result = dao.authenticateLoginUser(email, password);
						if (result == true) {
							Register reg = dao.getUserdatabyEmail(email);
							List<Register> lista1 = dao.getUserBy(email);
							request.getSession(false).setAttribute("User", lista1);

							if (reg.getType().equals("Investor")) {

								List<Ideaperson> person = dao.doloadIdeaperson();
								request.getSession(false).setAttribute("Ideaperson", person);
								response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/investordashboard.jsp");
							} else {

								List<Investor> list = dao.doloadInvestor();
								request.getSession(false).setAttribute("Investor", list);
								response.sendRedirect(
										request.getContextPath() + "/wp-content/Frontend/ideapersondashboard.jsp");
							}
						} else {
							response.sendRedirect(request.getContextPath() + "/wp-content/error.jsp");
						}

					}

				}

				// LOGIN END
		
		
		// SEND EMAIL START
		if (actioncode.equals("emailCompose")) {
			String recipient = request.getParameter("recipient");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String resultMessage = "";

			try {
				EmailUtility.sendEmail(host, port, user, pass, recipient, subject, content);
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

					EmailUtility.sendEmail(host, port, user, pass, email, subject, content);
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

		if (actioncode.equals("search")) {
			String city = request.getParameter("city");
			String expfund = request.getParameter("funding");
			
			List<Ideaperson> list = dao.getsearch(city, expfund);
			request.getSession(false).setAttribute("search", list);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/sresult.jsp");

		}
		// add Post Idea
		if (actioncode.equals("addIdea")) {
			String definition = request.getParameter("pd");
			String title = request.getParameter("pt");
			String keyword = request.getParameter("pk");
			String abstrct = request.getParameter("pa");
			String description = request.getParameter("pdd");
			String category = request.getParameter("pc");
			String status = request.getParameter("ps");
			String esd = request.getParameter("esd");

			Integer id = Integer.parseInt(request.getParameter("id"));
			Post post = new Post();
			post = new Post(id, definition, title, keyword, abstrct, description, category, status, esd);
			try {
				Integer pid = Integer.valueOf(0);
				pid = dao.doaddPost(post);

				if (pid.intValue() > 0) {
					java.util.List<Post> posti = dao.getpostById(id);
					request.getSession(false).setAttribute("Idea", posti);
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewidea.jsp");

				}
			} finally {
				out.close();
			}
		}

		// closed Post Idea
		// Update Idea
		if (actioncode.equals("updateIdea")) {
			String definition = request.getParameter("pd");
			String title = request.getParameter("pt");
			String keyword = request.getParameter("pk");
			String abstrct = request.getParameter("pa");
			String description = request.getParameter("pdd");
			String category = request.getParameter("pc");
			String status = request.getParameter("ps");
			String esd = request.getParameter("esd");
			Integer pid = Integer.parseInt(request.getParameter("pid"));
			Integer id = Integer.parseInt(request.getParameter("id"));
			String stats = null;
			Post post = new Post();
			post.setPid(pid);
			post.setId(id);
			post.setDefinition(definition);
			post.setTitle(title);
			post.setKeyword(keyword);
			post.setAbstrct(abstrct);
			post.setDescription(description);
			post.setCategory(category);
			post.setStatus(status);
			post.setStartdate(esd);

			stats = dao.doupdatePost(post);
			if (stats.equals("success")) {
				List<Post> list = dao.getpostById(id);
				request.getSession(false).setAttribute("Idea", list);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewidea.jsp");
			}

		}
		// Update Idea
		if (actioncode.equals("addFeedback")) {

			String name = request.getParameter("name");
			String comments = request.getParameter("comments");
			Integer id = Integer.parseInt(request.getParameter("id"));
			Feedback feedback = new Feedback();
			feedback = new Feedback(id, name, comments);

			Integer fid = Integer.valueOf(0);
			fid = dao.doaddFeedback(feedback);
			Register istype = dao.getUserdataById(id);

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
