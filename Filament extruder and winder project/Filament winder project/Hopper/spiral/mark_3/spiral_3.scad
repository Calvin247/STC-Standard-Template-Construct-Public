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


for(i=[0:80]){
 
for(j=[0])rotate([0,0,i*4.5])translate([5+j*10,0,i*1])rotate([70,0,0])cube([10,5,5], center = true); 
 
for(j=[1])rotate([0,0,i*4.5])translate([5+j*10,0,i*1])rotate([42,0,0])cube([10,5,5], center = true); 
 
for(j=[2])rotate([0,0,i*4.5])translate([5+j*10,0,i*1])rotate([28,0,0])cube([10,5,5], center = true);
 
for(j=[3])rotate([0,0,i*4.5])translate([5+j*10,0,i*1])rotate([20.5,0,0])cube([10,5,5], center = true);    
 
for(j=[4])rotate([0,0,i*4.5])translate([5+j*10,0,i*1])rotate([16,0,0])cube([10,5,5], center = true); 
 
for(j=[5])rotate([0,0,i*4.5])translate([5+j*10,0,i*1])rotate([13,0,0])cube([10,5,5], center = true);    
}     
 
 
 
 
 