
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
$('.add-to-cart').on('click', function () {
    var mid = $(this).attr('mid');

    $.ajax({
       url: 'testback.jsp',
       method: 'POST',
       data: {mid:mid},
       success: function () {
           cartItemCount ();
        }
    });

});
//        Show Cart Items
    function cartItems() {
        $('.ion-ios-cart').click(function () {
            
            $.ajax({
       url: 'testback.jsp',
       method: 'POST',
       data: {data:1},
       success: function (data) {
            $('.cart-list').html(data);
            if (data !==0) {
                $('.cart-options').css('display', 'block');
            }
            else $('.cart-options').css('display', 'none');
            cartItemCount ();
        }
    });
            
        });
    }
        // Remove items
        $( document ).on( 'click', '.remove-item', function() {
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
        data:{badge:1},
        success: function(data) {
            $('.cart-item-count').text($.trim(data));
        }
    
            });
        };
        
        // Add +1
        $('.plus-meal').click(function () {
        var madd = $(this).attr('add'); // undefined
        alert($(this).attr('add'));
        $.ajax({
           url: 'testback.jsp',
           method: 'POST',
           data: {add:madd},
           success: function () {
               cartItems();
           }
        });
     });
                                
        // Minus -1                  
    $('.minus-meal').on('click', function () {
       var min = $(this).attr('min');

       $.ajax({
          url: 'testback.jsp',
          method: 'POST',
          data: {minus:min},
          success: function () {
              cartItemCount ();
              
           }
       });

   });
   
   
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
        
        
        
        
        


            
            
            
            