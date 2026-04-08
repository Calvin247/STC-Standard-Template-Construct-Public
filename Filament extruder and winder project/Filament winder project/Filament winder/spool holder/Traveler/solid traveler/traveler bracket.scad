

difference(){
translate([0,0,0])cube([17+34+34+22,17,17], center = true);
rotate([90,0,0]) translate([45,0,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true); 
 
rotate([90,0,0]) translate([-45,0,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);    
}    









difference(){   
translate([0,0,-28])cube([17+34+34+22,17,41.6], center = true);

translate([0,0,-54.6]) rotate([0,20,0]) translate([-65,0,0]) cube([17+34+34+22+20,18,50], center = true);
    
translate([0,0,-78.5]) rotate([0,-41,0]) cube([17+34+34+22+40+40,18,35], center = true);   
   
   
//through hole    
translate([0,0,-17-20-2]) rotate([0,0,90]) rotate([90,0,0]) cylinder(h = 50, d=10, $fn = 180, center = true); 
 
 
 //bearing size extended
//translate([0,10,0]) rotate([90,0,0]) cylinder(h = 5+20, d=16+0.25, $fn = 180, center = true); 


//nut shape
translate([0,0,-17-20-2]) rotate([0,0,90]) translate([0,15.75-6.5-3,0]) rotate([90,0,0]) cylinder(h=6.5+10,d= 16,center= true,$fn= 6);     
   
    
}
translate([0,0,-20])cube([15,17,23], center = true); 

















/*


translate([0,0,-50]){


//////////////////////////////////////////////////
//bottom hexagon nut
//////////////////////////////////////////////////
difference(){
translate([0,0,-50]) rotate([0,-90,0]) cylinder(h=20,d= 20,center= true,$fn= 90);  


//nut shape//////
translate([0,0,-50]) rotate([0,90,0]) cylinder(h=6.5,d= 16,center= true,$fn= 6);  
        
translate([0,0,-50-7]) rotate([0,90,0]) cylinder(h=6.5,d= 16,center= true,$fn= 6);      
/////////////////
    
    
translate([0,0,-50]) rotate([0,90,0]) cylinder(h=50,d= 10,center= true,$fn= 60);     
    

}
///////////////////////////////////////////////////


}


*/
















translate([0,0,-17-20-2]) rotate([0,0,90]){

///////////////////////////////////////////////////////////
//Bearing housing
//////////////////////////////////////////////////////////


difference(){
 
union(){    
//housing around bearing
rotate([90,0,0]) cylinder(h = 5+10, d=16+10, $fn = 180, center = true);

//baseplate
translate([0,2.5,0]) rotate([90,0,0]) cube([48,15,10], center = true);
    
}




//through hole    
rotate([90,0,0]) cylinder(h = 20, d=10, $fn = 180, center = true); 
 
 
 //bearing size extended
//translate([0,10,0]) rotate([90,0,0]) cylinder(h = 5+20, d=16+0.25, $fn = 180, center = true); 


//nut shape
translate([0,15.75-6.5-3,0]) rotate([90,0,0]) cylinder(h=6.5+10,d= 16,center= true,$fn= 6);  




for(i=[0,1]){
mirror([i,0,0]){   
    
//hole through baseplate
translate([18,0,0]) rotate([90,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);

//bolt in baseplate
translate([18,0.25,0]) rotate([90,0,0]) cylinder(h = 6-0.5, d=7-0.5, $fn = 6, center = true); 

   
}}  



/*

//left cylinder emptying
translate([30,-0.6,0]) rotate([0,-10,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);


//right cylinder emptying
translate([-30,-0.6,0]) rotate([0,10,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true);

*/



}    

////////////////////////////////////////////////////////////


}
































/*


translate([0,0,0-(-17-20-2)]) rotate([0,0,90]){


difference(){
translate([0,0,7-1.5])cube([17,17,17+14-3], center = true);
rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
    
}    


difference(){
translate([0,0,-17])cube([17,17,17], center = true);
translate([0,0,-17])rotate([90,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
    
} 



difference(){
translate([18,0,25]) rotate([-15,0,90]){
difference(){
    
union(){    
rotate([0,0,0]) translate([0,14,5]) cube([17,28,17], center = true);
//rotate([0,25,0]) translate([0,0,5]) cylinder(h = 25, d=17, $fn = 180, center = true);      
}    

//rotate([0,25,0]) translate([0,0,5]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
 
translate([0,18-0.5,5-1]) rotate([0,90,0]) cylinder(h = 50, d=5+0.3, $fn = 180, center = true);



translate([-15.5-17,0,-20+17]) cube([17,22,50], center = true);
}  
}

translate([-17,0,17]) cube([17,22,50], center = true);

translate([17,0,17]) cube([17,22,50], center = true);

translate([0,0,56.87]) cube([17,22,50], center = true);

}















translate([0,0,-17-20-2]) rotate([0,0,90]){

///////////////////////////////////////////////////
//Top bearing
///////////////////////////////////////////////////






difference(){
    
union(){    
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 35, d=20+5, $fn = 90, center = true); 


translate([0,0,7])cube([17,17,9+6], center = true);
}


//brick smoothing
//rotate([70,0,0])translate([0,10,-8.6]) cube([20,17,8], center = true);


translate([0,0,0]) rotate([0,90,0]) cylinder(h = 24+0.5, d=15, $fn = 180, center = true);   

//translate([-30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true); 
  
//rotate([-90,0,0]) translate([0,0,7.7]) cube([100,15-2,15], center = true);    
    
    
//rotate([-90,0,0]) translate([30,0,7.7]) cube([24,15-2,15], center = true);   

//rotate([-90,0,0]) translate([-30,0,7.7]) cube([24,15-2,15], center = true); 
    
    
translate([0,0,0]) rotate([0,90,0]) resize([10,10,100]) cylinder(h = 100, d=10, $fn = 180, center = true);     
 
 
translate([0,8,0]) rotate([0,90,0]) resize([13,24,100]) cylinder(h = 100, d=10, $fn = 180, center = true);   
  
  //space for wheel
//translate([0,0,18]) rotate([0,90,0]) cylinder(h = 25, d=30, $fn = 180, center = true);   



rotate([-90,0,0]) translate([0,0,7.7]) cube([24+0.5,15-1.5+1,15], center = true);

//rotate([-90,0,0]) translate([-30,0,7.7]) cube([24,15-1.5,15], center = true);



}
//////////////////////////////////////////////////
}}





*/




















/*

///////////////////////////////////////////////////////////
//lid
///////////////////////////////////////////////////////////


rotate([0,0,90]) translate([0,0,-17-20-2]){
difference(){
union(){
//lid inner
//translate([0,30,0]) rotate([90,0,0]) cylinder(h = 5, d=16, $fn = 180, center = true); 

//lid outer
translate([0,35+2.5,0]) rotate([90,0,0]) cylinder(h = 5+5, d=16+10, $fn = 180, center = true); 
 

    
//baseplate
translate([0,35,0]) rotate([90,0,0]) cube([48,15,5], center = true);    
    
//baseplate 2
translate([0,35+5,0]) rotate([90,0,0]) cube([48,15,5], center = true);   
  
  
  
//nut shape
translate([0,35.75-3,0]) rotate([90,0,0]) cylinder(h=6.5,d= 16-1,center= true,$fn= 6);  
    
   
}

//through hole    
translate([0,35,0]) rotate([90,0,0]) cylinder(h = 20, d=10, $fn = 180, center = true); 


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

