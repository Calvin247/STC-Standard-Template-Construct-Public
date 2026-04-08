





///////////////////////////////////////////////////
//Top bearing
///////////////////////////////////////////////////


difference(){
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 84+10, d=20, $fn = 90, center = true); 


translate([30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true);   

translate([-30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true); 
  
//rotate([-90,0,0]) translate([0,0,7.7]) cube([100,15-2,15], center = true);    
    
    
//rotate([-90,0,0]) translate([30,0,7.7]) cube([24,15-2,15], center = true);   

//rotate([-90,0,0]) translate([-30,0,7.7]) cube([24,15-2,15], center = true); 
    
    
translate([0,0,0]) rotate([0,90,0]) resize([10,10,100]) cylinder(h = 100, d=10, $fn = 180, center = true);     
 
 
translate([0,8,0]) rotate([0,90,0]) resize([13,24,100]) cylinder(h = 100, d=10, $fn = 180, center = true);   
  
  //space for wheel
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 25, d=30, $fn = 180, center = true);   



rotate([-90,0,0]) translate([30,0,7.7]) cube([24,15-1.5,15], center = true);

rotate([-90,0,0]) translate([-30,0,7.7]) cube([24,15-1.5,15], center = true);



}
//////////////////////////////////////////////////







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












//blade wall

difference(){
    
union(){    
translate([0,0,-25]) cube([94,5+5,35], center = true); 



}

translate([50.5,0,-52]) rotate([90,0,0]) cylinder(h=10, d= 105-10.1, center= true,$fn= 180);   
    
translate([-50.5,0,-52]) rotate([90,0,0]) cylinder(h=10, d= 105-10.1, center= true,$fn= 180);     
    

//for the nut
 translate([0,0,-50]) rotate([0,90,0]) cylinder(h=6.5,d= 16,center= true,$fn= 6);     
     
}   



difference(){
union(){

for(i=[0:35]){
translate([-50.5,0,-52]) rotate([0,0,90]) rotate([-12-i*2,0,0]) translate([0,-50.5+3.1,0]) cylinder(h=2, d= 10, center= true,$fn= 60);    
}


mirror([1,0,0]){
for(i=[0:35]){
translate([-50.5,0,-52]) rotate([0,0,90]) rotate([-12-i*2,0,0]) translate([0,-50.5+3.1,0]) cylinder(h=2, d= 10, center= true,$fn= 60);    
}   
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








difference(){
union(){
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 45, d=12, $fn = 90, center = true);
    
rotate([0,0,0]) translate([0,0,10]) cube([45,5,5], center = true);     
   
rotate([0,0,0]) translate([22.5-2.5,0,11.79+0.5]) cube([5,12,11], center = true);    
    
rotate([0,0,0]) translate([-22.5+2.5,0,11.79+0.5]) cube([5,12,11], center = true); 
 
 
 
    
}    
    
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 51, d=5.3, $fn = 180, center = true);   


//space for wheel
translate([0,0,18]) rotate([0,90,0]) cylinder(h = 25, d=25, $fn = 180, center = true);  



//empty center
rotate([0,0,0]) translate([0,0,15]) cube([25,20,20], center = true);  

translate([30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true);   

translate([-30,0,0]) rotate([0,90,0]) cylinder(h = 24, d=15, $fn = 180, center = true); 


} 




