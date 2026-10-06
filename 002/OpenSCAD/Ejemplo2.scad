$fn=92;
difference(){
    union(){
        cube([35,35,30]);
    }
    union(){
        translate([10,10,-1]) cylinder(r=2, h=45);
        translate([10,10,13]) cylinder(r=4.2, h=45);
        translate([25,25,-1]) cylinder(r=2, h=45);
        translate([25,25,13]) cylinder(r=4.2, h=45);
        translate([25,-1,15]) rotate([-90,0,0]) cylinder(r=1.5, h=10);
        translate([-1,25,15]) rotate([0,90,0]) cylinder(r=1.5, h=10);
    }
}
    