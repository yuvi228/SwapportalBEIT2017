package comm;

import java.io.IOException;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.Dao;
import com.model.Ideaperson;
import com.model.Investor;
import com.model.Post;
import com.model.Register;

//@WebServlet("/FileUploadDBServlet")
@MultipartConfig(maxFileSize = 16177215) // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
	Dao dao = new Dao();
	// database connection settings
	private String dbURL = "jdbc:mysql://localhost:3306/project";
	private String dbUser = "root";
	private String dbPass = "";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actioncode = request.getParameter("actionCode");
		if (actioncode.equals("getallinvestorImage")) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			String connectionURL = "jdbc:mysql://localhost:3306/project";
			String user = "root";
			String pass = "";

			Connection con = null;

			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(connectionURL, user, pass);

				PreparedStatement ps = con.prepareStatement("select logo from investor where id = ?");
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();

				if (rs.next()) {

					byte byteArray[] = rs.getBytes(1);
					response.setContentType("image/jpg");
					OutputStream os = response.getOutputStream();
					os.write(byteArray);
					os.flush();
					os.close();

					return;

				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		
		
		if (actioncode.equals("getallideapersonImage")) {
			
			
			Integer id = Integer.parseInt(request.getParameter("id"));
			String connectionURL = "jdbc:mysql://localhost:3306/project";
			String user = "root";
			String pass = "";

			Connection con = null;

			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(connectionURL, user, pass);

				PreparedStatement ps = con.prepareStatement("select photo from ideaperson where id = ?");
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();

				if (rs.next()) {

					byte byteArray[] = rs.getBytes(1);
					response.setContentType("image/jpg");
					OutputStream os = response.getOutputStream();
					os.write(byteArray);
					os.flush();
					os.close();

					return;

				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
			
			
			
			
			
			
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// gets values of text fields
		String actioncode = request.getParameter("actionCode");

		
		
		
		
		// Add Investor
		if (actioncode.equals("addInvestor")) {
System.out.println("Add into addInvestor");
			int result = 0;

			Connection conn = null; // connection to the database

			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
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
System.out.println("Get all data");
			// InputStream inputStream = null; // input stream of the upload file

			// obtains the upload file part in this multipart request
			Part Part = request.getPart("photo");
			if (Part != null) {
				try {
					// connects to the database
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

					// constructs SQL statement
					String sql = "INSERT INTO investor (id,type,areaofinterest,investingamount,logo,address1,address2,street,city,country,map,fb,tw,gg) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					PreparedStatement statement = conn.prepareStatement(sql);
					InputStream is = Part.getInputStream();
					statement.setInt(1, id);
					statement.setString(2, type);
					statement.setString(3, areaofinterest);
					statement.setString(4, investingamount);
					statement.setBlob(5, is);
					
					statement.setString(6, adrs1);
					statement.setString(7, adrs2);
					statement.setString(8, street);
					statement.setString(9, city);
					statement.setString(10, country);
					statement.setString(11, map);
					statement.setString(12, fb);
					statement.setString(13, tw);
					statement.setString(14, gg);
					

					result = statement.executeUpdate();

				} catch (SQLException | ClassNotFoundException e) {

					e.printStackTrace();
				} finally {
					if (conn != null) {
						// closes the database connection
						try {
							conn.close();
						} catch (SQLException ex) {
							ex.printStackTrace();
						}
					}

				}
			}
			if (result > 0) {
				System.out.println("Uploaded");
				// response.sendRedirect("result.jsp?message=Image+Uploaded");
			} else {
				System.out.println("error");
				// response.sendRedirect("result.jsp?message=Some+Error+Occurred");
			}
			// forwards to the message page
			id = Integer.parseInt(request.getParameter("id"));
			boolean investor = dao.authenticateInvestor(id);
			List<Register> list = dao.getRegisterData(id);
			List<Investor> invprofile = dao.getInvestorById(id);
			request.getSession(false).setAttribute("User", list);
			request.getSession(false).setAttribute("invprofile", invprofile);
			if (investor == true) {

				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/investorprofile.jsp");
			} else {

				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewinvestorprofile.jsp");
			}
		}

		// Add Investor Closed
		
		// Upload Investor start
		if (actioncode.equals("updateInvestor")) {

			System.out.println("start");
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

			Integer iid = Integer.parseInt(request.getParameter("iid"));
			System.out.println(iid);
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			String status = null;

			Investor investor = new Investor();
			investor.setIid(iid);
			investor.setId(id);
			investor.setType(type);

			investor.setAreaofinterest(areaofinterest);
			investor.setInvestingamount(investingamount);
			investor.setAddress1(adrs1);
			investor.setAddress2(adrs2);
			investor.setStreet(street);
			investor.setCity(city);
			investor.setCountry(country);
			investor.setMap(map);
			investor.setFb(fb);
			investor.setTw(tw);
			investor.setGg(gg);

			status = dao.doupdateInvestor(investor);
			if (status.equals("success")) {
				List<Investor> investors = dao.getInvestorById(id);
				request.getSession(false).setAttribute("invprofile", investors);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewinvestorprofile.jsp");

			}

		} // Update Investor Closed

		// Update Ideaperson
		if (actioncode.equals("updateIdeaperson")) {

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

			Ideaperson person = new Ideaperson();
			Integer ipid = Integer.parseInt(request.getParameter("ipid"));
			System.out.println(ipid);
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			String status = null;

			person.setIpid(ipid);
			person.setId(id);
			person.setType(type);
			person.setAboutyou(aboutyou);
			person.setProjectabstract(projectabstract);
			person.setExpectfund(expfund);
			person.setAddress1(adrs1);
			person.setAddress2(adrs2);
			person.setStreet(street);
			person.setCity(city);
			person.setCountry(country);
			person.setFb(fb);
			person.setTw(tw);
			person.setGg(gg);

			status = dao.doupdateIdeaperson(person);
			if (status.equals("success")) {
				List<Ideaperson> investors = dao.getIdeapersonById(id);
				request.getSession(false).setAttribute("Ideaperson", investors);
				response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewideapersonprofile.jsp");

			}
		} // Update IDea person closed

		// ADD ADDEAPERSON
		if (actioncode.equals("addIdeaperson")) {	
			System.out.println("Add into addIdeaperson");
			int result = 0;
			Connection conn = null; // connection to the database

			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
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
			System.out.println("Get all data");
			// obtains the upload file part in this multipart request
						Part Part = request.getPart("photo");
						if (Part != null) {
							try {
								// connects to the database
								Class.forName("com.mysql.jdbc.Driver");
								conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

								// constructs SQL statement
								String sql = "INSERT INTO ideaperson (id,type,photo,aboutyou,expectfund,projectabstract,address1,address2,street,city,country,map,fb,tw,gg) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
								PreparedStatement statement = conn.prepareStatement(sql);
								InputStream is = Part.getInputStream();
								statement.setInt(1, id);
								statement.setString(2, type);
								statement.setBlob(3, is);
								statement.setString(4, aboutyou);
								statement.setString(5, expfund);
								statement.setString(6, projectabstract);
								statement.setString(7, adrs1);
								statement.setString(8, adrs2);
								statement.setString(9, street);
								statement.setString(10, city);
								statement.setString(11, country);
								statement.setString(12, map);
								statement.setString(13, fb);
								statement.setString(14, tw);
								statement.setString(15, gg);
								

								result = statement.executeUpdate();

							} catch (SQLException | ClassNotFoundException e) {

								e.printStackTrace();
							} finally {
								if (conn != null) {
									// closes the database connection
									try {
										conn.close();
									} catch (SQLException ex) {
										ex.printStackTrace();
									}
								}

							}
						}
						if (result > 0) {
							System.out.println("Uploaded");
							// response.sendRedirect("result.jsp?message=Image+Uploaded");
						} else {
							System.out.println("error");
							// response.sendRedirect("result.jsp?message=Some+Error+Occurred");
						}
						id = Integer.parseInt(request.getParameter("id"));
						boolean ideaperson = dao.authenticateIdeaperson(id);
						List<Register> list = dao.getRegisterData(id);
						List<Ideaperson> ideaperson1 = dao.getIdeapersonById(id);
						request.getSession(false).setAttribute("User", list);
						request.getSession(false).setAttribute("Ideaperson", ideaperson1);
						if (ideaperson == true) {

							response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/ideapersonprofile.jsp");
						} else {

							response.sendRedirect(request.getContextPath() + "/wp-content/Frontend/viewideapersonprofile.jsp");
						}
			
		} // Add Idea person Closed
	}
}// Class Closed