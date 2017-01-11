
function reservation() {
	"use strict";
	
	var time = document.getElementById("r_time").value;
        
        var hour = time.substring(0,2);
        
        if (hour <10 || hour >22) {
            alert("Please,choose a proper time\n\n\
    Reservation start from 10:00 to 22:00");
        return false;
        }
        else return true;
	
}
// Add items to cart
$('.add-to-cart').on('click', function (event) {
    var mid = $(this).attr('mid');
    event.preventDefault();
    $.ajax({
       url: 'testback.jsp',
       method: 'POST',
       data: {mid:mid},
       success: function () {
           cartItemCount ();
            cartItems();
        }
    });

});

    cartItems();

    
        $('.ion-ios-cart').click(cartItems());
        //        Show Cart Items
        function cartItems() {
                    $.ajax({
                    url: 'testback.jsp',
                    method: 'POST',
                    data: {data:1},
                    success: function (data) {
                             $('.cart-list').html(data);
                                if (data !==null) {
                                $('.cart-options').css('display', 'block');
                                }
                             else $('.cart-options').css('display', 'none');
                            
                    }
                });
            
            }
    
        // Remove items
        $( document ).on( 'click', '.remove-item', function(event) {
            event.preventDefault();
                    var mid = $(this).attr('mid');

                       $.ajax({
                       url: 'testback.jsp',
                       method: 'POST',
                       data: {remove:mid},
                       success: function () {
                           cartItems();
                           cartItemCount();
                       }
                    });
            });
        
        
    

        // The number on the cart
        function cartItemCount () {
                $.ajax({
        url: 'testback.jsp',
        method: "POST",
        data:{badge:1},
        success: function(data) {
            $('.cart-item-count').text($.trim(data));
        }
    
            });
        };
        // Adding 
        $('.plus-meal').on('click', function () {
                var id = $(this).attr('add');

                $.ajax({
                    url: 'testback.jsp',
                    method: 'POST',
                    data: {add:id},
                    success: function(data) {
                        setTimeout(1000);
                        ret();
                    }
                });
});
        // Removing
        $('.minus-meal').on('click', function () {
                var id = $(this).attr('min');
                $.ajax({
                    url: 'testback.jsp',
                    method: 'POST',
                    data: {minus:id},
                    success: function(data) {
                        setTimeout(1000);
                        ret();
                    }
                });
});
   
   //Remove from cart page
    $( document ).on( 'click', '.ion-trash-b', function(event) {
       var id = $(this).attr('trash');
       $(this).closest('tr').remove();
       event.preventDefault();
       $.ajax({
          url: 'testback.jsp',
          method: 'POST',
          data: {trash:id},
          success: function () {
              cartItemCount();
              cartItems();
              ret();
              cartItemsInPage();
              
           }
       });

   });
   // check if there are any items displayed in the cart page
   function cartItemsInPage() {
    $.ajax({
        url: 'testback.jsp',
        mehtod: 'POST',
        data: {check:1},
        success: function (data) {
            var data1 = $.trim(data);
            
            if(data1 ==="0") {
                    
                    $('#totalcheck').remove();
                    $('#summary').html("<center> <h3>No items in the cart .. <a href=\"./menu\">add some?</a></h3> </center> ");
            }
        }
    });
}
    

   
   
   // Show for fast order
$('.fast-order').on('click', function () {
    var mid = $(this).attr('mid');

    $.ajax({
       url: 'testback.jsp',
       method: 'POST',
       data: {fast:mid},
       success: function (data) {

        $('#order').on('shown.bs.modal', function () {
                var obj = JSON.parse(data);
                
               $('#order #img').attr('src', obj.image);
               $('#order #title').text(obj.name);
               $('#order #price').text(obj.price);
            //$('.modal-body #myInput').focus();
            });
       }
    });

});





        
        
        
        
        


            
            
            
            