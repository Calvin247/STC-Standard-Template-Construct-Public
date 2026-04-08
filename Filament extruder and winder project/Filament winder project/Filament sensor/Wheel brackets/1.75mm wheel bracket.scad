//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){





difference(){


union(){    
for(i=[-1,1])translate([i*58/2,0,0])cylinder(h = 20, d=17, $fn = 180, center = true);
    
cube([60,10,20], center = true);


difference(){
//Bottom plate
translate([0,17.5,-7.5]) cube([32,25,5], center = true);
    
 //corner elimination
for(i=[-1,1])translate([i*16,30,0])cylinder(h = 21, d=10, $fn = 180, center = true);   
}    

difference(){
//3 structure plates
for(i=[-1:1])translate([i*10,17.5,0]) cube([3,25,20], center = true);

//3 structure plates side elimination
for(i=[-1,1])translate([i*10,17.5,10]) rotate([-55,0,0])cube([5,60,20.5], center = true);
    

//3 structure plates middle elimination
for(i=[0])translate([i*10,17.5,14.5]) rotate([-31,0,0])cube([5,50,20.5], center = true);

}


//corner rounding
for(i=[-1,1])translate([i*(16-5),30-5,-7.5])cylinder(h = 5, d=10, $fn = 180, center = true);



}    
    
for(i=[-1,1])translate([i*58/2,0,0])cylinder(h = 21, d=8.25, $fn = 180, center = true);
    

//small wheel holes
for(i=[-1,1])translate([i*58/2,20,0])cylinder(h = 21, d=8.25, $fn = 180, center = true);



//Bottom plate corner elimination
for(i=[-1,1])translate([i*13/2,20,0])cylinder(h = 20, d=4.2, $fn = 180, center = true);
    




} 