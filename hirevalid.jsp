<%@page import="java.sql.*"%>
 
<%  
String username=request.getParameter("uname");
String lastname=request.getParameter("lname");
String email=request.getParameter("mail");
String experience=request.getParameter("exper");

try {
	
Connection con = null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1729");
 
PreparedStatement ps=con.prepareStatement("insert into hireme values(?,?,?,?)");
ps.setString(1,username);
ps.setString(2,lastname);
ps.setString(3,email);
ps.setString(4,experience);
int f=ps.executeUpdate();
if(f>0)
	
	response.sendRedirect("main.jsp");
else
	
	response.sendRedirect("index3.html");
con.close();
} 
catch(Exception ex){
	out.println(ex);
} 

%>