<%@page import="java.sql.*"%>
 
<%  
String username=request.getParameter("uname");
String password =request.getParameter("pass");
Connection con = null;
try {
out.println("hello");

Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1729");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where uname like '"+username+"' and pass like '"+password+"'");

 
if(rs.next())
{
	session.setAttribute("user",username);
	response.sendRedirect("main1.jsp");
}
else
{
	//out.println("not valid user");
	response.sendRedirect("index1.html");
}
con.close();

} catch(Exception ex){
	out.println(ex);
} 

%>