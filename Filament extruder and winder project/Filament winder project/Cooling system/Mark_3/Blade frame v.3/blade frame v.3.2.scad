//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){






//v.3 making it cubed and simple
//v.3.2 simplified code


difference(){
    
union(){   

difference(){    
cube([125+14,125+14,20], center = true);

translate([0,0,2]) cube([125+10,125+10,20], center = true); 
  
 cube([20,125+10,22], center = true); 
    

}
for(i=[0:3])rotate([0,0,i*90])translate([125/2,125/2,0])cylinder(h = 20, d=14, $fn = 180, center = true);  
}
    
    
 //bolt holes 
for(i=[0:3])rotate([0,0,i*90])translate([125/2,125/2,0])cylinder(h = 40, d=4.25, $fn = 180, center = true);   
}