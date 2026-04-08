//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){








difference(){

union(){

difference(){    
//rotate([0,90,0]) resize([50,125+14,125+14])cylinder(h = 125+14, d=125+14, $fn = 180, center = true); 

translate([0,0,12.5]) cube([139,139,25], center = true); 

rotate([0,90,0]) resize([50-4,125+14-4-0.2,125+14-4])cylinder(h = 125+14, d=125+14, $fn = 180, center = true);  
    
    
for(i=[0,1])mirror([0,i,0])translate([0,80.1+2,12.5]) rotate([45,0,0]) cube([145,30,80], center = true);     


} 
    
for(i=[0:3])rotate([0,0,i*90])translate([125/2,125/2,8])cylinder(h = 16, d=14, $fn = 180, center = true);

} 
//bolt holes 
for(i=[0:3])rotate([0,0,i*90])translate([125/2,125/2,7.5])cylinder(h = 40, d=4.25, $fn = 180, center = true);
      


//translate([0,0,-(125+14)/2/2]) cube([125+15,125+15,(125+14)/2], center = true);
    
cube([125+10,20,200], center = true);  






}