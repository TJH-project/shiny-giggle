<%@ include file = "backend/config.jsp" %>
<%@page import = "org.json.simple.JSONObject" %>

<%  
    if (session.getAttribute("customer") ==null) {
        session.setAttribute("customer", request.getRemoteAddr());
    }
    
    String mid = request.getParameter("mid");
    if(mid !=null) {
    
    ResultSet check = st.executeQuery("select item_count from cart where item_id = " + mid);
    
    if (check.next()) {
        st.executeUpdate("update cart set item_count = item_count+1 where item_id = " + mid);
    }
    else {
       ResultSet rs = st.executeQuery("select p_name, p_price, p_image from food_products where p_id = " + mid);
    
    if (rs.next()) {
        String name = rs.getString("p_name");
        String image = rs.getString("p_image");
        String price = rs.getString("p_price");
        
        st.executeUpdate("insert into cart (customer_id, item_id, item_name, item_image, item_price, item_count) values ("
                + "'"+ session.getAttribute("customer") +"', '"+ mid +"', '"+ name +"', '"+ image +"', '"+ price +"', 1) ");
        
        out.print("Product added to cart");
        
    } 
    }
    }
    
    String d = request.getParameter("data");
    if (d !=null) {
     
    ResultSet ret = st.executeQuery("select * from cart");
        
        while(ret.next()) {
            String id = ret.getString("item_id");
            String name = ret.getString("item_name");
            String image = ret.getString("item_image");
            float price = ret.getFloat("item_price");
            int count = ret.getInt("item_count");
            
            out.print(" <li class=\"clearfix\">"+
                           " <div class=\"cart-thumb\">" +
                                
                                    "<img src=\""+ image +"\" class=\"img-responsive\" width=\"90\" id=\"item-image\">"+
                                
                            "</div>"+
                            "<div class=\"cart-content\">"+
                                "<span class=\"close \"><i><a href=\"#\" class=\"ion-close remove-item\" mid=\""+ id +"\"></a></i></span>"+
                                "<h5 id=\"item-title\">"+ name +"</h5>"+
                                "<p>RM <span class=\"price\">"+ price +"</span>  x <span id=\"count\">"+ count +"</span></p>"+
                            "</div>"+
                        "</li> ");
        }
    }
        
        String badge = request.getParameter("badge");
        
        
        if (badge !=null) {
            int cnt = 0;
            ResultSet count = st.executeQuery("select count(*) from cart");
            
            if(count.next()) cnt = count.getInt("count(*)");
            
            out.print(cnt);
        }
        
        
        
        
        String exit = request.getParameter("exit");
        
        if (exit !=null) {
            st.executeUpdate("truncate table cart");
        }
        
        // Removing Item
        
        if (request.getParameter("remove") !=null) {
            String rid = request.getParameter("mid");
            st.executeUpdate("delete from cart where item_id = " + rid + " and customer_id = " + session.getAttribute("customer"));
        }
        // Adding +1
        if (request.getParameter("add") !=null) {
            String madd = request.getParameter("add");
            out.print(madd);
            //out.print(st.executeUpdate("update cart set item_count = item_count+1 where item_id = " + madd));
                
        }
        
        //removing -1
        if (request.getParameter("minus") !=null) {
            String mmin = request.getParameter("minus");
            out.print(mmin);
            //st.executeUpdate("update cart set item_count = item_count-1 where item_id = " + mmin);
        }
        
        // Fast order
        if (request.getParameter("fast") !=null) {
            String meadid = request.getParameter("fast");
            ResultSet fast = st.executeQuery("select p_name, p_image, p_price from food_products where p_id = " + meadid);
            
            while(fast.next()) {
                String name = fast.getString("p_name");
                String image = fast.getString("p_image");
                float price = fast.getFloat("p_price");
                
                if (fast.isLast()) {
                    JSONObject json = new JSONObject();
                    json.put("name", name);
                    json.put("image", image);
                    json.put("price", price);
                    out.print(json);
                    out.flush();
                }
                    
            }
            
        }
        
        
        
        
        
    

    
%>