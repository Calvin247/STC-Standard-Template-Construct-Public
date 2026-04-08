//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);



/*


///////////////////////////////////////////////////////////
//lid
///////////////////////////////////////////////////////////


translate([0,-25,0]){
difference(){
union(){
//lid inner
translate([0,30,0]) rotate([90,0,0]) cylinder(h = 5, d=16, $fn = 180, center = true); 

//lid outer
translate([0,35+2.5,0]) rotate([90,0,0]) cylinder(h = 5+5, d=16+10+0.70, $fn = 180, center = true); 
    
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

///////////////////////////////////////////////////////////




*/






//right attachment
translate([30,-0.6,0]){
difference(){
rotate([0,-10,0]) translate([0,0,0]) cylinder(h = 28, d=17, $fn = 180, center = true);   
    
rotate([0,-10,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  



//left attachment
translate([-30,-0.6,0]){
difference(){
rotate([0,10,0]) translate([0,0,0]) cylinder(h = 28, d=17, $fn = 180, center = true);   
    
rotate([0,10,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  


//bearing size
//rotate([90,0,0]) cylinder(h = 5, d=16, $fn = 180, center = true); 





//left back attachment
translate([-30,-50+5+3,0]){
difference(){
rotate([-25,10,0]) translate([0,0,0]) cylinder(h = 28, d=17, $fn = 180, center = true);   
    
rotate([-25,10,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  



//right back attachment
translate([30,-50+5+3,0]){
difference(){
rotate([-25,-10,0]) translate([0,0,0]) cylinder(h = 28, d=17, $fn = 180, center = true);   
    
rotate([-25,-10,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  

















///////////////////////////////////////////////////////////
//Bearing housing
//////////////////////////////////////////////////////////


difference(){
 
union(){    
//housing around bearing
rotate([90,0,0]) cylinder(h = 5+10, d1=16+10+2.7-2,d2=16+8+4.89+3.88-2, $fn = 180, center = true);

//baseplate
translate([0,2.5,0]) rotate([90,0,0]) cube([60,20,10], center = true);
       

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
translate([18,0.25,0]) rotate([90,0,0]) cylinder(h = 6-0.5, d=7-0.5, $fn = 6, center = true); 

   
}}  





//left cylinder emptying
translate([30,-0.6,0]) rotate([0,-10,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);


//right cylinder emptying
translate([-30,-0.6,0]) rotate([0,10,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);

}    

////////////////////////////////////////////////////////////

























////////////////////////////////////////////////////////
//Stepper motor mount
////////////////////////////////////////////////////////


translate([0,-50+5,0]) rotate([0,0,0]){
difference(){
    
    
union(){    
//stepper motor plate
cube([42,5,42], center = true);



    
rotate([0,0,0]) translate([0,30-5,0]) cube([42,55-10,5+2], center = true);
  
rotate([0,90,0]) translate([0,30-5,0]) cube([42,55-10,5+2], center = true); 
    
    
//baseplate
rotate([0,0,0]) translate([0,0,-3]) rotate([90,0,0]) cube([60,20,5], center = true);    

}    
//middle hole    
rotate([90,0,0]) cylinder(h = 5, d=23, $fn = 180, center = true);    


//middle hole in frame
translate([0,22.5,0]) rotate([90,0,0]) cylinder(h = 40, d1=20, d2=23, $fn = 180, center = true); 



//hole in bearing hole
translate([0,50,0]) rotate([90,0,0]) cylinder(h = 15, d=25, $fn = 180, center = true); 



//holes for stepper motor screws
translate([15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);
 

//smoothing off 4 side walls
translate([0,30-5,0]){
difference(){
rotate([90,0,0]) translate([0,0,0]) cylinder(h = 55-10, d=50, $fn = 180, center = true);

rotate([90,0,0]) translate([0,0,0]) cylinder(h = 55-10, d1=26-1+5-2.57, d2=42.5, $fn = 180, center = true); 

}} 
 
  






//back right cylinder empty
translate([-30,3,0]) rotate([-25,10,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true); 

//back left cylinder empty
translate([30,3,0]) rotate([-25,-10,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true); 

 


 //bearing size extended
translate([0,50-10,0]) rotate([90,0,0]) cylinder(h = 5+20, d=16+0.25, $fn = 180, center = true); 


//stepper cube smoothing
for(i=[0:3]){ 
translate([0,-45-(-50+5),0]) rotate([0,45+i*90,0]) translate([0,0,35.3]) cube([10,6,15], center = true);   
}



}





}    


/////////////////////////////////////////////////////////
 

 


/////////////////////////
//Cylinder on top
////////////////////////
    
difference(){     

union(){    
translate([0,-40,50]) rotate([90,0,0]) resize([15,21+12,15]) cylinder(h = 15, d=30, $fn = 180, center = true);      

translate([0,-45,25+5+5]) cube([15+27,5,50-10-10], center = true); 


difference(){    
translate([0,-17.5,25]) cube([7,50,25], center = true);     
    
translate([0,7,58]) rotate([0,90,0]) cylinder(h = 10, d=91, $fn = 180, center = true);        
}    
}

translate([0,-40,50]) rotate([90,0,0]) cylinder(h = 20, d=8.25, $fn = 180, center = true); 


///////////////////////////

//M3 nut
translate([0,-40,60]) rotate([0,0,0]) cylinder(h = 20, d=3.2, $fn = 30, center = true);

//M3 hole
translate([0,-40,50+6]) rotate([0,0,0]) cylinder(h = 8, d=7-0.5, $fn = 6, center = true);


//smoothing of cube 
translate([21,-40-5,50]) rotate([90,0,0]) resize([15+12,21+12+25,15]) cylinder(h = 15, d=30, $fn = 180, center = true); 

translate([-21,-40-5,50]) rotate([90,0,0]) resize([15+12,21+12+25,15]) cylinder(h = 15, d=30, $fn = 180, center = true); 

//stepper cube smoothing
for(i=[0:3]){ 
translate([0,-45,0]) rotate([0,45+i*90,0]) translate([0,0,35.3]) cube([10,6,15], center = true);   
}

}


















 