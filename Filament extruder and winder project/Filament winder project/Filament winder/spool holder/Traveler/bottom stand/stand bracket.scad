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
    
   
    
translate([0,-40,50]) rotate([90,0,0]) resize([15+2,21+12,17]) cylinder(h = 15, d=30, $fn = 180, center = true);   
 
 
rotate([0,0,0]) translate([0,-40,40]) cube([17,17,20], center = true);    

//translate([0,-45,25+5+5]) cube([15+27,5,50-10-10], center = true); 


difference(){    
//translate([0,-17.5,25]) cube([7,50,25], center = true);     
    
//translate([0,7,58]) rotate([0,90,0]) cylinder(h = 10, d=91, $fn = 180, center = true);        
}    
}

translate([0,-40,50]) rotate([90,0,0]) cylinder(h = 20, d=8.25, $fn = 180, center = true); 


///////////////////////////

//M3 nut
translate([0,-40,60]) rotate([0,0,0]) cylinder(h = 20, d=3.2, $fn = 30, center = true);

//M3 hole
translate([0,-40,50+6]) rotate([0,0,0]) cylinder(h = 8, d=7-0.5, $fn = 6, center = true);


//smoothing of cube 
//translate([21,-40-5,50]) rotate([90,0,0]) resize([15+12,21+12+25,15]) cylinder(h = 15, d=30, $fn = 180, center = true); 

//translate([-21,-40-5,50]) rotate([90,0,0]) resize([15+12,21+12+25,15]) cylinder(h = 15, d=30, $fn = 180, center = true); 

//stepper cube smoothing
for(i=[0:3]){ 
//translate([0,-45,0]) rotate([0,45+i*90,0]) translate([0,0,35.3]) cube([10,6,15], center = true);   
}


translate([0,-40,+50-17])rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true); 



}



}


