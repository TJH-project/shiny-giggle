<%@include file = "navbar.jsp" %>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container" style="margin-bottom: 80px ">
    <div class="row">
        
        <%
        ResultSet rs = (ResultSet) request.getAttribute("posts");
        
        while (rs.next()) {
            
        String title = rs.getString("post_title");
        String contents = rs.getString("post_contents");
        String timestamp = rs.getString("post_date");
        %>
        <div class="col-xs-8 col-xs-offset-2">
          <div class="block-update-card">
              <div class="update-card-body">
        <h3 style="display: inline;"><%=title%></h3> <span class="pull-right" style="font-size: 12px; margin-right: 5px"><%=timestamp%></span> 
        <br><br><%=contents%>
    </div>
  </div>
        </div>
        
        
        <%}%>
        
        
      </div>
</div>

        
<%@include file = "footer.jsp" %>
