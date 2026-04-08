//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);


//mirror([0,0,1])finTop();
//mirror([0,0,1])finBottom();
PypeGuide();


module PypeGuide(){
difference(){
    
union(){    
translate([0,9,0])cube([40,60-18,12], center = true);
    
translate([-40,25,0])cube([40,10,12], center = true); 
 
translate([-50,25,0])rotate([90,0,0])cylinder(h = 10, d=30+29, $fn = 180, center = true);  
  
//weight wheel    
    
translate([0,25,45])rotate([90,0,0])cylinder(h = 10, d=38, $fn = 180, center = true);  


translate([0,25,45])rotate([0,58,0])translate([0,0,-25])cube([25,10,48], center = true);    

}  


//m3 holes to connect fins
for(i=[-1,1])translate([i*10,22,0])rotate([0,0,0])cylinder(h = 30, d=3.25, $fn = 180, center = true); 


 translate([-50,25,0])rotate([90,0,0])cylinder(h = 11, d=5.25, $fn = 180, center = true);   

for(i=[-1,1])translate([-50+i*12,25,0])rotate([90,0,0])cylinder(h = 11, d=5, $fn = 180, center = true); 
 
    
translate([0.5,-15+13+1,0])rotate([0,90,0])cylinder(h = 40, d=2.25, $fn = 180, center = true);    

translate([0,-15+13+1,0])rotate([0,90,0])cylinder(h = 60, d=2, $fn = 180, center = true);  
    
translate([0,-25+13,0])cube([70,40+5,1.25], center = true);  
   
   
//m3 nuts 
    
for(i=[0,1])mirror([i,0,0])translate([10,-25+18,3.5+3])rotate([0,0,30]) cylinder(h = 6, d=7, $fn = 6, center = true);    
    

for(i=[0,1])mirror([i,0,0])translate([10,-25+18,-3.5-3])cylinder(h = 6, d=6, $fn = 30, center = true); 
    
for(i=[0,1])mirror([i,0,0])translate([10,-25+18,0])cylinder(h = 20, d=3.25, $fn = 30, center = true); 


//hole for weights
translate([-0,25,45])rotate([90,0,0])cylinder(h = 11, d=8.25, $fn = 180, center = true); 

}   
}







module finBottom(){

difference(){
    
union(){    
translate([75/2,-15+13+1,-25/2])cube([40+75,2,25], center = true);   
    
    
//Plate for m3 skrews
translate([0,15,-8.5-0.25])cube([40,30,5], center = true);    


//bottom supports
difference(){ 
for(i=[-1:1])translate([i*17.5,15,-15])cube([5,30,20], center = true); 

translate([15,25,-30.05])rotate([24.5,0,0])cube([80,50,30], center = true); 


translate([0,15,-8.5-0.25+5])cube([40,30,5], center = true);  
}    
}


//m3 holes to connect fins
for(i=[-1,1])translate([i*10,22,0])rotate([0,0,0])cylinder(h = 50, d=3.25, $fn = 180, center = true); 
    
//m3 holes to connect fins
for(i=[-1,1])translate([i*10,22,-9.5-0.25])rotate([0,0,0])cylinder(h = 3, d=6, $fn = 180, center = true); 


//center empying
translate([0,-15+13+1,0])cube([40+0.5,3,12+0.5], center = true); 


//pype hole
translate([50,-15+13+1,0])rotate([0,90,0])cylinder(h = 130, d=2.25, $fn = 180, center = true);  
    
    
    
//top elimination
//translate([75/2,-15+13+1,40])rotate([0,12.9,0])cube([150,3,50], center = true);      
 
}    
}    





module finTop(){
    
    
difference(){ 
 
union(){    
translate([75/2,-15+13+1,25/2])cube([40+75,2,25], center = true);     

//m3 plate
translate([0,15,8.5+0.25])cube([40,30,5], center = true);  

}
    
//top slanting
translate([50,-15+13+1,25/2+7.6])rotate([0,8,0])cube([150,3,25], center = true);  

//pype hole
translate([50,-15+13+1,0])rotate([0,90,0])cylinder(h = 130, d=2.25, $fn = 180, center = true);  

//center empying
translate([0,-15+13+1,0])cube([40+0.5,3,12+0.5], center = true); 


//m3 holes to connect fins
for(i=[-1,1])translate([i*10,22,0])rotate([0,0,0])cylinder(h = 50, d=3.25, $fn = 180, center = true); 

}    
}    
