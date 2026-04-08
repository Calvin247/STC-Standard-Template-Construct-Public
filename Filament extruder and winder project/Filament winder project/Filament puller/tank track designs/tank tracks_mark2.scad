


/////////////////////////////////////////////////////////////////
//Printing notes
/////////////////////////////////////////////////////////////////

//infill = 100%
//material = generic TPU 95

////////////////////////////////////////////////////////////////






A = 180;        //Large  circle resolution
B = 30;         //small  circle resolution





translate([0,0,17.5]) for(i=[0:1]) mirror([0,0,i]){
difference(){
translate([0,0,3.25])cylinder(h = 4, d=61.2+3+2, $fn = A, center = true);

translate([0,0,3.25])cylinder(h = 4, d1=61.2+3, d2=61.2-3-0.5, $fn = A, center = true);
}}




difference(){
translate([0,0,17.5])cylinder(h = 15, d=61.2+3+2, $fn = A, center = true);

translate([0,0,17.5])cylinder(h = 16, d=61.2-3-0.5, $fn = A, center = true);
    
translate([0,0,17.5])cylinder(h = 10, d=61.2, $fn = A, center = true);


//translate([0,0,17.5+10])cylinder(h = 5, d1=61.2, d2=61.2-3, $fn = A, center = true);
    

for(i=[0:3*2*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,(i+22.5)*90/2/2/2]) translate([30.6,0,0]) resize([2.5,3.5,10]) cylinder(h = 10, d=3, $fn = B, center = true);

}






for(i=[0:3*2*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,i*90/2/2/2]) translate([30.6,0,0]) resize([3.5,2.5,10]) cylinder(h = 10, d=3, $fn = B, center = true);


















translate([22.75,0,50]){
    
 
    
difference(){
    
union(){    
translate([0,0,17.5])cylinder(h = 10, d=(7.7+0.95)*2, $fn = A, center = true);

for(i=[0:3*2*2*2]) translate([0,0,17.5]) rotate([0,0,i*360/6/3*2]) translate([7.7+0.95,0,0]) resize([3,3,10]) cylinder(h = 10, d=3, $fn = B, center = true);


}
for(i=[0:3*2*2*2]) translate([0,0,17.5]) rotate([0,0,20+i*360/6/3*2]) translate([7.7+0.95,0,0]) resize([3,3,11]) cylinder(h = 10, d=3, $fn = B, center = true);
    
translate([0,0,17.5])cylinder(h = 11, d=15.4-7, $fn = A, center = true);



difference(){
translate([0,0,17.5])cylinder(h = 10, d=(7.7+0.95+1.5)*2, $fn = A, center = true); 

    
translate([0,0,17.5+3])cylinder(h = 4, d2=(7.7+0.95-1.5)*2, d1=(7.7+0.95+1.5)*2, $fn = A, center = true);  
   
translate([0,0,17.5-3])cylinder(h = 4, d1=(7.7+0.95-1.5)*2, d2=(7.7+0.95+1.5)*2, $fn = A, center = true);    
   
translate([0,0,17.5])cylinder(h = 2, d=(7.7+0.95+1.5)*2, $fn = A, center = true);     
     
}  



}}


