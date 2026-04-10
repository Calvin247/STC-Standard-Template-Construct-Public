difference(){
translate([0,0,-5]) rotate([0,90,0])  cylinder(h=3, d=50, $fn = 180, center = true);
    
translate([0,0,0-5]) rotate([0,90,0]) cylinder(h=55, d=15, $fn = 180, center = true);    

for(i=[0:3]){
translate([0,0,0-5]) rotate([0,90,0]) rotate([0,0,45+90*i]) translate([0,17,0]) cylinder(h=5, d=3, $fn = 180, center = true);
    
}    
}