//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){
//import("asd.stl");

//sphere(2, $fn=100); 

/*

CubePoints = [
  [  0,  0,  0 ],  //0
  [ 10,  0,  0 ],  //1
  [ 10,  7,  0 ],  //2
  [  0,  7,  0 ],  //3
  [  0,  0,  5 ],  //4
  [ 10,  0,  5 ],  //5
  [ 10,  7,  5 ],  //6
  [  0,  7,  5 ]]; //7
  
CubeFaces = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left
  
polyhedron( CubePoints, CubeFaces );
     
*/     
     
     
     
difference(){     
union(){     
cylinder(h = 16, d=28, $fn = 180, center = true);     
 

translate([7,0,0])cube([14,28,16], center = true);
    
     
translate([14,0,0])rotate([90,0,0])cylinder(h = 28, d=16, $fn = 180, center = true);

}

cylinder(h = 20, d=12.25, $fn = 180, center = true); 

translate([14,0,0])rotate([90,0,0])cylinder(h = 30, d=8.25, $fn = 180, center = true);
}



