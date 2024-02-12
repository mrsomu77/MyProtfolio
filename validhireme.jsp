<%@page import="java.sql.*"%>
 
<%  
String email=request.getParameter("email");
String password =request.getParameter("pass");
Connection con = null;
try {
out.println("hello");

Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1729");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from hireme where mail like '"+email+"'");

 
if(rs.next())
{

	response.sendRedirect("main.jsp");
}
else
{
	
	response.sendRedirect("main2.jsp");
}
con.close();

} catch(Exception ex){
	out.println(ex);
} 

%>