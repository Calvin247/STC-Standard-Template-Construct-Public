




difference(){
    
union(){    
translate([0,0,-1]) cylinder(h = 40.25-1-6.25-10+20-1.75, d=6.25+10, $fn = 180, center = true); 



for(i=[-1])translate([i*(10),0,i*(12-0.5)]) rotate([90,0,0]) cylinder(h = 6.25+10, d=6.25+10, $fn = 180, center = true); 
    
for(i=[1])translate([i*(10+20),0,i*(12-0.5)]) rotate([90,0,0]) cylinder(h = 6.25+10, d=6.25+10, $fn = 180, center = true); 


for(i=[-1])translate([i*(5),0,i*(12-0.5)]) cube([10,6.25+10,6.25+10], center = true);

for(i=[1])translate([i*(5+10),0,i*(12-0.5)]) cube([30,6.25+10,6.25+10], center = true);


}
cylinder(h = 60, d=6.25, $fn = 180, center = true);

for(i=[-1])translate([i*(10),0,i*(12-0.5)]) rotate([90,0,0]) cylinder(h = 6.25+10+1, d=5.25, $fn = 180, center = true);
   
for(i=[1])translate([i*(10+20),0,i*(12-0.5)]) rotate([90,0,0]) cylinder(h = 6.25+10+1, d=5.25, $fn = 180, center = true);
}





//translate([0,55,-12]) cylinder(h = 6.25+10, d=6.25+10, $fn = 180, center = true);


//translate([0,22.5+6,-12]) cube([6.25+10,55,6.25+10], center = true);