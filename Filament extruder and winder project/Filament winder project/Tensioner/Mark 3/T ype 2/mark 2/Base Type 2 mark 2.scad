





Base();

Ra=0;    //rotate
translate([10+17.5,12,0]) rotate([0,0,Ra]) Lever();

Rb=0;
translate([-22+17.5,12,0])rotate([0,0,Rb]) Latch();



A= 180;   //Medium radius
B= 60;    //Small radius 



module Base(){
        
difference(){
union(){
    
translate([13,0,0]) cube([60,24,5], center = true);
    
translate([-14.5,-6,2.5]) cube([5,12,10], center = true);
    
translate([22.75,-12,2.5]) cube([79.5,5,10], center = true);
 
    
translate([50,-19,0]) cube([18,10,5], center = true);   
translate([50,-19,5]) cube([5,10,5], center = true);      
 
 
    
//Slanted wall 
difference(){    
translate([23-5-11-20,0,7.5]) cube([70-22-40,5,10], center = true);   

for(i=[0,1]) translate([-32*i+27.5,12,0])cylinder(h = 60, d=27,$fn= A, center = true);
    
//slanting the wall
//translate([0,0,7.5+11.45]) rotate([0,5.83,0]) cube([150,6,20],center = true);
}


translate([-4.5+17.5,0,7.5]) cube([10,5,10], center = true);

translate([-4.5+17.5,-6,5]) cube([5,10,5], center = true);
   
    
//wall mount m8 cylinder 
for(i=[0,1])translate([i*30,-12,5])cylinder(h = 15, d=20, $fn = A,center = true);




//front cylinder
//for(i=[-1,1]) translate([50,i*12,0])cylinder(h = 5, d=18,$fn = A, center = true);
          
        
for(i=[-1]) translate([50,-12+i*12,0])cylinder(h = 23.5, d=18,$fn = A, center = true);
            
translate([50,-10,0]) cube([25,9,5], center = true);

 
//middle circles
for(i=[0,1]) translate([-32*i+27.5,12,0])cylinder(h = 5, d=25, $fn=A,center = true);
for(i=[0,1]) translate([-32*i+27.5,12,3.5])cylinder(h = 2, d1=25,d2=10, $fn = A, center = true);
for(i=[0,1]) translate([-32*i+27.5,12,-3.5])cylinder(h = 2, d1=10,d2=25, $fn = A, center = true);








//Rubber band holder 1
for(i=[0,1]) mirror([0,0,i]){
translate([50,-12-12,0]){
difference(){
translate([0,0,14])cylinder(h = 5, d=15, $fn = A, center = true);    

translate([0,0,12.75]){
rotate_extrude(convexity = 10, $fn = B)
translate([7.5, 0, 0])
resize([2,2,0]) circle(d = 5, $fn = B);
}
}}} 


}//end difference 






//Front bottom cylinder elimination
for(i=[-1]) translate([50,-12+i*12,0])cylinder(h = 60, d=5.25, $fn = A, center = true);
    
//middle circles eliminations
for(i=[0,1]) translate([-32*i+27.5,12,3.5])cylinder(h = 60, d=5.25, $fn = A, center = true);


//front fitting elimination
for(i=[0:30])translate([10+17.5,12,0])rotate([0,0,i*1]) translate([50-10-17.5,-12,0])cylinder(h = 10, d=18.25, $fn = A, center = true);
    

//translate([50,12+18.25/2,0]) cube([18.25,18.25,20], center = true);


//translate([-50,13,7.5]) rotate([90,0,0]) cylinder(h = 5, d=6,$fn = B, center = true);




/*

for(i=[-1,0]) mirror([0,0,i]){
translate([50,-12,5.75]){
rotate_extrude(convexity = 10, $fn = B)
translate([9, 0, 0])
resize([2,2,0]) circle(d = 5, $fn = B);
}}
*/




translate([42,0,5.5]) rotate([90,5,0]) resize([15,5,0])cylinder(h = 6, d=5.25, $fn = A, center = true);


//wall mount m8 cylinder
for(i=[0,1]) translate([i*30,-12,7.5])cylinder(h = 60, d=8.25, $fn = A, center = true);



}

//lever bootm block


}









//for(i=[0,1]) translate([-32*i+10,12,0])

