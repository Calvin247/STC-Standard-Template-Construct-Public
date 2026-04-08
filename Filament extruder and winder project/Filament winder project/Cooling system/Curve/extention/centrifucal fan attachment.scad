

A=0; 

translate([0,0,-12+0.2-3.5-A])rotate([0,0,0]){
difference(){
union(){    
difference(){

////////////////////////////////////
//the baseplate
//////////////////////////////////
    
  
    translate([0,0,-1.5]) cube([121-4,121-32.4,6], center = true); 
 
    
    translate([0,0,0]) cube([66+0.5,66+0.5,3], center = true);
    
    translate([0,0,-3]) cube([60,60,4], center = true);
    
    
//////////////////////////////////    
//cutting of the edges of the baseplate
//////////////////////////////////
    
    translate([53+2.5,53+2.5-32.4/2,-1.5]) cube([16,16,7], center = true);

    translate([53+2.5,-53-2.5+32.4/2,-1.5]) cube([16,16,7], center = true);

    translate([-53-2.5,53+2.5-32.4/2,-1.5]) cube([16,16,7], center = true);

    translate([-53-2.5,-53-2.5+32.4/2,-1.5]) cube([16,16,7], center = true);

    }   
////////////////////////////////////
//inseting smooth edges of the baseplate
////////////////////////////////////

    translate([-48+2,-48+32.4/2,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([-48+2,48-32.4/2,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([48-2,-48+32.4/2,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([48-2,48-32.4/2,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    }

/////////////////////////////////////
//inserting corner hols for the baseplate
////////////////////////////////////

    translate([48-2,48-32.4/2-5,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([48-2,-48+32.4/2+5,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([-48+2,48-32.4/2-5,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([-48+2,-48+32.4/2+5,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);
    
//////////////////////////////////
//airflow hole in basplate    
//////////////////////////////////
    
cube([60,60,4], center = true);
  
   
}


////////////////////////////////
//bottom bolts
///////////////////////////////
    
difference(){ 
    
//bottom  
for(j=[0:1]){
mirror([0,j,0]){ 
for(i=[0:1]){
mirror([i,0,0]){    
difference(){    
translate([-28+10.25-10.25,-37-1.5,-5.575-1+15.3]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 10, d=20, $fn = 6, center = true);    

translate([-28+10-10,-37-1.5,-5.575-1+15.3]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 11, d=3.25, $fn = 30, center = true);

translate([-28+10.25-10.25,-37-1.5,-5.575-1+15.3]) rotate([0,90,0]) rotate([0,0,30]) translate([0,0,-2]) cylinder(h = 6, d=6, $fn = 30,    center = true);    
}}}}}

cube([69,66.5,50], center = true);

translate([0,-47,79-(-12+0.2-3.5)]) rotate([0,90,0]) cylinder(h=66+1, d=160+1, $fn = 180, center = true);

} 
///////////////////////////////////////////////////////////

}

    
/////////////////////////////////////////////////////////// 

