<%@include file = "cpanel-nav.jsp" %>

    
<div class="cpanel-body">
    
    <div class="container">
        <br>
        <br>
        <br>
        <div class="row">
    <div class="col s12 m12">
        
        
<!--        Promotion Card-->
<div class="col s6 m6">
      <div class="card">
        <div class="card-image">
            <img src="assets/images/bg2.jpg">
          <span class="card-title primary-dark-bg">Promotion</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>You have not set any promotion. press + to add one</p>
        </div>
      </div>
</div>
     <!--      News Card-->  
    <div class="col s6 m6">
      <div class="card">
        <div class="card-image">
            <img src="assets/images/news.jpg">
            <a href="./News"><span class="card-title primary-dark-bg">News</span></a>
          <a class="btn-floating halfway-fab waves-effect waves-light red" data-toggle="modal" data-target="#news-modal"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>You have not posted any news. press + to add one</p>
        </div>
      </div>
    </div>
     
     <!--      Menu Card-->  
    <div class="col s6 m6">
      <div class="card">
        <div class="card-image">
            <img src="assets/images/Lamb_Mandy.jpg">
          <span class="card-title primary-dark-bg">Menu</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>To add a new Item, press the + button</p>
        </div>
      </div>
    </div>
     
      <!-- Modal News -->
  <div class="modal fade" id="news-modal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Post</h4>
        </div>
        <div class="modal-body">
            <div class="row">
                <form action="#">
                    <div class="input-field col s12">
                        <input id="title" type="text" class="validate">
                        <label for="title">Post title</label>
                    </div>
                    
                    <div class="input-field col s12">
                        <textarea name="news-contents" id="post-contents"></textarea>
                        <label for="title">Contents</label>
                        <script>
                            CKEDITOR.replace('news-contents');
                        </script>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
            
            
</div>
        
        
        
    </div>
  </div>
    </div>
    
</div>


<%@include file = "cpanel-footer.jsp" %>
