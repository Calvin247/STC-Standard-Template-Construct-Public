difference(){
union(){

difference(){   
translate([0,0,-2]) cube([30+6,60+6,24], center = true);
 
       
translate([0,0,-2]) cube([30,60,25], center = true);
}




/////////////////////////////////////////////////////////////
//Top connectors
/////////////////////////////////////////////////////////////

translate([0,0,-125+20]){
for(j=[0:1]) mirror([j,0,0]){
for(i=[0:1]) mirror([0,i,0]){
difference(){  
union(){    
translate([28,-28+10.25,107.5+17.5]) cube([20,10,20], center = true);
translate([23.34,-28+10.25,107.5+9.41+2.5]) translate([-6.5,0,-14]) rotate([0,40,0]) cube([20,10,45], center = true);


}


//wall inner tolarence
translate([28-20+0.25,-28+10.25,107.5+17.5]) cube([20,10+2,20], center = true);

translate([28,-28+10.25,107.5+15+2.5]) rotate([90,0,0]) cylinder(h = 16, d=6.25, $fn = 180, center = true);

//hexagon
translate([28,-2.5-28+10.25+5,107.5+15+2.5]) rotate([90,0,0]) cylinder(h = 5, d=12, $fn = 6, center = true);

translate([0,0,0]) cube([36,80,300], center = true);

translate([28+20,-28+10.25,107.5+15+2.5]) cube([20,20,30], center = true);





}
}
}
}





/////////////////////////////////////////////////////////////
//Top insert
/////////////////////////////////////////////////////////////


translate([0,0,11.5]){
difference(){
union(){    
translate([0,0,0]) cube([30-0.25,60-0.25,3], center = true);
    

 
//short walls    
difference(){
for(i=[0:1])mirror([0,i,0])translate([0,28.5,-6.5]) cube([30,3,10], center = true);  

for(i=[0:1])mirror([0,i,0])translate([0,28.5,-6.5]) rotate([90-73.5,0,0]) translate([0,-5.0,0]) cube([30,10,15], center = true); 
}  
   
   
   
    
//long walls    
difference(){
for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,-6.5]) cube([3,60,10], center = true); 

for(i=[0:1])mirror([i,0,0])translate([13.5,0,-6.5]) rotate([0,73.5,0]) translate([0,0,-10]) cube([24,60,20], center = true); 
}  
}

translate([0,0,0]) cube([30-6,60-6,40], center = true);



}

}











/*



translate([0,0,-120]) rotate([180,0,0]){




A=50; 

translate([0,0,-12+0.2-3.5-A]){
difference(){
union(){    
difference(){

////////////////////////////////////
//the baseplate
//////////////////////////////////
    
  
    translate([0,0,-1.5]) cube([75,88.6,6], center = true); 
 
    
    translate([0,0,0]) cube([66+0.5,66+0.5,3], center = true);
    
    translate([0,0,-3]) cube([60,60,4], center = true);

}   
}

    
//////////////////////////////////
//airflow hole in basplate    
//////////////////////////////////
    
    
    
    cube([60,60,4], center = true);
    

//printing guidline    
   
    
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
}



*/

difference(){
union(){
difference(){
union(){
translate([0,43.8,-35]) rotate([29,0,0]) cube([36+40,4,55], center = true); 

translate([0,-20.75,-35]) rotate([29,0,0]) cube([36+40,4,55], center = true); 
}

for(i=[-1,1]) translate([i*(23.8+13),0,-30]) rotate([0,i*-22.5,0]) cube([4+16.025,120,70], center = true); 



}



difference(){
for(i=[-1,1]) translate([i*23.8,0,-30]) rotate([0,i*-22.5,0]) cube([4,120,50], center = true); 


translate([0,43.8+20,-35]) rotate([29,0,0]) cube([36+30+50,4+27,90], center = true); 


translate([0,-20.75-30,-35]) rotate([29,0,0]) cube([36+50,4+44.4774,80], center = true); 

 
}
}

translate([0,-48,0]) cube([50,30,50], center = true);

translate([0,0,-2]) cube([30,60,24.4], center = true);

translate([0,0,-12+0.2-3.5-39.5-3]) cube([60,60,15], center = true);


translate([0,0,-58]) cube([150,150,6], center = true); 

}









A=39.5; 

translate([0,20,-12+0.2-3.5-A])rotate([180,0,0]){
difference(){
union(){    
difference(){

////////////////////////////////////
//the baseplate
//////////////////////////////////
    
  
    translate([0,0,-1.5]) cube([121-4,121-32.4,6], center = true); 
 
    
    //translate([0,0,0]) cube([66+0.5,66+0.5,3], center = true);
    
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

}

    
///////////////////////////////////////////////////////////    
  


//translate([0,-40,-41]) rotate([0,90,0])cylinder(h = 70, d=8.25+10, $fn = 180, center = true);


//translate([0,-40,3.5]) rotate([0,90,0])cylinder(h = 70, d=8.25+10, $fn = 180, center = true);

 

}


//translate([0,-40,-41]) rotate([0,90,0])cylinder(h = 75, d=8.25, $fn = 180, center = true);

//translate([0,-40,3.5]) rotate([0,90,0])cylinder(h = 75, d=8.25, $fn = 180, center = true);







}