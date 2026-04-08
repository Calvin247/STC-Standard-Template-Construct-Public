//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);






difference(){
    
union(){    
cube([60,60,12], center = true);
    
translate([-40,25,0])cube([20,10,12], center = true); 
 
 translate([-50,25,0])rotate([90,0,0])cylinder(h = 10, d=30, $fn = 180, center = true);    

}  


 translate([-50,25,0])rotate([90,0,0])cylinder(h = 11, d=5.25, $fn = 180, center = true);   
 
    
translate([2,-15,0])rotate([0,90,0])cylinder(h = 60, d=2.25, $fn = 180, center = true);    

translate([0,-15,0])rotate([0,90,0])cylinder(h = 60, d=1.85, $fn = 180, center = true);  
    
translate([0,-25,0])cube([70,21,1], center = true);  
   
   
//m3 nuts 
    
for(i=[0,1])mirror([i,0,0])translate([20,-25,3.5+3])cylinder(h = 6, d=7, $fn = 6, center = true);    
    

for(i=[0,1])mirror([i,0,0])translate([20,-25,-3.5-3])cylinder(h = 6, d=6, $fn = 30, center = true); 
    
for(i=[0,1])mirror([i,0,0])translate([20,-25,0])cylinder(h = 20, d=3.25, $fn = 30, center = true); 


}    