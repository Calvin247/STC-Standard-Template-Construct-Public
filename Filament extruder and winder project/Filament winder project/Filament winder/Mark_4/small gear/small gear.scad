//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);




A=60;
B=120;


difference(){
union(){
    
translate([0,0,15])cylinder(h = 15, d=8.25+6, $fn = B, center = true);      
    
for(i=[0:10])rotate([0,0,i*360/11]) translate([7.02,0,0])cylinder(h = 15, d=2, $fn = A, center = true);

cylinder(h = 15, d=7.02*2, $fn = A, center = true);
}

for(i=[0:10])rotate([0,0,360/11/2+i*360/11]) translate([7.02,0,0])cylinder(h = 15, d=2.02, $fn = A, center = true);
    
translate([0,0,17.5])cylinder(h = 20+40, d=8.25, $fn = A, center = true);  


//m3 holes
translate([0,0,11])rotate([90,0,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  

translate([0,0,18])rotate([0,90,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  
}


