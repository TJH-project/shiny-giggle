<%@ page import = "java.sql.*" %>

<% String dbuser = "root";
String dbpass = "";

String dburl = "jdbc:mysql://localhost:3306/servlet";
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

Connection c = DriverManager.getConnection(dburl, dbuser, dbpass);

Statement st = c.createStatement();



%>