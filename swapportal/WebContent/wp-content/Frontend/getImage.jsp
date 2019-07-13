<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
Integer id = Integer.parseInt(request.getParameter("id"));
			 
			String connectionURL = "jdbc:mysql://localhost:3306/project";
			String user = "root";
			String pass = "";
			 
			Connection con = null;
			 
			try{
			    Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection(connectionURL, user, pass);
			    
			    PreparedStatement ps = con.prepareStatement("select logo from investor where id=?");
			    ps.setInt(1, id);
			    
			    
			    ResultSet rs = ps.executeQuery();
			 
			    if(rs.next()){
			    	 
			    	
// 			    	Blob blob = rs.getBlob("logo");
			        
			        
			        byte byteArray[] = rs.getBytes(1);
			 
			        response.setContentType("image/jpg");
			        OutputStream os = response.getOutputStream();
			        os.write(byteArray);
			        os.flush();
			        os.close();
			        return;
			    }}
			catch(Exception e){
			    e.printStackTrace();
			}   
			finally{
			    if(con != null){
			        try{
			            con.close();
			        }
			        catch(Exception e){
			            e.printStackTrace();
			        }
			    }
			}
			    %>