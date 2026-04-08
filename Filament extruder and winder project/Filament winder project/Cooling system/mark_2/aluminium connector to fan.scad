//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){







difference(){
    
union(){    
translate([0,0,-3]) rotate([0,45,0]) cube([35+5,25+10,35+5], center = true);    
    
//pillar
translate([0,0,-29])cube([20,35,16], center = true);    
 
//m8 holder 
//translate([0,-7.5,-45-10])cylinder(h = 20, d=20, $fn = 180, center = true);   
   
//m8 holder extention
//translate([0,-7.5+10,-45-10])cube([20,20,20], center = true); 
 
 

 
    

}

for(i=[0:1]) mirror([i,0,0]){
//m3 bolt
rotate([0,45,0]) translate([0,0,-9.75-6])rotate([0,0,30]) cylinder(h = 6, d=7, $fn = 6, center = true);

rotate([0,45,0]) translate([0,0,-9.75-6]) cylinder(h = 30, d=3.2, $fn = 30, center = true);

}

    
//side holes for V angle iron    
for(i=[1,3]) rotate([0,i*45,0]) translate([13.5-2.5,0,0]) cube([3.5,25.2+10,25.5], center = true);
    
 translate([0,0,18]) rotate([0,45,0]) cube([35,26+10,35], center = true);     

rotate([0,45,0])cube([20,26+10,20], center = true); 

//m8 hole 
//translate([0,-7.5,-45-10])cylinder(h = 21, d=8.25, $fn = 180, center = true);  


//m5 holes
for(i=[-1,1])translate([0,i*9,-29])rotate([0,90,0])cylinder(h = 50, d=5.2, $fn = 180, center = true);
    
}    


   