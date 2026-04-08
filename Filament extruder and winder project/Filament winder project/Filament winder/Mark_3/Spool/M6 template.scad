

difference(){
   

//skrew outer frame    
cylinder(h = 10, d=20, $fn = 60, center = true);     



//skrew diameter
translate([0,0,-2.5]) cylinder(h = 5, d=6.3, $fn = 30, center = true); 
    
//hex skrew end
translate([0,0,2.5]) cylinder(h = 5, d=11.5, $fn = 6, center = true); 


}

