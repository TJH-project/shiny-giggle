<%@include file = "navbar.jsp" %>

<br>
<br>


<div class="about-container">  
  <form id="contact" action="About" method="post">
    <h3>Write to us..</h3>
    <h4>You may suggest improvements for our website</h4>
    <fieldset>
        <input placeholder="Your name" type="text" tabindex="1" name="name" required autofocus>
    </fieldset>
    <fieldset>
        <input placeholder="Your Email Address" name="email" type="email" tabindex="2" required>
    </fieldset>
    <fieldset>
        <input placeholder="Your Phone Number (optional)" type="tel" name="phone" tabindex="3" required>
    </fieldset>
    <fieldset>
        <textarea placeholder="Type your message here...." name="message" tabindex="5" required></textarea>
    </fieldset>
    <fieldset>
        <button style="background: #600" class="send" name="submit" type="submit" id="contact-submit" data-submit="...Sending"><span>Send</span></button>
    </fieldset>
    ${sent}
  </form>
    
</div>

        
<%@include file = "footer.jsp" %>
