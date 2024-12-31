package com.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import java.io.InputStream;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;

import com.dao.Authdao;
import com.dao.Ideapersondao;
import com.model.Ideaperson;
import com.model.Register;
import com.util.Util;

@MultipartConfig(maxFileSize = 16177215) // upload file's size up to 16MB
public class Ideapersoncontroller extends HttpServlet {
	Ideapersondao dao = new Ideapersondao();
	Authdao authdao = new Authdao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer id = null;
		String actioncode = request.getParameter("actionCode");

		HttpSession session = request.getSession();

		final String basePath = request.getContextPath() + "/wp-content/Frontend/";

		if (actioncode.equals("getallIdeaperson")) {
			List<Ideaperson> allideaperson = dao.doloadIdeaperson();
			session.setAttribute("Ideaperson", allideaperson);
			response.sendRedirect(basePath + "ideapersonprofiledata.jsp");
		}
		if (actioncode.equals("editideaperson")) {
			id = Integer.parseInt(request.getParameter("id"));
			Ideaperson ideaperson = dao.getIdeaPersonById(id);
			request.getSession(false).setAttribute("Ideapersondetails", ideaperson);
			Register register = authdao.getUserdataById(id);
			request.getSession(false).setAttribute("Userdetails", register);
			response.sendRedirect(basePath + "editideaperson.jsp");
		}
		if ("getallideapersonImage".equals(actioncode)) {
			sendImage(request, response, "ideaperson", "photo");
		}
		if (actioncode.equals("viewIdeaperson")) {
			id = Integer.parseInt(request.getParameter("id"));
			List<Ideaperson> person = dao.getIdeapersonById(id);
			request.getSession(false).setAttribute("Ideaperson", person);
			response.sendRedirect(basePath + "viewideapersonprofile.jsp");
		}
		if (actioncode.equals("ideapersonprofile")) {
			id = Integer.parseInt(request.getParameter("id"));
			Ideaperson ideaperson = dao.getIdeapersonIfAvailable(id);
			request.getSession(false).setAttribute("Ideapersondetails", ideaperson);

			Register register = authdao.getUserdataById(id);
			request.getSession(false).setAttribute("Userdetails", register);

			if (ideaperson != null) {
				response.sendRedirect(basePath + "viewideapersonprofile.jsp");
			} else {

				response.sendRedirect(basePath + "ideapersonprofile.jsp");
			}
		}
		if (actioncode.equals("uploadidea")) {
			id = Integer.parseInt(request.getParameter("id"));

			Register register = authdao.getUserdataById(id);
			request.getSession(false).setAttribute("Userdetails", register);

			Ideaperson person = dao.getIdeaPersonById(id);
			request.getSession(false).setAttribute("Ideapersondetails", person);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/postidea.jsp");
		}
	}

	private void sendImage(HttpServletRequest request, HttpServletResponse response, String tableName,
			String columnName) throws IOException {
		SessionFactory sessionfactory = Util.getSessionFactory();
		Session session = sessionfactory.openSession();
		Integer id = Integer.parseInt(request.getParameter("id"));

		byte[] imageBytes = null;
		if (tableName.equals("ideaperson")) {
			Ideaperson ideaperson = dao.getPersonById(session, id);
			imageBytes = ideaperson.getphoto();
		}
		String format = request.getParameter("format"); // Get the format parameter (e.g., "jpg", "png")

		if (format == null) {
			format = "jpg"; // Default format if none is specified
		}
		if (imageBytes != null) {

			// Dynamically set content type based on the format parameter
			switch (format.toLowerCase()) {
			case "png":
				response.setContentType("image/png");
				break;
			case "gif":
				response.setContentType("image/gif");
				break;
			case "jpg":
			default:
				response.setContentType("image/jpg");
				break;
			}

			response.setContentLength(imageBytes.length);
			response.getOutputStream().write(imageBytes);

		} else {
			// Handle the case where the image is not found, maybe send a default image
			response.sendRedirect(request.getContextPath() + "/Image/default_image_idea.png");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actioncode = request.getParameter("actionCode");

		// Update Ideaperson
		if (actioncode.equals("updateIdeaperson")) {
			handleUpdateIdeaperson(request, response);
		}
		// Add Ideaperson
		else if (actioncode.equals("addIdeaperson")) {
			handleAddIdeaperson(request, response);
		}

		if (actioncode.equals("search")) {
			String city = request.getParameter("city");
			String expfund = request.getParameter("funding");

			List<Ideaperson> list = dao.getsearch(city, expfund);
			request.getSession(false).setAttribute("search", list);
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/sresult.jsp");

		}
	}

	private void handleUpdateIdeaperson(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer ipid = Integer.parseInt(request.getParameter("ipid"));
		Integer id = Integer.parseInt(request.getParameter("id"));
		String type = request.getParameter("st");
		String aboutyou = request.getParameter("aboutyou");
		String projectabstract = request.getParameter("pa");
		String expfund = request.getParameter("expfund");
		String adrs1 = request.getParameter("adrs1");
		String adrs2 = request.getParameter("adrs2");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String fb = request.getParameter("fb");
		String tw = request.getParameter("tw");
		String gg = request.getParameter("gg");

		Ideaperson ideaperson = dao.getIdeaPersonById(id);

		Ideaperson updatedData = new Ideaperson(ipid, id, type, aboutyou, projectabstract, expfund, adrs1, adrs2,
				street, city, country, fb, tw, gg);
		updatedData.setphoto(ideaperson.getphoto());

		String status = dao.doupdateIdeaperson(updatedData);

		if ("success".equals(status)) {
			processPostUpload(id, request, response, "Ideaperson");
		} else {
			handleError(response);
		}
	}

	private void handleAddIdeaperson(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		String type = request.getParameter("st");
		String aboutyou = request.getParameter("aboutyou");
		String projectabstract = request.getParameter("pa");
		String expfund = request.getParameter("expfund");
		String adrs1 = request.getParameter("adrs1");
		String adrs2 = request.getParameter("adrs2");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String map = request.getParameter("mp");
		String fb = request.getParameter("fb");
		String tw = request.getParameter("tw");
		String gg = request.getParameter("gg");

		// Handle image upload
		Part part = null;
		try {
			part = request.getPart("photo");
		} catch (IOException | ServletException e) {
			e.printStackTrace();
		}

		if (part != null) {
			SessionFactory sessionfactory = Util.getSessionFactory();
			Session session = null;
			Transaction transaction = null;
			try {
				// Open session and start a transaction
				session = sessionfactory.openSession();
				transaction = session.beginTransaction();

				// Prepare the Ideaperson object
				Ideaperson person = new Ideaperson(id, type, aboutyou, projectabstract, expfund, adrs1, adrs2, street,
						city, country, map, fb, tw, gg);

				// Handle the image
				InputStream is = part.getInputStream();
				byte[] photoBytes = convertInputStreamToByteArray(is);
				person.setphoto(photoBytes); // Assuming `setPhoto` is a setter method in the Ideaperson entity.

				// Save the Ideaperson entity
				session.save(person);
				transaction.commit();

				// Post-upload processing
				processPostUpload(id, request, response, "Ideaperson");
			} catch (Exception e) {
				if (transaction != null) {
					transaction.rollback();
				}
				e.printStackTrace();
				handleError(response);
			} finally {
				if (session != null) {
					session.close(); // Always close the session
				}
			}
		}
	}

	private void handleError(HttpServletResponse response) throws IOException {
		response.sendRedirect("result.jsp?message=Some+Error+Occurred");
	}

	private void processPostUpload(Integer id, HttpServletRequest request, HttpServletResponse response,
			String userType) throws IOException {

		Ideaperson ideaperson = dao.getIdeapersonIfAvailable(id);
		Register reg = authdao.getUserdataById(id);
		request.getSession().setAttribute("Userdetails", reg);
		request.getSession().setAttribute("Ideapersondetails", ideaperson);

		if (ideaperson != null) {
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewideapersonprofile.jsp");
		} else {
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideapersonprofile.jsp");
		}
	}

	private byte[] convertInputStreamToByteArray(InputStream inputStream) throws IOException {
		ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int bytesRead;

		while ((bytesRead = inputStream.read(buffer)) != -1) {
			byteArrayOutputStream.write(buffer, 0, bytesRead);
		}

		return byteArrayOutputStream.toByteArray();
	}

}// Class Closed