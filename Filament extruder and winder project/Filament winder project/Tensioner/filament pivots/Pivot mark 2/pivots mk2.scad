//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);




rotate([-90,0,0]) frame();


module frame(){

difference(){
union(){   
   
cube([10,50,21], center = true);   
    
for(i=[0,1]) mirror([0,i,0]) translate([0,29,0]) cylinder(h = 21, d=17, $fn = 180, center = true);   


for(i=[0,1]) mirror([0,i,0]) rotate([0,90,0]) translate([0,12,15]) cylinder(h = 12, d=17, $fn = 180, center = true);
   


for(i=[0,1]) mirror([0,i,0]) translate([15,12,-10]) cylinder(h = 15, d=12, $fn = 180, center = true); 

 
}
for(i=[0,1]) mirror([0,i,0]) translate([0,29,0]) cylinder(h = 22, d=8.25, $fn = 180, center = true);
    

for(i=[0,1]) mirror([0,i,0]) translate([15,12,-10]) cylinder(h = 50, d=5.25, $fn = 180, center = true); 
    

for(i=[0,1]) mirror([0,i,0]) rotate([0,90,0]) translate([0,12,15]) cylinder(h = 50, d=8.25, $fn = 180, center = true);

}
}





