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
import com.dao.Dao;

import com.model.Investor;
import com.model.Register;
import com.util.Util;

@MultipartConfig(maxFileSize = 16177215) // upload file's size up to 16MB
public class Investorcontroller extends HttpServlet {
	Dao dao = new Dao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer id = null;
		String actioncode = request.getParameter("actionCode");

		HttpSession httpsession = request.getSession();

		final String basePath = request.getContextPath() + "/wp-content/Frontend/";

		// Get all Investor Table data

		if (actioncode.equals("editinvestor")) {

			id = Integer.parseInt(request.getParameter("id"));
			List<Register> reg = dao.getRegisterData(id);
			List<Investor> investors = dao.getInvestorById(id);
			request.getSession(false).setAttribute("Investor", investors);
			request.getSession(false).setAttribute("User", reg);
			response.sendRedirect(basePath + "editinvestor.jsp");
		}
		if (actioncode.equals("getallInvestor")) {

			List<Investor> allinvestor = dao.doloadInvestor();
			httpsession.setAttribute("Investor", allinvestor);
			response.sendRedirect(basePath + "investorprofiledetails.jsp");
		}
		if (actioncode.equals("investorprofile")) {
			id = Integer.parseInt(request.getParameter("id"));
			boolean result = dao.authenticateInvestor(id);
			List<Register> lista = dao.getRegisterData(id);
			request.getSession(false).setAttribute("User", lista);
			List<Investor> investor = dao.getInvestorById(id);
			request.getSession(false).setAttribute("invprofile", investor);

			if (result == true) {

				response.sendRedirect(basePath + "viewinvestorprofile.jsp");
			} else {

				response.sendRedirect(basePath + "investorprofile.jsp");
			}

		}
		if ("getallinvestorImage".equals(actioncode)) {
			SessionFactory sessionfactory = Util.getSessionFactory();
			Session session = sessionfactory.openSession();
			id = Integer.parseInt(request.getParameter("id"));

			byte[] imageBytes = null;

			Investor investor = dao.getInvestorById1(session, id);
			imageBytes = investor.getlogo();

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
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actioncode = request.getParameter("actionCode");

		// Add Investor
		if (actioncode.equals("addInvestor")) {
			handleAddInvestor(request, response);
		}
		// Update Investor
		else if (actioncode.equals("updateInvestor")) {
			handleUpdateInvestor(request, response);
		}

	}

	private void handleUpdateInvestor(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer iid = Integer.parseInt(request.getParameter("iid"));
		Integer id = Integer.parseInt(request.getParameter("id"));
		String type = request.getParameter("st");
		String areaofinterest = request.getParameter("aoi");
		String investingamount = request.getParameter("inam");
		String adrs1 = request.getParameter("adrs1");
		String adrs2 = request.getParameter("adrs2");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String map = request.getParameter("mp");
		String fb = request.getParameter("fb");
		String tw = request.getParameter("tw");
		String gg = request.getParameter("gg");

		Investor investor = dao.getInvestorById1(id);

		Investor updatedData = new Investor(iid, id, type, areaofinterest, investingamount, adrs1, adrs2, street, city,
				country, map, fb, tw, gg);
		updatedData.setlogo(investor.getlogo());
		String status = dao.doupdateInvestor(updatedData);

		if ("success".equals(status)) {
			processPostUpload(id, request, response, "Investor");
		} else {
			handleError(response);
		}
	}

	private void handleAddInvestor(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		String type = request.getParameter("st");
		String areaofinterest = request.getParameter("aoi");
		String investingamount = request.getParameter("inam");
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

				// Prepare the Investor object
				Investor investor = new Investor(id, type, areaofinterest, investingamount, adrs1, adrs2, street, city,
						country, map, fb, tw, gg);

				// Handle the image
				InputStream is = part.getInputStream();
				byte[] photoBytes = convertInputStreamToByteArray(is);
				investor.setlogo(photoBytes); // Assuming `setLogo` is a setter method in the Investor entity.

				// Save the Investor entity
				session.save(investor);
				transaction.commit();

				// Post-upload processing
				processPostUpload(id, request, response, "Investor");
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

	private byte[] convertInputStreamToByteArray(InputStream inputStream) throws IOException {
		ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int bytesRead;

		while ((bytesRead = inputStream.read(buffer)) != -1) {
			byteArrayOutputStream.write(buffer, 0, bytesRead);
		}

		return byteArrayOutputStream.toByteArray();
	}

	private void handleError(HttpServletResponse response) throws IOException {
		response.sendRedirect("result.jsp?message=Some+Error+Occurred");
	}

	private void processPostUpload(Integer id, HttpServletRequest request, HttpServletResponse response,
			String userType) throws IOException {
		boolean isAuthenticated = (userType.equals("Investor") ? dao.authenticateInvestor(id)
				: dao.authenticateIdeaperson(id));
		List<Register> list = dao.getRegisterData(id);
		request.getSession().setAttribute("User", list);

		String redirectPage = (userType.equals("Investor") ? "viewinvestorprofile.jsp" : "viewideapersonprofile.jsp");
		if (isAuthenticated) {
			response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/" + redirectPage);
		} else {
			response.sendRedirect(
					request.getContextPath() + "/wp-content/Frontend/" + userType.toLowerCase() + "profile.jsp");
		}
	}

}