//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){






difference(){
    
union(){    
cylinder(h = 20, d=20, $fn = 180, center = true);
    
translate([10,0,0])rotate([90,0,0])cylinder(h = 20, d=20, $fn = 180, center = true);
    
translate([5,0,0])cube([10,20,20], center = true);    

}    
cylinder(h = 21, d=8.25, $fn = 180, center = true);


translate([10,0,0])rotate([90,0,0])cylinder(h = 21, d=4.2, $fn = 180, center = true);
 
}