//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);






difference(){
union(){
    
//Bottom     
cylinder(h = 4, d=66, $fn = 180, center = true);

//Top cone    
translate([0,0,10]) cylinder(h = 16, d1=66,d2=20, $fn = 180, center = true);
    
    
    
    
translate([25,0,-19.5]) cylinder(h = 35, d=12, $fn = 180, center = true);   
    
    
      
}
//M8 Hole through all
cylinder(h = 50, d=8.25, $fn = 180, center = true);


//side hole
translate([25,0,-3.5-35.5+1.5]) rotate([0,0,0])  cylinder(h = 4, d=7, $fn = 45, center = true);
translate([25,0,-10.5+1.5]) rotate([0,0,0])  cylinder(h = 50, d=7, $fn = 45, center = true);




}



