//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



difference(){
union(){
cube([100,30,5], center = true);
    
translate([0,0,7.5]) cube([125,5,10], center = true);    
for(i=[1]) mirror([i,0,0]) translate([50,0,0])cylinder(h = 5, d=30, $fn = 180, center = true);
    
//bearing top
translate([-50,0,7.5])cylinder(h = 10, d=30, $fn = 180, center = true);

for(i=[-1,1]) translate([50,i*12,0])cylinder(h = 5, d=25, $fn = 180, center = true);
    
translate([50,0,0]) cube([25,24,5], center = true);

    
//translate([50,0,5]) rotate([0,0,0]) cylinder(h = 5, d1=30, d2=6, $fn = 45, center = true); 
} 


translate([0,0,7.5+11.45]) rotate([0,5.83,0]) cube([150,6,20], center = true);


for(i=[-1,1]) translate([50,i*12,0])cylinder(h = 60, d=5.25, $fn = 180, center = true);

//for(i=[-1,1])translate([i*23/2+18,0,0])cylinder(h = 60, d=3.2, $fn = 180, center = true);


//bearing size
//translate([-50,0,0])cylinder(h = 5, d=16.3, $fn = 180, center = true);


//bearing size 2
//translate([-50,0,21.5])cylinder(h = 5, d=16.3, $fn = 180, center = true);







translate([-50,0,5])cylinder(h = 50, d=8.25, $fn = 180, center = true);





translate([-50,0,29-5])mirror([0,0,1]){
 //m3 hole
//rotate([0,0,0]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,0]) cylinder(h = 40, d=3.2, $fn = 30, center = true);  
    
//m3 skrew top
//rotate([0,0,0]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,15+10]) cylinder(h = 40, d=6, $fn = 30, center = true); 
    
//m3 nut
//rotate([0,0,0]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,-15-10]) rotate([0,0,30]) cylinder(h = 40, d=6.5, $fn = 6, center = true);
   
}




translate([-50,0,7.5]) rotate([90,0,0]) cylinder(h = 40, d=3.2, $fn = 30, center = true); 



translate([-50,13,7.5]) rotate([90,0,0]) cylinder(h = 5, d=6, $fn = 30, center = true);

translate([-50,-13,7.5]) rotate([90,0,0]) cylinder(h = 5, d=6.5, $fn = 6, center = true);

}




