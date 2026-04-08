//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){




difference(){
cube([145,18,18], center = true);

for(i=[-1,1])translate([i*20,0,0])cylinder(h = 20, d=5.2, $fn = 180, center = true);
    
for(i=[-1,1])translate([i*124.5/2,0,0])cylinder(h = 20, d=4.2, $fn = 180, center = true);

} 