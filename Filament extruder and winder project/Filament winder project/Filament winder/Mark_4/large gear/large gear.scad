//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);




largeGear();


module largeGear(){
A=60;
B=120;





for(j=[0:1])rotate([0,0,j*90]){
difference(){
translate([0,0,15])cylinder(h = 15, d1=45, d2=14.5, $fn = B, center = true);    

rotate([0,0,45]) for(i=[0:1]) mirror([0,i,0])translate([0,21.5,15]) cube([70,40,40], center = true);

cylinder(h = 21+40, d=8.25, $fn = A, center = true);

}}





difference(){
union(){
    
translate([0,0,15])cylinder(h = 15, d=8.25+6, $fn = B, center = true);    
    
    
for(i=[0:43])rotate([0,0,i*360/11/4]) translate([28,0,0])cylinder(h = 15, d=2, $fn = A, center = true);

cylinder(h = 15, d=28*2, $fn = B, center = true);
}

for(i=[0:43])rotate([0,0,360/11/4/2+i*360/11/4]) translate([28,0,0])cylinder(h = 16, d=2.01, $fn = A, center = true);
    
cylinder(h = 21+40, d=8.25, $fn = A, center = true);





//m3 holes
translate([0,0,11])rotate([90,0,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  

translate([0,0,18])rotate([0,90,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  

}

}
