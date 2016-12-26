<%-- 
    Document   : try
    Created on : Dec 25, 2016, 11:42:03 PM
    Author     : Osama Islam
--%>

<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
            </tr>
            <% 
                ResultSet rs = (ResultSet) request.getAttribute("rs");
             while (rs.next()) {
                 int id = rs.getInt("p_id");
                 String name = rs.getString("p_name");
                 String price = rs.getString("p_price");
             
            %>
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
                <td><%=price%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
