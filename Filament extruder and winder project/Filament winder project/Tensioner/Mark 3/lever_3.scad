//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);





difference(){
    union(){
        cube([100,30,5], center = true);
 
        //Slanted wall 
        difference(){    
            translate([0,0,7.5]) cube([125,5,10], center = true);   

            for(i=[1]) translate([0,i*12,0])cylinder(h = 20, d=27,          $fn= 180, center = true);
        }   
   
        for(i=[1]) mirror([i,0,0]) translate([50,0,0])cylinder(h =      5, d=30, $fn = 180, center = true);
    
        //bearing top
        translate([-50,0,7.5])cylinder(h = 10, d=30, $fn = 180,     center = true);


        //bearing 2
        translate([-50-40,0,5])cylinder(h = 15, d=30, $fn = 180,        center = true); 
        translate([-40,0,0]) cube([100,30,5], center = true);
        translate([-80,0,7.5]) cube([40,5,10], center = true);


        //front cylinder
        for(i=[-1,1]) translate([50,i*12,0])cylinder(h = 5, d=18,       $fn = 180, center = true);
          
        
        for(i=[-1]) translate([50,i*12,0])cylinder(h = 23.5, d=18,      $fn = 180, center = true);
            
        translate([50,0,0]) cube([25,30,5], center = true);

 
        //middle circle
        for(i=[1]) translate([0,i*12,0])cylinder(h = 5, d=25, $fn       = 180, center = true);
        for(i=[1]) translate([0,i*12,3.5])cylinder(h = 2, d1=25,        d2=10, $fn = 180, center = true);
        for(i=[1]) translate([0,i*12,-3.5])cylinder(h = 2, d1=10,       d2=25, $fn = 180, center = true);

    }//end difference 


    translate([0,0,7.5+11.45]) rotate([0,5.83,0]) cube([150,6,20],      center = true);
    for(i=[-1]) translate([50,i*12,0])cylinder(h = 60, d=5.25, $fn      = 180, center = true);
    for(i=[1]) translate([0,i*12,0])cylinder(h = 60, d=5.25, $fn =      180, center = true);


    //front fitting elimination
    for(i=[0:20]) rotate([0,0,i*0.5]) translate([50,12,0])cylinder      (h = 10, d=18.25, $fn = 180, center = true);
    translate([50,12+18.25/2,0]) cube([18.25,18.25,20], center =        true);


    translate([-50,0,5])cylinder(h = 50, d=8.25, $fn = 180, center = true);

    //bearing 2 inner hole
    translate([-50-40,0,5])cylinder(h = 50, d=8.25, $fn = 180,      center = true);


    translate([-50,0,7.5]) rotate([90,0,0]) cylinder(h = 40, d=3.2  , $fn = 30, center = true); 



    translate([-50,13,7.5]) rotate([90,0,0]) cylinder(h = 5, d=6,   $fn = 30, center = true);

    translate([-50,-13,7.5]) rotate([90,0,0]) cylinder(h = 5, d=    6.5, $fn = 6, center = true);


    for(i=[-1,0]) mirror([0,0,i]){
    translate([50,-12,5.75]){
    rotate_extrude(convexity = 10, $fn = 100)
    translate([9, 0, 0])
    resize([2,2,0]) circle(d = 5, $fn = 100);
    }}


    translate([42,0,5.5]) rotate([90,5,0]) resize([15,5,0])         cylinder(h = 6, d=5.25, $fn = 180, center = true);
}















//////////////////////////////////////
//lever attachment arm
//////////////////////////////////////


for(i=[0,-1]) mirror([0,0,i])translate([0,0,-0.75]){
difference(){
union(){


//Front cylinder
translate([50,12,10-3.5])cylinder(h = 12, d=18, $fn = 180, center = true);
    
//translate([50,12,6.5])cylinder(h = 2, d1=10, d2=25, $fn = 180, center = true);
      


//middle cyliner
translate([0,12,10])cylinder(h = 5, d=25, $fn = 180, center = true);
    
translate([0,12,6.5])cylinder(h = 2, d1=10, d2=25, $fn = 180, center = true); 
    

//cube center
translate([25,12,10]) cube([50,15,5], center = true);


}

//holes
for(i=[1]) translate([50,i*12,10])cylinder(h = 60, d=5.25, $fn = 180, center = true);

for(i=[1]) translate([0,i*12,10])cylinder(h = 60, d=5.25, $fn = 180, center = true);





translate([50,12,6.5]){
rotate_extrude(convexity = 10, $fn = 100)
translate([9, 0, 0])
resize([2,2,0]) circle(d = 5, $fn = 100);
}







}}

/////////////////////////////////////















//////////////////////////////////////////////////////////////
//Lever
/////////////////////////////////////////////////////////////

difference(){
union(){
translate([50,12,20])resize([18,18,5]) cylinder(h = 5, d=18, $fn = 180, center = true);

translate([50,12-17,20]) cube([10,34,5], center = true);

translate([50,20,20]) cube([8,34,5], center = true);

}


translate([50,-12-10,20]) resize([15,5.25,6]) cylinder(h = 6, d=18, $fn = 180, center = true);


translate([50,12,20])cylinder(h = 6, d=5.25, $fn = 180, center = true);
}





translate([50,12,20]){
rotate_extrude(convexity = 10, $fn = 100)
translate([9, 0, 0])
circle(d = 5, $fn = 100);
    
    
}    

