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
     

//translate([0,0,3])cylinder(h = 1, d=60, $fn = 20, center = true);   
     
     
//translate([0,0,0])cylinder(h = 100, d=16, $fn = 20, center = true);    

     

//translate([8-(0.39156),(2.47218),0])cylinder(h = 50, d=0.1, $fn = 20, center = true); 


SpiralPoints = [
    [8,0,0],    //0
    [30,0,0],   //1
    [8,0,5],    //2
    [30,0,5],   //3
    
    [8-(0.39156),(2.47218),1],      //4
    [30-(1.468),(9.27),1],          //5
    [8-(0.39156),(2.47218),6],      //6
    [30-(1.468),(9.27),6],          //7
    

    
];    
  
SpiralFaces = [
    [0,1,3,2],  //left
    [4,5,7,6],  //right
    [2,3,7],  //top left
    [2,7,6],  //top right
    
    [0,1,5],  //bottom left
    [0,4,5],  //bottom left
    [0,2,6,4],  //back   
    [1,3,7,5]   //front

];






SpiralPoints2 = [
    [8,0,0],    //0
    [30,0,0],   //1
    [8,0,5],    //2
    [30,0,5],   //3
    
    [8-(0.39156),(2.47218),1],      //4
    [30-(1.468),(9.27),1],          //5
    [8-(0.39156),(2.47218),6],      //6
    [30-(1.468),(9.27),6],          //7
    

    
];    
  
SpiralFaces2 = [
    [0,1,3,2],  //left
    [4,5,7,6],  //right
    [2,3,7],  //top left
    [2,7,6],  //top right
    
    [0,1,5],  //bottom left
    [0,4,5],  //bottom left
    [0,2,6,4],  //back   
    [1,3,7,5]   //front

];



 
  
for(i=[0:50])translate([0,0,i*1])rotate([0,0,i*18])polyhedron(SpiralPoints, SpiralFaces);  







    






     
     
     