package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.Dao;
import com.model.Post;
import com.model.Register;

public class Ideapostcontroller extends HttpServlet {
	Dao dao = new Dao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer id = null;
		String actioncode = request.getParameter("actionCode");

		HttpSession session = request.getSession();

		final String basePath = request.getContextPath() + "/wp-content/Frontend/";

		// Get all Post Table Data
		if (actioncode.equals("ListOfIdeasOfAllUsers")) {
			List<Post> allPost = dao.doloadPost();
			session.setAttribute("Post", allPost);
			response.sendRedirect(basePath + "ideadetails.jsp");
		}

		if (actioncode.equals("updateIdea")) {
			id = Integer.parseInt(request.getParameter("pid"));
			Post postbyid = dao.getIdeaPostByPostId(id);
			request.getSession(false).setAttribute("Idea", postbyid);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/editidea.jsp");
		}

		if (actioncode.equals("ListOfIdeasForCurrentUser")) {
			id = Integer.parseInt(request.getParameter("id"));
			Register lista = dao.getUserdataById(id);
			request.getSession(false).setAttribute("Userdetails", lista);
			List<Post> postbyIdeaperson = dao.getListOfIdeaPostsByUserId(id);
			request.getSession(false).setAttribute("PostsbyIdeaperson", postbyIdeaperson);
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
				request.getSession(false).setAttribute("Post", allpost);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideadetails.jsp");

			}
		}

	};

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actioncode = request.getParameter("actionCode");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

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

					Register register = dao.getUserdataById(id);
					request.getSession(false).setAttribute("Userdetails", register);

					List<Post> postdetails = dao.getListOfIdeaPostsByUserId(id);
					request.getSession(false).setAttribute("PostsbyIdeaperson", postdetails);
					response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewidea.jsp");

				}
			} finally {
				out.close();
			}
		}

		// closed Post Idea
		// Update Idea
		if (actioncode.equals("updateIdeaFromAdminPanel")) {
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
				List<Post> list = dao.doloadPost();
				request.getSession(false).setAttribute("Post", list);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideadetails.jsp");
			}

		}

	}

}
