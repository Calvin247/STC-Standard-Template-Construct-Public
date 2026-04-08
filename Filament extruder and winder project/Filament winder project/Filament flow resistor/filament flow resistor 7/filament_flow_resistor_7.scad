//Planned changes: length is increased by 20mm to get closer to spool






//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



difference(){
    
    
union(){    

//Front circles
for(i=[-1,1])translate([-20,0,i*12]) rotate([90,0,0]) cylinder(h = 8, d=20, $fn = 180, center = true);
    

translate([-20,0,0]) cube([20,8,24], center = true);    


translate([20+14.5+20,-6,0]) cube([20,20,13], center = true);    


//right back frame
translate([20+14.5+20,-6,-13/2]) rotate([90,0,0]) cylinder(h = 20, d=20, $fn = 180, center = true);

translate([20+14.5+20,-6,13/2]) rotate([90,0,0]) cylinder(h = 20, d=20, $fn = 180, center = true);



translate([17.5,0,0]) rotate([0,0,0]) cube([75,8,32.97], center = true);





}

//front m5 holes
for(i=[-1,1])translate([-20,0,i*12]) rotate([90,0,0]) cylinder(h = 100, d=5.2, $fn = 180, center = true);

//right back frame m4 hole
translate([20+14.5+20,0,-10+4]) rotate([90,0,0]) cylinder(h = 100, d=4.2, $fn = 180, center = true);

translate([20+14.5+20,0,-10+4+13]) rotate([90,0,0]) cylinder(h = 100, d=4.2, $fn = 180, center = true);



}
 