import("Pan-tilt-tapa.stl");
color("#FF0000")
difference (){
translate([2,2,0])
cube([3,13,15]);
translate([4,8,15])
cylinder(r=1.4/2, h=15, $fn=50,
center=true);
}