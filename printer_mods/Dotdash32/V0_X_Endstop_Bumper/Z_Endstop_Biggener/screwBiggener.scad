$fn = 45; //number of fragments

difference(){
    cylinder(d=10, h = 5);
    translate([0,0,2]) cylinder(d = 5.5,h=3.5);
    translate([0,0,-.1]) cylinder(d=3.5,h=5.5);
}