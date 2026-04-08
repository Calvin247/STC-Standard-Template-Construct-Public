//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);




difference(){
translate([0,0,0])cube([17,17,17+17+17], center = true);
rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
 
 
translate([0,0,-17])rotate([90,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);    
    
    
translate([0,0,17])rotate([90,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);     
}    


difference(){
//translate([0,0,-17])cube([17,17,17], center = true);
//translate([0,0,-17])rotate([90,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
    
} 


/*
difference(){
translate([18,0,25]) rotate([-15,0,90]){
difference(){
    
union(){    
rotate([0,0,0]) translate([0,14,5]) cube([17,28,17], center = true);
//rotate([0,25,0]) translate([0,0,5]) cylinder(h = 25, d=17, $fn = 180, center = true);      
}    

//rotate([0,25,0]) translate([0,0,5]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
 
translate([0,18-0.5,5-1]) rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);



translate([-15.5-17,0,-20+17]) cube([17,22,50], center = true);
}  
}

translate([-17,0,17]) cube([17,22,50], center = true);

translate([17,0,17]) cube([17,22,50], center = true);

translate([0,0,56.87]) cube([17,22,50], center = true);

}

*/












rotate([0,0,90])translate([0,40,-50+17+17]) {
/////////////////////////
//Cylinder on top
////////////////////////
    
difference(){     

union(){    
    
   
    
translate([0,-40,50]) rotate([90,90,0]) resize([15+2,21+12,17]) cylinder(h = 15, d=30, $fn = 180, center = true);   
 
 
rotate([0,0,0]) translate([0,-40,40]) cube([17,17,20], center = true);    
 
}

translate([0,-40,50]) rotate([90,0,0]) cylinder(h = 20, d=8.25, $fn = 180, center = true); 


///////////////////////////

//M3 nut
rotate([0,0,0]) translate([6,-40,50]) rotate([0,90,0]) cylinder(h = 8, d=7-0.5, $fn = 6, center = true);

//M3 hole
rotate([0,0,0]) translate([10,-40,50]) rotate([0,90,0]) cylinder(h = 20, d=3.2, $fn = 30, center = true);


translate([0,-40,+50-17])rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);

//side smoothing
translate([-17,-40,50-17-17])cube([17,17+1,17+17+17+34], center = true);


}




}


