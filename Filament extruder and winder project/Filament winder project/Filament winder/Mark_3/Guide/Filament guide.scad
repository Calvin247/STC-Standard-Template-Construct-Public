


//////////////////////////////////////////////////////////////
//wall mount
//////////////////////////////////////////////////////////////

difference(){
union(){    

//baseplate   
translate([-2.5,0,0]) rotate([0,90,0]) cylinder(h = 5, d=62, $fn = 30, center = true);  


//skrew outer frame    
for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 10, d=31.2, $fn = 60, center = true);     



}   
//middle hole
rotate([0,90,0]) cylinder(h = 11, d=11, $fn = 30, center = true); 


//skrew diameter
translate([0,0,0]) for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 11, d=6.3, $fn = 30, center = true); 
    
//hex skrew end
translate([2.5,0,0]) for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 5, d=11.5, $fn = 6, center = true); 


//wall smoothing
for(i=[0:3])rotate([45+i*90,0,0])translate([0,35,0]) rotate([0,90,0]) cylinder(h = 11, d=20-0.11, $fn = 60, center = true); 



translate([2.5,0,0]) rotate([0,0,-90]){
for(i=[0,1]){
mirror([i,0,0]){   
    
//hole through baseplate
//translate([18,0,0]) rotate([90,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);

//bolt in baseplate
translate([18,0,0]) rotate([90,0,0]) cylinder(h = 30, d=7-0.5, $fn = 6, center = true); 

   
}}} 





}

///////////////////////////////////////////////////////////////

 














///////////////////////////////////////////////////////////
//Bearing housing
//////////////////////////////////////////////////////////


translate([2.5,0,0]) rotate([0,0,-90]){

difference(){
 
union(){    
//housing around bearing
rotate([90,0,0]) cylinder(h = 5+10, d1=16+10+2.7-2,d2=16+8+4.89+3.88-2, $fn = 180, center = true);

//baseplate
for(i=[0:1])translate([0,2.5,0]) rotate([90,i*90,0]) cube([48,15,10], center = true);
       

}




//through hole    
rotate([90,0,0]) cylinder(h = 20, d=11, $fn = 180, center = true); 
 
 
 //bearing size extended
translate([0,10,0]) rotate([90,0,0]) cylinder(h = 5+20, d=16+0.25, $fn = 180, center = true); 





for(i=[0,1]){
mirror([i,0,0]){   
    
//hole through baseplate
translate([18,0,0]) rotate([90,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);

//bolt in baseplate
translate([18,-5,0]) rotate([90,0,0]) cylinder(h = 6+10, d=7-0.5, $fn = 6, center = true); 

   
}}  





//left cylinder emptying
//translate([30,-0.6,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);


//right cylinder emptying
//translate([-30,-0.6,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);








} 


}

////////////////////////////////////////////////////////////








/*


///////////////////////////////////////////////////////////
//lid
///////////////////////////////////////////////////////////

translate([5,0,0]) rotate([0,0,-90]){


translate([0,-20,0]){
difference(){
union(){
//lid inner
translate([0,30,0]) rotate([90,0,0]) cylinder(h = 5, d=16, $fn = 180, center = true); 

//lid outer
translate([0,35+2.5,0]) rotate([90,0,0]) cylinder(h = 5+5, d=16+10, $fn = 180, center = true); 
    
//baseplate
translate([0,35,0]) rotate([90,0,0]) cube([48,15,5], center = true);    
    
//baseplate 2
translate([0,35+5,0]) rotate([90,0,0]) cube([48,15,5], center = true);     
    
}

   


//through hole    
translate([0,35,0]) rotate([90,0,0]) cylinder(h = 20, d=11, $fn = 180, center = true); 


for(i=[0,1]){
mirror([i,0,0]){   
    
//hole through baseplate
translate([18,35+5,0]) rotate([90,0,0]) cylinder(h = 5, d=6, $fn = 30, center = true);
    
//hole through baseplate
translate([18,35,0]) rotate([90,0,0]) cylinder(h = 5, d=3.2, $fn = 30, center = true);    
    
    
}}



}}


}

///////////////////////////////////////////////////////////

*/