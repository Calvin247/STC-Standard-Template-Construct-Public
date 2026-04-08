//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



difference(){
    
    
union(){    
//translate([6,0,0]) cube([70,5,50], center = true);

//Front circles
for(i=[-1,1])translate([-20,0,i*12]) rotate([90,0,0]) cylinder(h = 8, d=20, $fn = 180, center = true);
translate([-20,0,0]) cube([20,8,24], center = true);    


translate([20,-6,-10]) rotate([90,0,0]) cylinder(h = 20, d=20, $fn = 180, center = true);

translate([20+14.5,-6,-10+4]) rotate([90,0,0]) cylinder(h = 20, d=20, $fn = 180, center = true);


translate([20+(14.5/2),-6,-10+(4/2)]) rotate([0,74.5,0]) cube([20,20,15.5], center = true); 



translate([0,0,-11]) rotate([0,-2.85,0]) cube([40,8,20], center = true);

translate([0,0,0.6]) rotate([0,30.95,0]) cube([46,8,19], center = true);


}

for(i=[-1,1])translate([-20,0,i*12]) rotate([90,0,0]) cylinder(h = 100, d=5.2, $fn = 180, center = true);
    
translate([20,0,-10]) rotate([90,0,0]) cylinder(h = 100, d=5.2, $fn = 180, center = true);

translate([20+14.5,0,-10+4]) rotate([90,0,0]) cylinder(h = 100, d=4.2, $fn = 180, center = true);



}
 