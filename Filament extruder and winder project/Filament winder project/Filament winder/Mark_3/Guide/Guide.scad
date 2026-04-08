


traveler();


module traveler(){


///////////////////////////////////////////////////
//Top bearing
///////////////////////////////////////////////////
rotate([90,0,0]){

difference(){
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 84+10, d=20, $fn = 90, center = true); 

translate([30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true);   

translate([-30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true); 
    
translate([0,0,0]) rotate([0,90,0]) resize([10,10,100]) cylinder(h = 100, d=10, $fn = 180, center = true);     
 
 
translate([0,8,0]) rotate([0,90,0]) resize([13,24,100]) cylinder(h = 100, d=10, $fn = 180, center = true);   

rotate([-90,0,0]) translate([30,0,7.7]) cube([24,15-1.5,15], center = true);

rotate([-90,0,0]) translate([-30,0,7.7]) cube([24,15-1.5,15], center = true);

}}
//////////////////////////////////////////////////







//////////////////////////////////////////////////
//bottom hexagon nut
//////////////////////////////////////////////////
difference(){
translate([-17.5-5,0,-50-12]) rotate([0,-90,0]) cylinder(h=65,d= 20,center= true,$fn= 90);  

//nut shape//////
translate([0,0,-50-12]) rotate([0,90,0]) cylinder(h=6.5,d= 16,center= true,$fn= 6);  
        
translate([0,0,-50-7-12]) rotate([0,90,0]) cylinder(h=6.5,d= 16,center= true,$fn= 6);      
/////////////////
    
    
translate([-17.5,0,-50-12]) rotate([0,90,0]) cylinder(h=80,d= 10,center= true,$fn= 60);     
    

}
///////////////////////////////////////////////////











////////////////////////////////////////////
//blade wall
/////////////////////////////////////////////
difference(){
    
union(){    
translate([0,0,-25-7.5]) cube([94,5+5,35+15], center = true); 
}

translate([50.5,0,-52]) rotate([90,0,0]) cylinder(h=10+1, d= 105-10.1-1, center= true,$fn= 180);   
    
translate([-50.5,0,-52]) rotate([90,0,0]) cylinder(h=10+1, d= 105-10.1-1, center= true,$fn= 180);     
    
//for the nut
 translate([0,0,-50-12]) rotate([0,90,0]) cylinder(h=6.5,d= 16,center= true,$fn= 6);  

//nute hole smoothing
translate([0,0,-50-12]) rotate([0,90,0]) cylinder(h=50,d= 10,center= true,$fn= 60); 
     
}   



difference(){
union(){

for(i=[-7:35]){
translate([-50.5-0.5,0,-52]) rotate([0,0,90]) rotate([-12-i*2,0,0]) translate([0,-50.5+3.1,0]) cylinder(h=2, d= 10, center= true,$fn= 60);    
}

mirror([1,0,0]) for(i=[-7:35]){
translate([-50.5-0.5,0,-52]) rotate([0,0,90]) rotate([-12-i*2,0,0]) translate([0,-50.5+3.1,0]) cylinder(h=2, d= 10, center= true,$fn= 60);    
}  

}
//for the nut
 translate([0,0,-50]) rotate([0,90,0]) cylinder(h=6.5,d= 16,center= true,$fn= 6); 

translate([30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true);   

translate([-30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true); 
  
rotate([-90,0,0]) translate([0,0,7.7]) cube([100,15-1.5,15], center = true);   

translate([0,0,0]) rotate([0,90,0]) cylinder(h = 100, d=10, $fn = 180, center = true); 
}

////////////////////////////////////////////////








/////////////////////////////////////////////////////////////
//Wall 
////////////////////////////////////////////////////////////

difference(){
union(){
    
//////////////////// 
//disk 1 
////////////////////
    
translate([-44.5-15,0,0]) rotate([0,90,0]) cylinder(h = 5, d=30, $fn = 90, center = true); 
    
translate([-44.5-10,0,0]) rotate([0,90,0]) cylinder(h = 5, d1=30, d2=15, $fn = 90, center = true);     
    
 
/////////////////// 
  
translate([-44.5-15,0,-31]) cube([5,30,62], center = true);  

translate([-44.5-10,0,-31]) cube([5,15,62], center = true); 
  
 
  
translate([-25,0,-15]) cube([62,10,15], center = true);     
   
   
    
//////////////////// 
//disk 2 
////////////////////   

translate([-44.5-15,0,-62]) rotate([0,90,0]) cylinder(h = 5, d=30, $fn = 90, center = true); 
 
 
translate([-44.5-10,0,-62]) rotate([0,90,0]) cylinder(h = 5, d1=30, d2=15, $fn = 90, center = true);  
 

////////////////////  

translate([-44.5-15,0,15]) rotate([0,0,0]) cube([5,30,30], center = true);  

translate([-44.5-10,0,15]) rotate([0,0,0]) cube([5,15,30], center = true);

 
 
 
 
 

//////////////////// 
//disk 3 
////////////////////
  
translate([-44.5-15,0,30]) rotate([0,90,0]) cylinder(h = 5, d=30, $fn = 90, center = true);

translate([-44.5+5-15,0,30]) rotate([0,90,0]) cylinder(h = 5, d1=30, d2=15, $fn = 90, center = true);    

////////////////////

translate([-44.5-15,0,30+12]) cube([5,30,24], center = true);
translate([-44.5-15+5,0,30+12]) cube([5,15,24], center = true);


//////////////////// 
//disk 4 
////////////////////

translate([-44.5-15,0,30+24]) rotate([0,90,0]) cylinder(h = 5, d=30, $fn = 90, center = true);  

translate([-44.5+5-15,0,30+24]) rotate([0,90,0]) cylinder(h = 5, d1=30, d2=15, $fn = 90, center = true); 


}




//////////////////// 
//disk 3 holes
////////////////////

translate([-44.5-15,0,30]) rotate([0,90,0]) cylinder(h = 5, d=9, $fn = 90, center = true);

translate([-44.5+5-15,0,30]) rotate([0,90,0]) cylinder(h = 5, d=5.25, $fn = 90, center = true);


//////////////////// 
//disk 4 holes
////////////////////

translate([-44.5-15,0,30+24]) rotate([0,90,0]) cylinder(h = 5, d=9, $fn = 90, center = true);

translate([-44.5+5-15,0,30+24]) rotate([0,90,0]) cylinder(h = 5, d=5.25, $fn = 90, center = true);



//top hole
translate([0,0,0]) rotate([0,90,0]) resize([10,10,200]) cylinder(h = 100, d=10, $fn = 180, center = true);

//bottom hole
translate([-17.5,0,-50-12]) rotate([0,90,0]) cylinder(h=200,d= 10,center= true,$fn= 60);    






//hole through baseplate
translate([-44.5-15,0,-31-18]) rotate([0,90,0]) cylinder(h = 5, d=3.2, $fn = 30, center = true); 

//hole through baseplate
translate([-44.5-10,0,-31-18]) rotate([0,90,0]) cylinder(h = 5, d=6, $fn = 30, center = true);



//hole through baseplate 2
translate([-44.5-15,0,-31+5]) rotate([0,90,0]) cylinder(h = 5, d=3.2, $fn = 30, center = true); 

//hole through baseplate 2
translate([-44.5-10,0,-31+5]) rotate([0,90,0]) cylinder(h = 5, d=6, $fn = 30, center = true);




}


 




}



translate([-50,0,0]) magnetHolder();

module magnetHolder(){


///////////////////////////////////////////////////////////////
//magnet holder
///////////////////////////////////////////////////////////////

difference(){
union(){
    
//inner frame    
translate([-44.5-20,0,-31-18]) rotate([0,90,0]) cylinder(h = 5, d=14, $fn = 30, center = true); 

translate([-44.5-20,0,-31+5]) rotate([0,90,0]) cylinder(h = 5, d=14, $fn = 30, center = true); 
    
translate([-44.5-20,0,-31-6.5]) cube([5,14,23], center = true); 
   
//outer frame    
translate([-44.5-25,0,-31-18]) rotate([0,90,0]) cylinder(h = 5, d=14, $fn = 30, center = true); 

translate([-44.5-25,0,-31+5]) rotate([0,90,0]) cylinder(h = 5, d=14, $fn = 30, center = true); 
    
translate([-44.5-25,0,-31-6.5]) cube([5,14,23], center = true);


//magnet extention
//translate([-44.5-50,0,-31]) cube([5,14,14], center = true);
    

}

//inner frame elimination
translate([-44.5-20,0,-31-18]) rotate([0,90,0]) cylinder(h = 5, d=3.2, $fn = 30, center = true);

translate([-44.5-20,0,-31+5]) rotate([0,90,0]) cylinder(h = 5, d=3.2, $fn = 30, center = true);

//outer frame elimination
translate([-44.5-25,0,-31-18]) rotate([0,90,0]) cylinder(h = 5, d=7-0.5, $fn = 6, center = true);

translate([-44.5-25,0,-31+5]) rotate([0,90,0]) cylinder(h = 5, d=7-0.5, $fn = 6, center = true);



}








////////////////////////////////////
//magnet holder frame
////////////////////////////////////
    
translate([-105,0,-34-31]) rotate([0,90,0]){    
difference(){
union(){    
translate([-12-22,0,20+5]) cube([10,10,3], center = true);
translate([-12-12,0,28.5]) cube([10,10,10], center = true);
translate([-12-17,-6,28.5]) cube([20,2,10], center = true);
    
//translate([-10,0,20+3]) cube([40,3,3], center = true);
}    
translate([-34,0,20-2-0.5]) rotate([0,0,0])  cylinder(h = 3, d=7, $fn = 45, center = true);

translate([-34,0,20-2-0.5+5.5-0.5]) rotate([0,0,0])  cylinder(h = 3, d=7, $fn = 45, center = true);

translate([-34,0,20-2-0.5+5.5-0.5+5]) rotate([0,0,0])  cylinder(h = 3, d=7, $fn = 45, center = true);

translate([17,0,19]) rotate([90,0,0]) cylinder(h = 7+4, d=16.3, $fn = 45, center = true);
} 


}}
