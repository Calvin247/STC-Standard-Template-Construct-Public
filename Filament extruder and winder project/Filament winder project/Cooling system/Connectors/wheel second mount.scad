
difference(){
    
union(){    
translate([0,0,-0.95]) cylinder(h = 20-1.9, d=6.25+10, $fn = 180, center = true); 



for(i=[-1])translate([i*(10),0,0]) rotate([90,0,0]) cylinder(h = 6.25+10, d=6.25+10, $fn = 180, center = true); 


for(i=[-1])translate([i*(5),0,0]) cube([10,6.25+10,6.25+10], center = true);


}
cylinder(h = 60, d=6.25, $fn = 180, center = true);

   
for(i=[-1])translate([i*(10),0,0]) rotate([90,0,0]) cylinder(h = 6.25+10+1, d=5.25, $fn = 180, center = true);
 
}
