//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);




difference(){
translate([0,0,17/2])cube([17,17,17+17], center = true);
rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
 
   
    
    
translate([0,0,17])rotate([90,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);     
}    

