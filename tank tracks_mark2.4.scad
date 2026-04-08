


/////////////////////////////////////////////////////////////////
//Printing notes
/////////////////////////////////////////////////////////////////

//infill = 100%
//material = generic TPU 95

////////////////////////////////////////////////////////////////

A = 360;        //Large  circle resolution
B = 90;         //small  circle resolution



difference(){
union(){
translate([0,0,25-2.5-20]){
rotate_extrude(convexity = 10, $fn = A)
translate([30.97+30, 0, 0])
circle(r = 2.13, $fn = B);
}



translate([0,0,10+2.5+20]){
rotate_extrude(convexity = 10, $fn = A)
translate([30.97+30, 0, 0])
circle(r = 2.13, $fn = B);
}
}

translate([0,0,17.5])cylinder(h = 30, d=61.2+3+2+60, $fn = A, center = true);

}








translate([0,0,17.5]) for(i=[0:1]) mirror([0,0,i]){
difference(){
translate([0,0,3+10])cylinder(h = 4, d=61.2+3+2+60, $fn = A, center = true);

translate([0,0,3+10])cylinder(h = 4, d1=61.2+3+60, d2=61.2-3-0.5+60, $fn = A, center = true);
}}




difference(){
translate([0,0,17.5])cylinder(h = 30, d=61.2+3+2+60, $fn = A, center = true);

translate([0,0,17.5])cylinder(h = 30, d=61.2-3-0.5+60, $fn = A, center = true);
    
translate([0,0,17.5])cylinder(h = 30, d=61.2+60, $fn = A, center = true);


translate([0,0,17.5+10])cylinder(h = 5, d1=61.2, d2=61.2-3, $fn = A, center = true);
    

for(i=[0:3*2*2*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,(i+22.5)*90/2/2/2/2]) translate([30.6+30,0,0]) resize([2.5,3.5,30]) cylinder(h = 30, d=3, $fn = B, center = true);

}






for(i=[0:3*2*2*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,i*90/2/2/2/2]) translate([30.6+30,0,0]) resize([3.5,2.5,30]) cylinder(h = 30, d=3, $fn = B, center = true);











/*



translate([22.75,0,50]){
    
 
    
difference(){
    
union(){    
translate([0,0,17.5])cylinder(h = 30, d=(7.7+0.95+8.65-2.91)*2, $fn = A, center = true);

for(i=[0:3*2*2*2]) translate([0,0,17.5]) rotate([0,0,i*360/6/3*2/2]) translate([7.7+0.95+8.65-2.91,0,0]) resize([3.5,2.5,30]) cylinder(h = 10, d=3, $fn = B, center = true);


}
for(i=[0:3*2*2*2*2]) translate([0,0,17.5]) rotate([0,0,10+i*360/6/3*2/2]) translate([7.7+0.95+8.65-2.91,0,0]) resize([3.5,2.5,30]) cylinder(h = 12, d=3, $fn = B, center = true);
    
translate([0,0,17.5])cylinder(h = 31, d=15.4-7+15, $fn = A, center = true);



difference(){
translate([0,0,17.5])cylinder(h = 30, d=(7.7+0.95+8.65-2.91+1.5+2)*2, $fn = A, center = true); 

    
translate([0,0,17.5+3+10])cylinder(h = 4, d2=(7.7+0.95+8.65-2.91-1.5-0.25)*2, d1=(7.7+0.95+8.65-2.91+1.5+0.25)*2, $fn = A, center = true);  
   
translate([0,0,17.5-3-10])cylinder(h = 4, d1=(7.7+0.95+8.65-2.91-1.5)*2, d2=(7.7+0.95+8.65-2.91+1.5)*2, $fn = A, center = true);    
   
translate([0,0,17.5])cylinder(h = 22, d=(7.7+0.95+8.65-2.91+1.5+0.3)*2, $fn = A, center = true);     
     
}  



}}


*/