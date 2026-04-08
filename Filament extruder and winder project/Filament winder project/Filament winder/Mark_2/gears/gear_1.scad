

//cube([17,17,17+12], center = true);


difference(){
    
union(){    
translate([0,0,16]) cylinder(h = 20, d=30, $fn = 180, center = true);

translate([0,0,17.5+11]) cylinder(h = 5, d1=30, d2=10, $fn = 180, center = true);
translate([0,0,17.5]) cylinder(h = 5, d2=30, d1=10, $fn = 180, center = true);


}

translate([0,0,0])cylinder(h = 70, d=8, $fn = 180, center = true);
translate([0,0,10]) rotate([0,90,0]) cylinder(h = 70, d=3.2, $fn = 180, center = true);

translate([0,0,20]) rotate([90,90,0]) cylinder(h = 70, d=3.2, $fn = 180, center = true);



}




    
difference(){
    
union(){  



cylinder(h = 12, d=21.5*2, $fn = 180, center = true);

for(i=[1:7]) rotate([0,0,i*25.715*2]) translate([21.5,0,0]) cylinder(h = 10, d=9.6, $fn = 30, center = true);
    

for(i=[1:7]) rotate([0,0,i*25.715*2]) translate([21.5,0,-5.5]) cylinder(h = 1, d1=7, d2=9.6, $fn = 30, center = true);
    
for(i=[1:7]) rotate([0,0,i*25.715*2]) translate([21.5,0,5.5]) cylinder(h = 1, d2=7, d1=9.6, $fn = 30, center = true);


}
for(i=[1:7]) rotate([0,0,25.715+i*25.715*2]) translate([21.5,0,0]) cylinder(h = 13, d=9.6+0.1, $fn = 30, center = true);
    

//translate([0,0,3.75])cylinder(h = 2.5, d=30, $fn = 180, center = true);


//translate([0,0,-3.75])cylinder(h = 2.5, d=30, $fn = 180, center = true);



translate([0,0,0])cylinder(h = 70, d=8, $fn = 180, center = true);



//innor hole smoothing
for(i=[1:7]) rotate([0,0,25.715+i*25.715*2]) translate([21.5,0,5.5]) cylinder(h = 1, d1=9.6+0.1, d2=9.6+0.1+2.6, $fn = 30, center = true);



for(i=[1:7]) rotate([0,0,25.715+i*25.715*2]) translate([21.5,0,-5.5]) cylinder(h = 1, d2=9.6+0.1, d1=9.6+0.1+2.6, $fn = 30, center = true);


}    
    




