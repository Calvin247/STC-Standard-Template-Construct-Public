//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);

difference(){
    
    
union(){    
translate([0,0,0]) cylinder(h = 15.5, d=15.5, $fn = 180, center = true);

rotate([0,0,0]) translate([-15.5/2,0,0]) rotate([90,0,0]) cylinder(h = 15.5, d=15.5, $fn = 180, center = true);
    
translate([-15.5/4,0,0]) cube([15.5/2,15.5,15.5], center = true);     
    
}        

translate([0,0,0]) cylinder(h = 16, d=4.25, $fn = 180, center = true);

rotate([0,0,0]) translate([-15.5/2,0,0]) rotate([90,0,0]) cylinder(h = 16, d=5.25, $fn = 180, center = true);
    
rotate([0,0,-45]) translate([0,11,0]) cube([2.75,16,16], center = true);    

}







 