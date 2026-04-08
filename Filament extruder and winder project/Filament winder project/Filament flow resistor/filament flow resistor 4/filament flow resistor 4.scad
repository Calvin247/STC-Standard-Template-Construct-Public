//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);


//UElastic();
//translate([0,0,-15])BottomContainer();
translate([0,0,10]) lid();


//////////////////////////////////////////////////////
//elastic inner
/////////////////////////////////////////////////////

module UElastic(){
translate([0,0,0]){

difference(){
union(){    
translate([0,0,0])cylinder(h = 5, d=15, $fn = 180, center = true);


translate([7.5/2,0,0]) cube([7.5,15,5], center = true);
}
translate([0,0,0])cylinder(h = 10, d=2.2, $fn = 180, center = true);
    
    
translate([7.5,0,0]) cube([15,2.2,15], center = true);    
     


}}}



////////////////////////////////////////////////////////
//Box
////////////////////////////////////////////////////////



module BottomContainer(){
translate([0,0,0]){
 
//Bottom half 
difference(){ 
 
union(){    
translate([0,0,0]) cube([34.5,34.5,10], center = true);    
    
    
}

//center empying
translate([0,0,2])cylinder(h = 10, d=15.5, $fn = 180, center = true);
translate([7.5/2,0,2]) cube([8,15.5,10], center = true);    




translate([0,0,-4]) cylinder(h = 2, d1=13, d2=10, $fn = 180, center = true);


//M3 nut

for(i=[-1,1])for(j=[-1,1])
translate([i*12,j*12,-3]) rotate([0,0,30]){
cylinder(h = 10, d=7-0.5, $fn = 6, center = true);
cylinder(h = 20, d=3.2, $fn = 30, center = true);
}    



//Side M3 nuts
for(j=[0,1])for(i=[0:2]) mirror([0,j,0]) rotate([90,0,0]) translate([4,0,12.5]) translate([0,i*2,0]) rotate([0,0,30]) cylinder(h = 4, d=7-0.5, $fn = 6, center = true);
translate([0,0,0]) rotate([90,0,0]) translate([4,0,20]) cylinder(h = 100, d=3.2, $fn = 90, center = true);
 

}


}} 






















///////////////////////////////////////////////////////////
//Lid
///////////////////////////////////////////////////////////



module lid(){
translate([0,0,8.5]){

difference(){
    
union(){    
translate([0,0,2.5]) cube([34.5,34.5,7+5], center = true);

translate([0,0,-4.75])cylinder(h = 2.5, d=15, $fn = 180, center = true);


translate([7.5/2,0,-4.75]) cube([7.5,15,2.5], center = true);




//attachment m5
for(i=[0,1]) mirror([0,i,0]) difference(){    
translate([0,23.25,2.5]) cube([34.5,12,12], center = true);
translate([0,23.25,2.5]) rotate([0,90,0]) cylinder(h = 35, d=5.25, $fn = 180, center = true);

}
}


for(i=[-1,1])for(j=[-1,1])
translate([i*12,j*12,3.5+3]) rotate([0,0,30]){
cylinder(h = 14, d=7-0.5, $fn = 30, center = true);
cylinder(h = 20, d=3.2, $fn = 30, center = true);
}    

translate([0,0,2.5]) cylinder(h = 7+5, d1=10, d2=24, $fn = 180, center = true);


translate([0,0,0]) cylinder(h = 20, d1=10, d2=10, $fn = 180, center = true);





}

}}






