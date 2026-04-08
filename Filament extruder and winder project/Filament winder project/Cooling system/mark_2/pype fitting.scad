//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){




difference(){
union(){    
cube([17.5,50,17.5], center = false);
    
translate([-2.5/2,-2,-2.5/2])cube([20,2,20], center = false);    
}
translate([0,20.5,17.5/2])rotate([0,90,0])cylinder(h = 20, d=8.25, $fn = 180, center = false);

}
 