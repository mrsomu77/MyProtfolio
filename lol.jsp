<%@page import="java.sql.*"%>
 
<%  
String username=request.getParameter("uname");
String email=request.getParameter("mail");
String password =request.getParameter("pass");

try {
	
Connection con = null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1729");
 
PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?)");
ps.setString(1,username);
ps.setString(2,email);
ps.setString(3,password);
int f=ps.executeUpdate();
if(f>0)
	
	response.sendRedirect("index2.html");
else
	
	response.sendRedirect("index3.html");
con.close();
} 
catch(Exception ex){
	out.println(ex);
} 

%>