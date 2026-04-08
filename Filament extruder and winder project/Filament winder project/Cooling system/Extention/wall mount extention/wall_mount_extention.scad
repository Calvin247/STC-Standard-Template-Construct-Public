
//center rectangle

difference(){
cube([68,68,120], center = true); 

cube([60,60,144.5], center = true);
}





difference(){
for(i=[-1,1]) for(j=[-1,1]) translate([0,j*40,i*50]) rotate([0,90,0]) rotate([0,0,0]) cube([8.25+10,8.25+10,68], center = true);

for(i=[-1,1]) for(j=[-1,1]) translate([0,j*40,i*50]) rotate([0,90,0]) cylinder(h = 70, d=8.25, $fn = 180, center = true);

}










 

for(i=[-1,1])translate([0,0,i*62.1])rotate([180,0,0]){
difference(){
union(){    
difference(){

////////////////////////////////////
//the baseplate
//////////////////////////////////
    
  
    translate([0,0,0]) cube([121-4,121-32.4,6], center = true); 
 
    
    //translate([0,0,0]) cube([66+0.5,66+0.5,3], center = true);
    
    translate([0,0,0]) cube([60,60,10], center = true);
    
    
//////////////////////////////////    
//cutting of the edges of the baseplate
//////////////////////////////////
    
    translate([53+2.5,53+2.5-32.4/2,0]) cube([16,16,7], center = true);

    translate([53+2.5,-53-2.5+32.4/2,0]) cube([16,16,7], center = true);

    translate([-53-2.5,53+2.5-32.4/2,0]) cube([16,16,7], center = true);

    translate([-53-2.5,-53-2.5+32.4/2,0]) cube([16,16,7], center = true);

    }   
////////////////////////////////////
//inseting smooth edges of the baseplate
////////////////////////////////////

    translate([-48+2,-48+32.4/2,0])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([-48+2,48-32.4/2,0])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([48-2,-48+32.4/2,0])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([48-2,48-32.4/2,0])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    }

/////////////////////////////////////
//inserting corner hols for the baseplate
////////////////////////////////////

    translate([48-2,48-32.4/2-5,0])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([48-2,-48+32.4/2+5,0])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([-48+2,48-32.4/2-5,0])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([-48+2,-48+32.4/2+5,0])cylinder(h = 7, r=3, $fn = 180, center = true);
    
//////////////////////////////////
//airflow hole in basplate    
//////////////////////////////////
    
cube([60,60,4], center = true);
  
   
}

}

    
///////////////////////////////////////////////////////////    





