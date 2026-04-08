//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);









//translate([35,0,0])smallGear();
//largeGear();
//gearboxBottom();

gearboxTop();

//spacer();




module spacer(){
    
    
difference(){    
translate([50,0,10])cylinder(h = 45, d=10, $fn = 180, center = true);  


translate([50,0,10])cylinder(h = 46, d=5.25, $fn = 180, center = true);  
}

}










module gearboxBottom(){

difference(){
union(){
    
 
    
 
translate([15,0,-10])cube([110,100,4], center = true);   
}


for(i=[0:1])mirror([0,i,0])translate([15,40,-10])cube([60,30,5], center = true);   
    
translate([-30,0,-10])cube([28,15,5], center = true); 

translate([70.5,0,-10])cube([25,15,5], center = true); 



for(i=[0,1])mirror([0,i,0])translate([60,40,0]) cylinder(h = 100, d=5.25, $fn = 180, center = true);
    
for(i=[0,1])mirror([0,i,0])translate([-30,40,0]) cylinder(h = 100, d=5.25, $fn = 180, center = true);




cylinder(h = 50, d=11, $fn = 180, center = true);
translate([35,0,0])cylinder(h = 50, d=11, $fn = 180, center = true);





//translate([35,0,0]) for(i=[0:3])rotate([0,0,45+i*90])translate([31,0,0]) cylinder(h = 50, d=5.25, $fn = 180, center = true);


for(i=[0:1])mirror([0,i,0])translate([0,36.5/2,0])cylinder(h = 80, d=5.25, $fn = 180, center = true);



translate([35,0,0])for(i=[0:3])rotate([0,0,i*90])translate([15.5,15.5,0])cylinder(h = 80, d=7, $fn = 180, center = true);


//holes for stepper motor screws
translate([15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 80, d=3, $fn = 180, center = true);

translate([-15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);



}






translate([35,0,-2]) rotate([90,0,0]){

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
translate([0,-50+5,0]) rotate([90,0,0]) cylinder(h = 30, d=23, $fn = 180, center = true); 





//holes for stepper motor screws
translate([15.5,-50+5,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,-50+5,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,-50+5,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([15.5,-50+5,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);





}


translate([0,-50+5,0]) rotate([0,0,0]){
difference(){
    
    
union(){    
//stepper motor plate
translate([0,0,0]) cube([42,5,42], center = true);


    
    
rotate([0,0,0]) translate([0,30-5-2-2,0]) cube([42+10,55-10-15,5+2], center = true);
  
rotate([0,90,0]) translate([0,30-5-2-2,0]) cube([42+10,55-10-15,5+2], center = true); 
    
    
//baseplate
//rotate([0,0,0]) translate([0,0,0]) rotate([90,0,0]) cube([50,23,5], center = true);    

}    
  


//middle hole in frame
translate([0,22.5,0]) rotate([90,0,0]) cylinder(h = 60, d1=23, d2=23, $fn = 180, center = true); 



//hole in bearing hole
//translate([0,50,0]) rotate([90,0,0]) cylinder(h = 15, d=25, $fn = 180, center = true); 



//holes for stepper motor screws
translate([15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);
 





//smoothing off 4 side walls
translate([0,30-5,0]){
difference(){
rotate([90,0,0]) translate([0,0,0]) cylinder(h = 55-10, d=50+10, $fn = 180, center = true);

rotate([90,0,0]) translate([0,0,0]) cylinder(h = 55-10, d2=26+16, d1=26+16-2, $fn = 180, center = true); 

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


  


module gearboxTop(){

difference(){
union(){
 
translate([15,0,30])cube([110,100,4], center = true);   
   
difference(){   
translate([35,0,24.5])cylinder(h = 7, d=22.25+8, $fn = 180, center = true);   

translate([35,0,24.5])cylinder(h = 7, d=22.25, $fn = 180, center = true);   

}





    
}


cylinder(h = 80, d=11, $fn = 180, center = true);



for(i=[0,1])mirror([0,i,0])translate([60,40,0]) cylinder(h = 100, d=5.25, $fn = 180, center = true);
    
for(i=[0,1])mirror([0,i,0])translate([-30,40,0]) cylinder(h = 100, d=5.25, $fn = 180, center = true);


translate([35,0,0])cylinder(h = 80, d=11, $fn = 180, center = true);


translate([0,0,0]) for(i=[0:2])rotate([0,0,90+i*90])translate([31,0,0]) cylinder(h = 80, d=6.25, $fn = 180, center = true);
    






for(i=[0:1])mirror([0,i,0])translate([15,52,30])cube([60,20,5], center = true);   
    
//translate([-30,0,30])cube([28,15,5], center = true); 

translate([70.5,0,30])cube([25,15,5], center = true); 



}

}





module smallGear(){

A=60;
B=120;


difference(){
union(){
    
translate([0,0,15])cylinder(h = 15, d=8.25+6, $fn = B, center = true);      
    
for(i=[0:10])rotate([0,0,i*360/11]) translate([7.02,0,0])cylinder(h = 15, d=2, $fn = A, center = true);

cylinder(h = 15, d=7.02*2, $fn = A, center = true);
}

for(i=[0:10])rotate([0,0,360/11/2+i*360/11]) translate([7.02,0,0])cylinder(h = 15, d=2.02, $fn = A, center = true);
    
translate([0,0,17.5])cylinder(h = 20+40, d=8.25, $fn = A, center = true);  


//m3 holes
translate([0,0,11])rotate([90,0,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  

translate([0,0,18])rotate([0,90,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  
}

}
























module largeGear(){
A=60;
B=120;


difference(){
union(){
    
translate([0,0,15])cylinder(h = 15, d=8.25+6, $fn = B, center = true);    
    
    
for(i=[0:43])rotate([0,0,i*360/11/4]) translate([28,0,0])cylinder(h = 15, d=2, $fn = A, center = true);

cylinder(h = 15, d=28*2, $fn = B, center = true);
}

for(i=[0:43])rotate([0,0,360/11/4/2+i*360/11/4]) translate([28,0,0])cylinder(h = 16, d=2.01, $fn = A, center = true);
    
cylinder(h = 21+40, d=8.25, $fn = A, center = true);





//m3 holes
translate([0,0,11])rotate([90,0,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  

translate([0,0,18])rotate([0,90,0]) cylinder(h = 15, d=3.2, $fn = B, center = true);  

}

}
 