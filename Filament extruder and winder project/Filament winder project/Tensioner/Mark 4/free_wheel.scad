//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);

A = 360; //large resolution
B = 90; //small resolution




difference(){
cylinder(h = 30, d=40, $fn = A, center = true); 
    
difference(){    
for(i=[0:10]) rotate([0,0,i*360/10]) translate([20-1.5,0,0]) cube([3,3,24], center = true);
 
for(i=[0:1]) mirror([0,0,i]) translate([0,0,15-2.5-3]) cylinder(h = 5, d1=34, d2=40, $fn = A, center = true); 
}

//m8 hole 
cylinder(h = 30+4, d=11.5, $fn = A, center = true); 


//Bearing
for(i=[0:1]) mirror([0,0,i]) translate([0,0,14+3.5-5]) cylinder(h = 5, d=16.3, $fn = B, center = true);



//halfing z=[0:1] for top and bottom
mirror([0,0,1]) translate([0,0,-10]) cube([41,41,20], center = true);




//m3 hole
rotate([0,0,17.5]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,0]) cylinder(h = 40, d=3.2, $fn = 30, center = true);  
    
//m3 skrew top
rotate([0,0,17.5]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,15]) cylinder(h = 20, d=6, $fn = 30, center = true); 
    
//m3 nut
rotate([0,0,17.5]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,-15]) rotate([0,0,30]) cylinder(h = 20, d=6.5, $fn = 6, center = true); 


}    
