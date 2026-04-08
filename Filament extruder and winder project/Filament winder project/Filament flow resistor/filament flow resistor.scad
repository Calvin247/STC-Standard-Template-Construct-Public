//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);


difference(){
    
translate([0,0,0])cylinder(h = 20, d=20, $fn = 180, center = true);

translate([0,0,0])cylinder(h = 30, d=1.8, $fn = 180, center = true);
    
translate([0,0,7.5])cylinder(h = 5, d1=1.8, d2=15, $fn = 180, center = true);
    
translate([0,0,-7.5])cylinder(h = 5, d1=15, d2=1.8, $fn = 180, center = true);    
    
    


}



 