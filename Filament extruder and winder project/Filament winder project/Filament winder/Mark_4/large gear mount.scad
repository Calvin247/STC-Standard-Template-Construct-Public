//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);



/*
difference(){
union(){



////////////////////////////////////////////////////////////
//5mm disk closest to stepper
////////////////////////////////////////////////////////////

translate([-2.5,0,0]) difference(){
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 5, r=21.92+10.4, $fn = 180, center = true);
    
    
for(i=[0:3])rotate([i*90,0,0]) translate([0,21.92,0]) rotate([0,90,0]) cylinder(h = 11, d=11.25, $fn = 6, center = true); 

//through hole
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 11, r=23/2, $fn = 180, center = true);


for(i=[0:3])rotate([45+i*90,0,0]) translate([0,21.92,0]) rotate([0,90,0]) cylinder(h = 11, d=3, $fn = 180, center = true); 
  
}   






////////////////////////////////////////////////////////////
//5mm disk closest to board
////////////////////////////////////////////////////////////



translate([2.5,0,0]) difference(){
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 5, r=21.92+10.4, $fn = 180, center = true);
    
    
for(i=[0:3])rotate([i*90,0,0]) translate([0,21.92,0]) rotate([0,90,0]) cylinder(h = 31, d=6, $fn = 180, center = true); 

//through hole
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 31, r=23/2, $fn = 180, center = true);


for(i=[0:3])rotate([45+i*90,0,0]) translate([0,21.92,0]) rotate([0,90,0]) cylinder(h = 31, d=6, $fn = 180, center = true); 
  
}   

}










}
*/


difference(){
union(){




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
translate([0,0,0]) for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 11, d=6.25, $fn = 30, center = true); 
    
//hex skrew end
//translate([2.5,0,0]) for(i=[0:3])rotate([i*90,0,0])translate([0,31,0]) rotate([0,90,0]) cylinder(h = 5, d=11.25, $fn = 6, center = true); 


//wall smoothing
for(i=[0:3])rotate([45+i*90,0,0])translate([0,35,0]) rotate([0,90,0]) cylinder(h = 11, d=20-0.11, $fn = 60, center = true); 


}

///////////////////////////////////////////////////////////////

 





























translate([0,0,0]) rotate([0,0,90]){

////////////////////////////////////////////////////////
//Stepper motor mount
////////////////////////////////////////////////////////

difference(){
    
union(){    
for(i=[0:1]) rotate([0,0,0]) translate([0,-50+5+3,0]) rotate([90,i*90,0]) cube([50-8,23,10], center = true);  

rotate([0,0,0]) translate([0,-50+5+3,0]) rotate([90,0,0]) cylinder(h = 10, d=35, $fn = 180, center = true); 


translate([0,-40,0]) cube([42,6,42], center = true);


}
   
//translate([0,-50+5,0]) rotate([90,0,0]) cube([5,25,20], center = true);


//middle hole    
translate([0,-50+5,0]) rotate([90,0,0]) cylinder(h = 30, d=23-5, $fn = 180, center = true); 





//holes for stepper motor screws
//translate([15.5,-50+5,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

//translate([-15.5,-50+5,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

//translate([-15.5,-50+5,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

//translate([15.5,-50+5,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

//rotate([0,45,0]) translate([18.25,0,0]) rotate([90,0,0]) cylinder(h = 20, d=5.25, $fn = 180, center = true);



}


translate([0,-50+5,0]) rotate([0,0,0]){
difference(){
    
    
union(){    
//stepper motor plate
translate([0,0,0]) cube([42,5,42], center = true);


    
    
rotate([0,0,0]) translate([0,30-5,0]) cube([42+10,55-10,5+2], center = true);
  
rotate([0,90,0]) translate([0,30-5,0]) cube([42+10,55-10,5+2], center = true); 
    
    
//baseplate
//rotate([0,0,0]) translate([0,0,0]) rotate([90,0,0]) cube([50,23,5], center = true);    

}    
  


//middle hole in frame
translate([0,22.5,0]) rotate([90,0,0]) cylinder(h = 60, d1=23-5, d2=23-5, $fn = 180, center = true); 



//hole in bearing hole
//translate([0,50,0]) rotate([90,0,0]) cylinder(h = 15, d=25, $fn = 180, center = true); 



//holes for stepper motor screws
//translate([15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

//translate([-15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

//translate([-15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

//translate([15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);
 

//rotate([0,45,0]) translate([18.25,0,0]) rotate([90,0,0]) cylinder(h = 20, d=5.25, $fn = 180, center = true);



//smoothing off 4 side walls
translate([0,30-5,0]){
difference(){
rotate([90,0,0]) translate([0,0,0]) cylinder(h = 55-10, d=50+10, $fn = 180, center = true);

rotate([90,0,0]) translate([0,0,0]) cylinder(h = 55-10, d2=26+16, d1=42.5+12-4-2, $fn = 180, center = true); 

}} 
 
  






//back right cylinder empty
//translate([-30,3,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true); 

//back left cylinder empty
//translate([30,3,0]) rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=9, $fn = 180, center = true); 

 


 //bearing size extended
//translate([0,50-10,0]) rotate([90,0,0]) cylinder(h = 5+20, d=16+0.25, $fn = 180, center = true); 


}





}    


/////////////////////////////////////////////////////////
 

}





}





for(i=[0,1])mirror([0,i,i])rotate([45,0,0]) translate([40,18.25,0]) rotate([0,90,0]) cylinder(h = 20, d=5.25, $fn = 180, center = true);
}

