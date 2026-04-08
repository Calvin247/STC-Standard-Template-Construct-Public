//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){
//import("asd.stl");

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

machine();    
//outerShell();
//innerShell();
//nozzle();



module machine(){
difference(){
union(){    
translate([-17.5+5,0,0])rotate([0,90,0])cylinder(h = 35, d=51.5, $fn = 180, center = true);   
    
translate([-35+2.5,0,0])rotate([0,90,0])cylinder(h = 5, d=70, $fn = 180, center = true);     



}
translate([2.5,0,0])rotate([0,90,0])cylinder(h = 5, d=30+0.5, $fn = 180, center = true);


translate([2.5,0,0])rotate([0,90,0])cylinder(h = 100, d=20, $fn = 180, center = true);



}
    
}




module outerShell(){     

difference(){     
union(){     
//Octogon     
//translate([0,0,0])cylinder(h = 25, d=88, $fn = 180, center = true); 
translate([0,0,0])rotate([0,90,0])rotate([0,0,22])cylinder(h = 25, d=95.25, $fn = 8, center = true); 
    
//Back    
translate([-(25+17)/2,0,0])rotate([0,90,0])cylinder(h = 17, d=72, $fn = 180, center = true);     
    
//Mid    
translate([(25+15)/2,0,0])rotate([0,90,0])cylinder(h = 15, d=72, $fn = 180, center = true);  


//Front    
translate([(25+15)/2+7.5+25,0,0])rotate([0,90,0])cylinder(h = 50, d1=72, d2=50, $fn = 180, center = true);     
     
} 
//Octogon Elimination
translate([0,0,0])rotate([0,90,0])rotate([0,0,22])cylinder(h = 25, d=51.5+0.5, $fn = 180, center = true); 

//Back elimination   
translate([-(25+17)/2,0,0])rotate([0,90,0])cylinder(h = 17, d=51.5+0.5, $fn = 180, center = true); 

//Mid elimination   
translate([(25+15)/2,0,0])rotate([0,90,0])cylinder(h = 15, d=30+0.5, $fn = 180, center = true);  


//Front elimination   
translate([(25+15)/2+7.5+25,0,0])rotate([0,90,0])cylinder(h = 50, d=30+0.5, $fn = 180, center = true); 



}
}



module innerShell(){

difference(){    
union(){
//left most insert    
translate([2.5,0,0])rotate([0,90,0])cylinder(h = 5, d=30, $fn = 180, center = true);
 
//middle insert 
translate([5+4,0,0])rotate([0,90,0])cylinder(h = 8, d=51.5, $fn = 180, center = true);    
    
//right insert    
translate([5+8+33,0,0])rotate([0,90,0])cylinder(h = 66, d=30, $fn = 180, center = true); 
 
//right slating    
translate([5+8+66+1,0,0])rotate([0,90,0])cylinder(h = 2, d1=30, d2=26, $fn = 180, center = true);    
    
} 
//left most insert elimination    
translate([2.5,0,0])rotate([0,90,0])cylinder(h = 5, d=20, $fn = 180, center = true);

//20mm -> 10mm
translate([5+15,0,0])rotate([0,90,0])cylinder(h = 30, d1=20, d2=10, $fn = 180, center = true);

//10mm straight    
translate([5+30+11.5,0,0])rotate([0,90,0])cylinder(h = 23, d=10, $fn = 180, center = true);

//nozzle hole
translate([5+30+23+13,0,0])rotate([0,90,0])cylinder(h = 26, d=18, $fn = 180, center = true);

}      
}    


module nozzle(){

difference(){    
union(){
//nozzle left side
translate([5+30+23+13,0,0])rotate([0,90,0])cylinder(h = 26, d=18-0.5, $fn = 180, center = true);

//nozzle hexagon    
translate([5+30+23+26+5,0,0])rotate([0,90,0])cylinder(h = 10, d=24, $fn = 6, center = true);   
   
//nozzle end    
translate([5+30+23+26+10+2,0,0])rotate([0,90,0])cylinder(h = 4, d1=20.5, d2=5, $fn = 180, center = true);   

}    
 
//10->3
translate([5+30+23+10,0,0])rotate([0,90,0])cylinder(h = 20, d1=10, d2=3, $fn = 180, center = true);

//3mm straight
translate([5+30+23+20+10,0,0])rotate([0,90,0])cylinder(h = 20,d=3, $fn = 180, center = true);
}
    
    
}










//for(i=[0:1000])rotate([1.1*i,0,0])translate([i/150,0,27.5])rotate([90,0,0])rotate([0,0,10])cylinder(h = 1, d=2, $fn = 10, center = true);
     