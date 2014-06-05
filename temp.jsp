<%@ page import="java.sql.*"%>
<%class.forName("Sun.jdbc.odbc.Driver")
connection con=DriverManager.getConnection("jdbc:odbc:XE","System","password");
out.println(con);
%>