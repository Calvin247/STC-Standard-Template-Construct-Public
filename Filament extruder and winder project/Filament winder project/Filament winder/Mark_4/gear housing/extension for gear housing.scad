//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



 
gearboxTop();

module gearboxTop(){

difference(){
union(){
 
translate([15,0,30])cube([110,100,8], center = true);   
   






    
}


cylinder(h = 80, d=11, $fn = 180, center = true);



for(i=[0,1])mirror([0,i,0])translate([60,40,0]) cylinder(h = 100, d=11, $fn = 180, center = true);
    
for(i=[0,1])mirror([0,i,0])translate([-30,40,0]) cylinder(h = 100, d=11, $fn = 180, center = true);


translate([35,0,0])cylinder(h = 80, d=11, $fn = 180, center = true);


translate([0,0,0]) for(i=[0:2])rotate([0,0,90+i*90])translate([31,0,0]) cylinder(h = 80, d=6.25, $fn = 180, center = true);
    






for(i=[0:1])mirror([0,i,0])translate([15,52,30])cube([60,20,9], center = true);   
    
for(i=[0:1])mirror([0,i,0])translate([-30,35,30])cube([30,40,9], center = true); 

translate([50,0,30])cube([70,110,9], center = true); 



}

}
