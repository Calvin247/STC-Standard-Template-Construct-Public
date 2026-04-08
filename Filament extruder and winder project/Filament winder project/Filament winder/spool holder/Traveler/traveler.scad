





///////////////////////////////////////////////////
//Top bearing
///////////////////////////////////////////////////


difference(){
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 84+10, d=20, $fn = 12, center = true); 


translate([30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true);   

translate([-30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true); 
    
    
rotate([-90,0,0]) translate([30,0,7.7]) cube([24,15-2,15], center = true);   

rotate([-90,0,0]) translate([-30,0,7.7]) cube([24,15-2,15], center = true); 
 
 
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 100, d=10, $fn = 180, center = true);   
  
  //space for wheel
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 15, d=30, $fn = 180, center = true);   



}
//////////////////////////////////////////////////







//////////////////////////////////////////////////
//bottom hexagon nut
//////////////////////////////////////////////////
difference(){
translate([0,0,-50]) rotate([0,-90,0]) cylinder(h=20,d= 20,center= true,$fn= 9);  


//nut shape//////
translate([0,0,-50]) rotate([0,90,0]) cylinder(h=6.5,d= 15,center= true,$fn= 6);  
        
translate([0,0,-50-7]) rotate([0,90,0]) cylinder(h=6.5,d= 15,center= true,$fn= 6);      
/////////////////
    
    
translate([0,0,-50]) rotate([0,90,0]) cylinder(h=50,d= 10,center= true,$fn= 60);     
    

}
///////////////////////////////////////////////////














difference(){
translate([0,0,-25]) cube([94,5+5,35], center = true); 


translate([50.5,-2.5,-52]) rotate([90,0,0]) cylinder(h=5,d1= 84.5, d2= 105, center= true,$fn= 180);   
    
translate([-50.5,-2.5,-52]) rotate([90,0,0]) cylinder(h=5,d1= 84.5, d2= 105, center= true,$fn= 180);  
    
    
translate([50.5,2.5,-52]) rotate([90,0,0]) cylinder(h=5,d1= 105, d2= 84.5, center= true,$fn= 180);   
    
translate([-50.5,2.5,-52]) rotate([90,0,0]) cylinder(h=5,d1= 105, d2= 84.5, center= true,$fn= 180);     



    
    
    
}    




difference(){
union(){
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 35, d=12, $fn = 90, center = true);
    
rotate([0,0,0]) translate([0,0,10]) cube([35,5,5], center = true);     
   
rotate([0,0,0]) translate([22.5-7.5,0,11.79]) cube([5,12,12], center = true);    
    
rotate([0,0,0]) translate([-22.5+7.5,0,11.79]) cube([5,12,12], center = true); 
 
 
 
    
}    
    
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 51, d=5.3, $fn = 180, center = true);   


//space for wheel
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 10, d=25, $fn = 180, center = true);  



//empty center
rotate([0,0,0]) translate([0,0,15]) cube([15,20,20], center = true);  




} 





