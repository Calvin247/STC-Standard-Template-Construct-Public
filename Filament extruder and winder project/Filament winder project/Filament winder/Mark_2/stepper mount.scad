//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);











//right attachment
translate([30,-0.6,0]){
difference(){
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 23, d=17, $fn = 180, center = true);   
    
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  



//left attachment
translate([-30,-0.6,0]){
difference(){
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 23, d=17, $fn = 180, center = true);   
    
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  


//bearing size
//rotate([90,0,0]) cylinder(h = 5, d=16, $fn = 180, center = true); 





//left back attachment
translate([-30,-50+5+3,0]){
difference(){
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 23, d=17, $fn = 180, center = true);   
    
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  



//right back attachment
translate([30,-50+5+3,0]){
difference(){
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 23, d=17, $fn = 180, center = true);   
    
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);

}}  

















///////////////////////////////////////////////////////////
//Bearing housing
//////////////////////////////////////////////////////////


difference(){
 
union(){    
//housing around bearing
rotate([90,0,0]) cylinder(h = 5+10, d1=16+10+2.7-2,d2=16+8+4.89+3.88-2, $fn = 180, center = true);

//baseplate
translate([0,2.5,0]) rotate([90,0,0]) cube([60,23,10], center = true);
       

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
translate([18,0,0]) rotate([90,0,0]) cylinder(h = 6, d=7-0.5, $fn = 6, center = true); 

   
}}  





//left cylinder emptying
translate([30,-0.6,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);


//right cylinder emptying
translate([-30,-0.6,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);

}    

////////////////////////////////////////////////////////////













/*




///////////////////////////////////////////////////////////
//lid
///////////////////////////////////////////////////////////


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

///////////////////////////////////////////////////////////



*/





translate([20,0,0]) rotate([90,0,0]){
A=0; //seperate
translate([0,0,0]){
difference(){
//cylinder(h = 5, d=13, $fn = 180, center = true);
    
//cylinder(h = 6, d=7-0.5, $fn = 6, center = true);       
}}  


/*
translate([0,0,4+A]){
difference(){
cylinder(h = 5, d=13, $fn = 180, center = true);
    
cylinder(h = 6, d=3.2, $fn = 30, center = true);       
} 
}

translate([0,0,8+2*A]){
difference(){
cylinder(h = 5, d=13, $fn = 180, center = true);
    
cylinder(h = 6, d=6, $fn = 30, center = true);       
} 
}

*/

}





////////////////////////////////////////////////////////
//Stepper motor mount
////////////////////////////////////////////////////////

difference(){
    
union(){    
rotate([0,0,0]) translate([0,-50+5+3,0]) rotate([90,0,0]) cube([50,23,10], center = true);  

rotate([0,0,0]) translate([0,-50+5+3,0]) rotate([90,0,0]) cylinder(h = 10, d=35, $fn = 180, center = true); 

}
   
translate([0,-50+5,0]) rotate([90,0,0]) cube([5,25,20], center = true);


//middle hole    
translate([0,-50+5,0]) rotate([90,0,0]) cylinder(h = 30, d=23, $fn = 180, center = true); 


}


translate([0,-50+5,0]) rotate([0,0,0]){
difference(){
    
    
union(){    
//stepper motor plate
cube([42,5,42], center = true);


    
    
rotate([0,0,0]) translate([0,30-5,0]) cube([42,55-10,5+2], center = true);
  
rotate([0,90,0]) translate([0,30-5,0]) cube([42,55-10,5+2], center = true); 
    
    
//baseplate
rotate([0,0,0]) translate([0,0,0]) rotate([90,0,0]) cube([60,23,5], center = true);    

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
translate([-30,3,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true); 

//back left cylinder empty
translate([30,3,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true); 

 


 //bearing size extended
translate([0,50-10,0]) rotate([90,0,0]) cylinder(h = 5+20, d=16+0.25, $fn = 180, center = true); 


}





}    


/////////////////////////////////////////////////////////
 

 
 