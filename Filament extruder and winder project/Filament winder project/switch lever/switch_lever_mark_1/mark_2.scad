//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);





//translate([0,4.75,1.5]) cube([28.5,20,11], center = true);



translate([0,0,-0.9]) difference(){

//lever baseplate (actual size of its bottom)
cube([28.5,6.5+4,1.8], center = true);

for(i=[-1:1])translate([i*4.5,0,0])cylinder(h = 1.8, d1=1.25, d2=4-0.4*(i*i), $fn = 180, center = true);
    
//cube([10,0.03,2], center = true); 

    
}   





difference(){
translate([0,0,7/2]) cube([28.5,6.5+4,7], center = true);
 
translate([0,0,7/2]) cube([12.5+0.5,6.5+0.5,7], center = true);    
    
}    




difference(){
translate([0,0,-2.8]) cube([28.5,6.5+4,2], center = true);

for(i=[-1:1])translate([i*4.5,0,-8.8]) cube([3,3,15], center = true);

}






for(j=[-1:1]) translate([j*9.5,10,1.5]){

//Led frame
difference(){

cylinder(h = 11, d=6.5+3, $fn = 180, center = true);
    
translate([0,0,1]) cylinder(h = 9, d=6.5, $fn = 180, center = true);    
    
for(i=[-1,1]) translate([i*(2.5/2),0,0]) cylinder(h = 14, d=1.25, $fn = 180, center = true);      
   

translate([0,0,4.5]) cylinder(h = 2, d1=6.5, d2=6.5+3, $fn = 180, center = true); 

//cube([6.5,0.03,15], center = true); 
    
}}  



