

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="assets/ckeditor/ckeditor.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
        <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <textarea name="editor" cols="30" rows="10"></textarea>
        
        <script>
            CKEDITOR.replace('editor');
        </script>
        
        <form action="upload" method="post" enctype="multipart/form-data">
            
            <div class="input-field col s12">
                          <label for="budget">Budget</label>
                          <br/>
                        </div>
                        <div class="input-field col s12">
                            <select id="budget">
                              <option value="" selected disabled>Choose your option</option>
                              <option value="1">&lt; $4000</option>
                              <option value="2">$4000 - $9000</option>
                              <option value="3">&gt; $9000</option>
                            </select>
                        </div>
            <input type="file" name="image">
            <input type="submit" value="upload">
        </form>
        
        <script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
        <script>
            $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();});
        </script> 
  
        <div class="row section">
  <div class="col">
     <!-- Modal Trigger -->
  <a class="waves-effect waves-light btn" href="#modal1">Modal</a>

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Modal Header</h4>
      <p>A bunch of text</p>
    </div>
    <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
  </div>


        <script>
            $(document).ready(function() {
    $('select').material_select();
});  

  

        </script>
        
   
   <script type="text/javascript" src="assets/js/mycode.js"></script>
    </body>
</html>
