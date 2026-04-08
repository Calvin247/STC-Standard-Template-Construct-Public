//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){



//roof
difference(){
rotate([0,90,0]) resize([50,125+14,125+14])cylinder(h = 125+14, d=125+14, $fn = 180, center = true);
    
    
rotate([0,90,0]) resize([50-4,125+14-4,125+14-4])cylinder(h = 125+14, d=125+14, $fn = 180, center = true);    


translate([0,0,-(125+14)/2/2]) cube([125+15,125+15,(125+14)/2], center = true);
    
cube([125+10,20,200], center = true);   
}

difference(){
    
union(){ 
 
difference(){    
//cube([125+14,125+14,4], center = true);

//bolt elimintion for rounding
//for(i=[0:3])rotate([0,0,i*90])translate([125/2+7,125/2+7,0])cube([14,14,5], center = true);

//center emtying    
//cylinder(h = 5, d=148, $fn = 180, center = true);

}



difference(){
//cube([125+14,125+14,4], center = true);
//cube([125+7,125+7,5], center = true);
}

for(i=[0:3])rotate([0,0,i*90])translate([125/2,125/2,7.5])cylinder(h = 15, d=14, $fn = 180, center = true);

} 
//bolt holes 
for(i=[0:3])rotate([0,0,i*90])translate([125/2,125/2,7.5])cylinder(h = 16, d=4.25, $fn = 180, center = true);

}