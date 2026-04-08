//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);


difference(){
    
translate([0,0,0])cylinder(h = 5, d=15, $fn = 180, center = true);

translate([0,0,0])cylinder(h = 10, d=2.2, $fn = 180, center = true);
    
    
translate([7.5,0,0]) cube([15,2.2,15], center = true);    
    

    
    


}



 