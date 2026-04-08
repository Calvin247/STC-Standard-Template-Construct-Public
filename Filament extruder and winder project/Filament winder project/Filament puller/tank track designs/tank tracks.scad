


/////////////////////////////////////////////////////////////////
//Printing notes
/////////////////////////////////////////////////////////////////

//infill = 100%
//material = generic TPU 95

////////////////////////////////////////////////////////////////






A = 180;        //Large  circle resolution
B = 30;         //small  circle resolution


/*
difference(){
translate([0,0,17.5])cylinder(h = 10, d=61.2+6, $fn = A, center = true);

translate([0,0,17.5])cylinder(h = 11, d=61.2, $fn = A, center = true);

//for(i=[0:3*2*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,(i+22.5)*90/2/2/2]) translate([30.6,0,0]) cylinder(h = 31, d=3, $fn = B, center = true);

}





difference(){
for(i=[0:3*2*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,i*90/2/2/2]) translate([30.6,0,0]) resize([3,3,10]) cylinder(h = 10, d=3, $fn = B, center = true);
    
//translate([0,0,17.5]) cylinder(h = 31, d=55, $fn = A, center = true);




//translate([0,0,30]) cylinder(h = 5, d2=62, d1=55, $fn = A, center = true); 
    
//translate([0,0,5]) cylinder(h = 5, d1=62, d2=55, $fn = A, center = true);  

}



*/











translate([22.75,0,0]){
difference(){
translate([0,0,17.5])cylinder(h = 10, d=15.4, $fn = A, center = true);

for(i=[0:3*2*2*2]) translate([0,0,17.5]) rotate([0,0,i*90/2]) translate([7.7,0,0]) resize([3,4,31]) cylinder(h = 10, d=3, $fn = B, center = true);
    
translate([0,0,17.5])cylinder(h = 11, d=15.4-7, $fn = A, center = true);


}}


