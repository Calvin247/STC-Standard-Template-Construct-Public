//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){
//import("asd.stl");

//sphere(2, $fn=100); 

//linear_extrude(height = 10)text("asd",10);


/*
linear_extrude(height=100,twist=360,$fn=360) 
translate([45,0,0])
rotate([0,0,9])
square([5,15]);

rotate_extrude(angle = 270, $fn=30)
translate([10,0,0])square([10,5]);
*/

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


//Total rendering time: 0:20:34.445
//20 minutes



difference(){
union(){
translate([0,0,8])cylinder(h = 120, d=16, $fn = 90, center = false);


intersection(){
for(i=[0:1230])rotate([0,0,i*1])translate([25,0,2.5+i*0.1])cube([50,1,5], center = true);
    
rotate_extrude(angle = 360, $fn=30)polygon(points=[[8,8],[8,128],[50,128]]);
}

}

cylinder(h = 140, d=8.25, $fn = 90, center = false);


translate([0,0,122])rotate([0,90,30])cylinder(h = 50, d=3.25, $fn = 30, center = true);

translate([0,0,16])rotate([0,90,30])cylinder(h = 50, d=3.25, $fn = 30, center = true);

}





