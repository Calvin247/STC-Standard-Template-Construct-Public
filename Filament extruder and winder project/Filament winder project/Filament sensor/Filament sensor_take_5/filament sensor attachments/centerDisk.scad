


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
    

    
for(i=[0:3]) rotate([-i*90,0,0]) translate([0,12.5,0]) rotate([0,90,0]) cylinder(h = 11, d=3.2, $fn = 30, center = true);

}


*/




for(i=[0:1]) for(j=[0:1]) mirror([0,i,j]){

////////////////////////////////////
//back circle wall 
////////////////////////////////////

difference(){
union(){    
translate([38.5+2.5,0,0]) rotate([0,90,0]) cylinder(h = 10, d=40, $fn = A, center = true); 


}
translate([38.5+2.5,0,0]) rotate([0,90,0]) cylinder(h = 10, d=10+4, $fn = B, center = true);
    
//for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([38.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=6, $fn = B, center = true);   
    
for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([43.5,12.5,0]) rotate([0,90,0]) cylinder(h = 20, d=3.2, $fn = B, center = true);
    

translate([0,-25,0]) rotate([0,0,0]) cube([120,50,80], center = true); 

translate([0,0,40]) rotate([0,0,0]) cube([120,50,80], center = true); 

}}