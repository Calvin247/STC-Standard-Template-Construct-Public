//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);



difference(){
union(){    
translate([0,0,-5-10]) cylinder(h = 13+10 , d=33-0.5, $fn = 180, center = false);
    
    
}
//translate([0,0,-5]) cylinder(h = 30, d=33-6, $fn = 180, center = false);  


translate([0,0,2.5]) rotate([0,90,45]) cylinder(h = 50, d=3.23, $fn = 180, center = true); 

translate([0,0,0]) cylinder(h = 50, d=8, $fn = 180, center = true);

translate([0,0,2.5]) rotate([0,90,45]) rotate([0,0,30])translate([0,0,19-5]) cylinder(h = 6, d=7-0.5, $fn = 6, center = true); 

 translate([0,0,2.5]) rotate([0,-90,45]) translate([0,0,19-5]) cylinder(h = 6, d=6, $fn = 30, center = true);

//bottom nut hole
translate([0,0,2.5-11]) rotate([0,90,45+90]) rotate([0,0,30]) translate([0,0,19-5]) cylinder(h = 6, d=7-0.5, $fn = 6, center = true);

translate([0,0,2.5-11]) rotate([0,90,45+90]) cylinder(h = 50, d=3.23, $fn = 180, center = true); 

translate([0,0,2.5-11]) rotate([0,-90,45+90]) translate([0,0,19-5]) cylinder(h = 6, d=6, $fn = 30, center = true);
////


 translate([0,0,2.5]) rotate([0,-90,45]) translate([0,0,19-5]) cylinder(h = 6, d=6, $fn = 30, center = true);
}





difference(){
union(){
difference(){
union(){    
//cylinder(h = 10, d=33-0.5, $fn = 180, center = false);
translate([0,0,-5]) cylinder(h = 5, d=124+5, $fn = 180, center = false);     
    
}
translate([0,0,-5]) cylinder(h = 30, d=33-6, $fn = 180, center = false);    



translate([0,0,-5.1]) cube([120,120,7], center = false);   
    
rotate([0,0,180]) translate([0,0,-5.1]) cube([120,120,7], center = false);  
    
}  



difference(){
translate([0,0,0]) cylinder(h = 8, d=123, $fn = 180, center = false); 

translate([0,0,-1]) cylinder(h = 30, d=33+8, $fn = 180, center = false);  
 
translate([0-2.5-0.5,0-2.5-0.5,-1]) cube([120,120,10], center = false);   
    
rotate([0,0,180]) translate([0-2.5-0.5,0-2.5-0.5,-1]) cube([120,120,10], center = false);  
    
    
}    

}

  translate([0,0,-0.5]){
difference(){
translate([0,0,0]) cylinder(h = 9, d=124-5-1, $fn = 180, center = false); 

translate([0,0,-1]) cylinder(h = 30, d=33+8+5, $fn = 180, center = false);  
 
translate([0-5-0.5,0-5-0.5,-1]) cube([120,120,12], center = false);   
    
rotate([0,0,180]) translate([0-5-0.5,0-5-0.5,-1]) cube([120,120,12], center = false);  
    
    
}} 



}



//////////////////////////////////////////////////////////
//Bottom supports
//////////////////////////////////////////////////////////////

difference(){
union(){
mirror([0,1,0]) translate([0,5,-15]) cube([5,60,10], center = false);

mirror([1,0,0]) translate([0,5,-15]) cube([5,60,10], center = false);

mirror([1,1,0]) mirror([0,1,0]) translate([0,5,-15]) cube([5,60,10], center = false);

mirror([1,1,0]) mirror([1,0,0]) translate([0,5,-15]) cube([5,60,10], center = false);


for(i=[1,3,9,11]) rotate([0,0,22.5*i]) translate([0,35,-10]) cube([5,60,10], center = true);
}   


difference(){
translate([0,0,-15]) cylinder(h = 10, d=124+5+10, $fn = 180, center = false);  

translate([0,0,-15]) cylinder(h = 10, d1=33-0.5, d2=124+5, $fn = 180, center = false);  
    
}  



//bottom nut hole
translate([0,0,2.5-11]) rotate([0,90,45+90]) rotate([0,0,30]) translate([0,0,19-5]) cylinder(h = 6, d=7-0.5, $fn = 6, center = true);

translate([0,0,2.5-11]) rotate([0,90,45+90]) cylinder(h = 50, d=3.23, $fn = 180, center = true); 

translate([0,0,2.5-11]) rotate([0,-90,45+90]) translate([0,0,19-5]) cylinder(h = 6, d=6, $fn = 30, center = true);
////


}
  

/////////////////////////////////////////////////////////////////