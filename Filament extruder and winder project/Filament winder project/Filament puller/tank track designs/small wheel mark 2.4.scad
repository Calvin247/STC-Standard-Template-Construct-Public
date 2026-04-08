


/////////////////////////////////////////////////////////////////
//Printing notes
/////////////////////////////////////////////////////////////////

//infill = 100%
//material = generic TPU 95

////////////////////////////////////////////////////////////////

A = 180;        //Large  circle resolution
B = 90;         //small  circle resolution










translate([22.75,0,50]){
    
 
    
difference(){
    
union(){    
translate([0,0,17.5])cylinder(h = 30, d=(7.7+0.95+8.65-2.91-0.05)*2, $fn = A, center = true);

for(i=[0:3*2*2*2]) translate([0,0,17.5]) rotate([0,0,i*360/6/3*2/2]) translate([7.7+0.95+8.65-2.91-0.05,0,0]) resize([2.5,2.5,30]) cylinder(h = 10, d=3, $fn = B, center = true);
   

}
for(i=[0:3*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,10+i*360/6/3*2/2]) translate([7.7+0.95+8.65-2.91-0.05,0,0]) resize([3.5,2.5,30]) cylinder(h = 12, d=3, $fn = B, center = true);

    
translate([0,0,17.5])cylinder(h = 31, d=15.4-7+12, $fn = A, center = true);



difference(){
translate([0,0,17.5])cylinder(h = 30, d=(7.7+0.95+8.65-2.91-0.05+5)*2, $fn = A, center = true); 

    
translate([0,0,17.5+3+10])cylinder(h = 4, d2=(7.7+0.95+8.65-2.91-0.05-1.75)*2, d1=(7.7+0.95+8.65-2.91-0.05+1.25)*2, $fn = A, center = true);  
   
translate([0,0,17.5-3-10])cylinder(h = 4, d1=(7.7+0.95+8.65-2.91-0.05-1.75)*2, d2=(7.7+0.95+8.65-2.91-0.05+1.25)*2, $fn = A, center = true);    
   
translate([0,0,17.5])cylinder(h = 22, d=(7.7+0.95+8.65-2.91-0.05+1.5)*2, $fn = A, center = true);     
     
}  



}}


