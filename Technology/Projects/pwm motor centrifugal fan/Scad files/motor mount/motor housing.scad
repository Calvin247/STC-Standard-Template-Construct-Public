
difference(){ 
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=6, d1=34,d2=20, $fn = 90, center = true);    
    
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=12, d=5+0.5, $fn = 90, center = true); 
} 

//nut holder
translate([9,0,0]){   
difference(){ 
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=12, d=20, $fn = 90, center = true);    
    
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=13, d=9+0.5, $fn = 6, center = true); 
}
}

//middle part
difference(){ 
translate([13,0,-5]) rotate([0,90,0])  cylinder(h=6, d=34, $fn = 90, center = true);    
    
translate([13,0,-5]) rotate([0,90,0])  cylinder(h=7, d=17+0.5, $fn = 90, center = true); 
}


//inner cone

difference(){ 
translate([8,0,-5]) rotate([0,90,0])  cylinder(h=4, d=34, $fn = 90, center = true);    
    
translate([8,0,-5]) rotate([0,90,0])  cylinder(h=4, d2=17+0.5,d1=28+0.5, $fn = 90, center = true); 
}



//Back part

difference(){ 
translate([-2,0,-5]) rotate([0,90,0])  cylinder(h=16, d=34, $fn = 90, center = true);    
    
translate([-2,0,-5]) rotate([0,90,0])  cylinder(h=17, d=28+0.5, $fn = 90, center = true); 
}



