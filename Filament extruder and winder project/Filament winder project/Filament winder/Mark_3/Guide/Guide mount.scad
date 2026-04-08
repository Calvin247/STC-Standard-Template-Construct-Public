/*


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

 




















//////////////////////////////////////////////////////////////
//wall mount 2
//////////////////////////////////////////////////////////////


translate([0,-62,0]){
difference(){
union(){    

//baseplate   
translate([-2.5,0,0]) rotate([0,90,0]) cylinder(h = 5, d=62, $fn = 30, center = true);  

   
//rod holder 
translate([10,0,0]) rotate([0,90,0]) cylinder(h = 20, d=15, $fn = 30, center = true);  
 
    
    
    
    
    
    
 //rod holder support frame
difference(){    
translate([10,0,0]) rotate([0,90,0]) cylinder(h = 20, d1=60, d2=15, $fn = 30, center = true);   


//wall elimination
for(i=[0:3])translate([10,0,0]) rotate([i*90,0,0]) translate([0,18,18])  cube([30,30,30], center = true);

}






//skrew outer frame    
for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 10, d=31.2, $fn = 60, center = true);     



}   
//middle hole
rotate([0,90,0]) cylinder(h = 50, d=8.25, $fn = 30, center = true); 


//skrew diameter
translate([0,0,0]) for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 11, d=6.3, $fn = 30, center = true); 
    
//hex skrew end
translate([2.5,0,0]) for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 5, d=11.5, $fn = 6, center = true); 


//wall smoothing
for(i=[0:3])rotate([45+i*90,0,0])translate([0,35,0]) rotate([0,90,0]) cylinder(h = 11, d=20-0.11, $fn = 60, center = true); 




for(i=[0,1]){
mirror([i,0,0]){   
translate([2.5,62,0]) rotate([0,0,-90]){
    
//hole through baseplate
//translate([18,0,0]) rotate([90,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);

//bolt in baseplate
translate([18,0,0]) rotate([90,0,0]) cylinder(h = 30, d=7-0.5, $fn = 6, center = true); 

   
}}} 





}}

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



*/







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
















translate([19,34-31,0]) rotate([90,0,90])  hallEffectSensor();







module hallEffectSensor(){

///////////////////////////////////////////////////////////////
//Tob hall effect sensor box
//////////////////////////////////////////////////////////////
translate([0,0,0]){
difference(){
translate([-34,0,10]) cube([10,3.5,1], center = true);

translate([-34,0,10]) cube([4+0.5,4,1], center = true);  
}    

difference(){
translate([-34,0,10+0.5+0.25]) cube([10,3.5,0.5], center = true);


translate([-34,0,5.4+0.3]) rotate([0,60,0]) cube([10.55,4,6], center = true);  
    
translate([-34,0,5.4+0.3]) rotate([0,-60,0]) cube([10.55,4,6], center = true);      
}  


translate([-34,-3.5,10+0.25]) cube([10,3.5,1.5], center = true);

difference(){
translate([-34,3.5,10+0.25]) cube([10,3.5,1.5], center = true);

translate([-34,0,10+0.25]) cube([4+0.5,15,1.5], center = true); 

}


translate([-34,0,10-1.25]) cube([10,10.5,1.5], center = true);


//end of hall effect sensor box


for(i=[0,1]) mirror([0,i,0]){
difference(){    
//translate([-34,12,2]) rotate([0,0,0]) cylinder(h = 3, d=12, $fn = 90, center = true);

//hole through baseplate
//translate([-34,12,-8]) rotate([0,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);
}}

difference(){
    
//baseplate    
translate([-34,6.25,3.5]) cube([19,27.5,10], center = true);

//translate([-34,12,6]) rotate([0,0,0]) cylinder(h = 6, d=6, $fn = 30, center = true); 
//translate([-34,-12,6]) rotate([0,0,0]) cylinder(h = 6, d=6, $fn = 30, center = true);    
}  
}


///////////////////////////////////////////////////////////////







//bottom mount

translate([-34,-1.75,11.5])rotate([90,0,0]){
difference(){  
translate([0,-1.5,-19.25])cube(size = [15+4,8+5,5], center = true);

translate([0,-1.5,0]) cube(size = [8,3,100], center = true);
}

}









}









