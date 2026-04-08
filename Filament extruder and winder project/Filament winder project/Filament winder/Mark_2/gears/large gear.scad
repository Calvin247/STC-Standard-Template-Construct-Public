

//cube([17,17,17+12], center = true);


difference(){
    
union(){    
translate([0,0,10]) cylinder(h = 10, d=30, $fn = 180, center = true);
    
    
translate([0,0,20]) cylinder(h = 10, d=30, $fn = 180, center = true);    





//slanted walls
difference(){
for(i=[0:6]) rotate([0,0,30+i*60])  translate([10,0,10]) cube([80,8,30], center = true);


for(i=[0:6]) rotate([0,0,30+i*60]) translate([24,0,14]) rotate([0,30,0]) translate([0,0,19]) cube([100,11,30], center = true);

}



translate([0,0,17.5+5+5]) cylinder(h = 5, d1=30, d2=10, $fn = 180, center = true);



}

translate([0,0,0])cylinder(h = 70, d=8, $fn = 180, center = true);
translate([0,0,10]) rotate([0,90,0]) cylinder(h = 70, d=3.2, $fn = 180, center = true);


translate([0,0,20]) rotate([90,90,30]) cylinder(h = 70, d=3.2, $fn = 180, center = true);


translate([0,0,-10]) rotate([0,90,0]) cylinder(h = 70, d=3.2, $fn = 180, center = true);



}











    
difference(){
    
union(){  


//main body
translate([0,0,]) cylinder(h = 12, d=85*2, $fn = 180, center = true);




//outer teeth
for(i=[1:28]) rotate([0,0,i*6.428*2]) translate([85,0,0]) cylinder(h = 10, d=9.6, $fn = 30, center = true);
    

//teeth caps
for(i=[1:28]) rotate([0,0,i*6.428*2]) translate([85,0,-5.5]) cylinder(h = 1, d1=7, d2=9.6, $fn = 30, center = true);
    
for(i=[1:28]) rotate([0,0,i*6.428*2]) translate([85,0,5.5]) cylinder(h = 1, d2=7, d1=9.6, $fn = 30, center = true);
////////////















}




//concave holes for teeth
for(i=[1:28]) rotate([0,0,6.428+i*6.428*2]) translate([85,0,0]) cylinder(h = 13, d=9.7, $fn = 30, center = true);
    



//holes
for(i=[1:6]) rotate([0,0,i*60]) translate([45,0,-1]) resize([45,20,15])cylinder(h = 15, d=40, $fn = 30, center = true);
    
for(i=[1:6]) rotate([0,0,30+i*60]) translate([60,0,0]) cylinder(h = 15, d=20, $fn = 30, center = true);
///////////    

//translate([0,0,3.75])cylinder(h = 2.5, d=100, $fn = 180, center = true);


//translate([0,0,-3.75])cylinder(h = 2.5, d=30, $fn = 180, center = true);



translate([0,0,0])cylinder(h = 70, d=8, $fn = 90, center = true);




//bottom rounding inner holes
for(i=[1:28]) rotate([0,0,6.428+i*6.428*2]) translate([85,0,-5.5]) cylinder(h = 1, d1=9.6+2.7, d2=9.6, $fn = 30, center = true);
    
//top rounding inner holes
for(i=[1:28]) rotate([0,0,6.428+i*6.428*2]) translate([85,0,5.5]) cylinder(h = 1, d2=9.6+2.7, d1=9.6, $fn = 30, center = true);


}    
    