module Lever(){
    
    
for(i=[0,-1]) mirror([0,0,i])translate([0,0,-0.75]){
difference(){
union(){   
    
//Front cylinder
translate([40-17.5,-12,10-3.5])cylinder(h = 12, d=18, $fn = A, center = true);
    
//translate([50,12,6.5])cylinder(h = 2, d1=10, d2=25, $fn = 180, center = true);
      


//middle cyliner
translate([0,0,10])cylinder(h = 5, d=25, $fn = A, center = true);
    
translate([0,0,6.5])cylinder(h = 2, d1=10, d2=25, $fn = A, center = true); 


//Rubber band holder 1
difference(){
translate([0,0,15])cylinder(h = 5, d=15, $fn = A, center = true);    

translate([0,0,13.5]){
rotate_extrude(convexity = 10, $fn = B)
translate([7.5, 0, 0])
resize([2,2,0]) circle(d = 5, $fn = B);
}
} 

//Rubber band holder 1
translate([40-17.5,-12,0]){
difference(){
translate([0,0,15])cylinder(h = 5, d=15, $fn = A, center = true);    

translate([0,0,13.5]){
rotate_extrude(convexity = 10, $fn = B)
translate([7.5, 0, 0])
resize([2,2,0]) circle(d = 5, $fn = B);
}
}} 


//translate([50,0,10]) cube([30,5,5], center = true);


    

//cube center
translate([15,-8,10]) rotate([0,0,-30]) cube([20,15,5], center = true);



}

//holes
translate([40-17.5,-12,10])cylinder(h = 60, d=5.25, $fn = A, center = true);

translate([0,0,10])cylinder(h = 60, d=5.25, $fn = A, center = true);


/*

translate([40,0,6.5]){
rotate_extrude(convexity = 10, $fn = B)
translate([9, 0, 0])
resize([2,2,0]) circle(d = 5, $fn = B);
}
*/




}}


/*
//hand lever
difference(){
union(){
translate([65,0,0])rotate([90,0,0])cylinder(h = 5, d=23.5, $fn = A, center = true);
for(i=[0,-1]) mirror([0,0,i])translate([55,0,10-0.75]) cube([20,5,5], center = true);
}
//thumb hold
for(i=[-1,1])translate([65,2.5*i,0]) resize([20,2,20])sphere(d = 23.5);

}
*/

//latch hook
difference(){
rotate([0,0,2.5]) rotate([0,0,-20]) translate([-10.4,-4+5+1,10-0.75]) cube([10,22,5], center = true);
    
rotate([0,0,2.5]) rotate([0,0,-20]) translate([-10.4,-4+5+1-16,10-0.75]) rotate([0,0,-2.5]) cube([12,11,6], center = true);

}
rotate([0,0,2.5]) translate([-5,7.5+5,9.25]) cube([10,10,5], center = true);


}    












module Latch(){

difference(){
union(){
    
translate([40,9,0])cylinder(h = 23.5+8, d=12, $fn = A, center = true);   
   

//hand lever
difference(){  
translate([40,9,17])rotate([90,0,0])resize([11,30,5]) cylinder(h = 5, d=11, $fn = A, center = true);
   
for(i=[-1,1])translate([40,9+i*2.5,17])rotate([90,0,0])resize([10,29,1])sphere(d = 23.5);     
    
}    

for(i=[0,-1]) mirror([0,0,i])translate([0,0,-0.75]){    
//middle cyliner
translate([0,0,10])cylinder(h = 5, d=25, $fn = A, center = true);
    
translate([0,0,6.5])cylinder(h = 2, d1=10, d2=25, $fn = A, center = true);


//translate([0,15,10]) cube([10,10,5], center = true);
    
translate([20,9,10]) cube([40,12,5], center = true);    



//Hand lever
//rotate([0,0,-30]) translate([-15,9,10]) cube([20,5,5], center = true);
 
    
translate([-5,5,10])rotate([0,0,-35.2])resize([12,23,5]) cylinder(h = 5, d=10, $fn = A, center = true);   

 
//translate([40,9,0.75])cylinder(h = 23.5+6, d=12, $fn = A, center = true);


}

//Hand lever
//rotate([0,0,-30]) translate([-30,9,0]) cube([10,5,23.5], center = true); 
//rotate([0,0,-30]) translate([-25,9,0])rotate([90,0,0])cylinder(h = 5, d=23.5, $fn = A, center = true);



rotate([0,0,-30]) translate([-7,-4.25,10-0.75]) cube([10,10,5], center = true);





}

for(i=[0,-1]) mirror([0,0,i]){
translate([40,9,12.75]){
rotate_extrude(convexity = 10, $fn = B)
translate([6, 0, 0])
resize([2,2,0]) circle(d = 5, $fn = B);
}}




translate([0,0,10])cylinder(h = 60, d=5.25, $fn = A, center = true);


for(i=[0,-1]) mirror([0,0,i]) translate([23,2,10]) cube([15,10,7], center = true);
    

//thumb hold
for(i=[-1,1])rotate([0,0,-30]) translate([-25,9+2.5*i,0]) resize([20,2,20])sphere(d = 23.5);


}}    






/*

translate([10.5,30,5]){
difference(){
translate([0,0,5])cylinder(h = 2, d=10, $fn = A, center = true);

translate([-5,-5,5]) cube([10,10,6], center = true);

}}



*/


