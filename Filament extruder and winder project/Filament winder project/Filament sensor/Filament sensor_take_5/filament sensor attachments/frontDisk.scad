
A = 90; //large circle resolution
B = 30; //Small circle resolution




/*

////////////////////////////////////
//back circle wall 
////////////////////////////////////

difference(){
union(){    
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=40, $fn = 90, center = true); 


}
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=10, $fn = 45, center = true);
    
for(i=[0:3]) rotate([-i*90,0,0]) translate([-2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=6.5, $fn = 6, center = true);   
    
for(i=[0:3]) rotate([-i*90,0,0]) translate([2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 10, d=3.2, $fn = 30, center = true);

}




*/







rotate([-45,0,0])for(i=[0:1]) for(j=[0:1]) mirror([0,i,j]){

////////////////////////////////////
//back circle wall 
////////////////////////////////////

difference(){
union(){    
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=40, $fn = A, center = true); 


}
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=10+4, $fn = B, center = true);
    
for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([-2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=6.5, $fn = 30, center = true);   
    
for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 20, d=3.2, $fn = B, center = true);
    

translate([0,-25,0]) rotate([0,0,0]) cube([120,50,80], center = true); 

translate([0,0,40]) rotate([0,0,0]) cube([120,50,80], center = true); 

}}







 

for(i=[0:1]) rotate([45,0,0]) translate([0,0,-8.5])  mirror([0,i,0]){


difference(){
translate([0,29,0]) rotate([0,0,-180]){
difference(){
    
union(){    
translate([0,0,0]) rotate([0,0,0]) translate([0,0,0]) translate([0,12,0]) cube([10,16+20,17], center = true);
rotate([0,0,0]) translate([0,0,0]) cylinder(h = 22, d=17, $fn = 180, center = true);      
}    

rotate([0,0,0]) translate([0,0,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);
 
//translate([0,18-1,5-1]) rotate([0,90,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);



translate([-15.5-17,0,-20+17]) cube([17,22,50], center = true);
}  
}

translate([-17,0,17]) cube([17,22,50], center = true);



//for(i=[0:3]) rotate([-i*90,0,0]) translate([-2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 12, d=6.5, $fn = 6, center = true);  



translate([10,0,8.5]) rotate([0,90,0]) cylinder(h = 10, d=40, $fn = 90, center = true); 


for(i=[0:3]) rotate([-i*90,0,0]) translate([2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 10, d=3.2, $fn = 30, center = true);



translate([0,0,5]) rotate([0,90,0]) cylinder(h = 15, d=30, $fn = 45, center = true);



 

translate([0,0,30]) rotate([0,0,0]) cube([120,17,80], center = true); 

}





}



