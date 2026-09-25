include <solderHandle.scad>

sep=2.54;

scale([sep,sep,1]) union(){
    cube([33,14,0.6]);
    translate([3,3,0]) soporte(27,8);
}
