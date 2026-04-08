//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);

difference(){
    
    
union(){    
translate([0,0,0]) cylinder(h = 18.25, d=18.25, $fn = 180, center = true);

rotate([0,0,0]) translate([-8.25-3,0,0]) rotate([90,0,0]) cylinder(h = 18.25, d=18.25, $fn = 180, center = true);
    
translate([-(8.25+3)/2,0,0]) cube([8.25+3,18.25,18.25], center = true);     
    
}        

translate([0,0,0]) cylinder(h = 19, d=8.25, $fn = 180, center = true);

rotate([0,0,0]) translate([-8.25-3,0,0]) rotate([90,0,0]) cylinder(h = 19, d=8.25, $fn = 180, center = true);
    
//rotate([0,0,-45]) translate([0,11,0]) cube([2.75,16,16], center = true);    

}







 