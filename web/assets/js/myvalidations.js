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