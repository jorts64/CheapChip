$fn=48;
union(){
	cube([100,50,3]);
	translate([5,5,0]) pata(1.5);
	translate([5,45,0]) pata(1.5);
	translate([40,5,0]) pata(1.5);
	translate([40,45,0]) pata(1.5);
	translate([50,5,0]) pata(1);
	translate([50,30,0]) pata(1);
	translate([90,5,0]) pata(1);
	translate([90,30,0]) pata(1);
}

module pata(r){
	difference(){
		cube([5,5,10]);
		translate([2.5,2.5,0]) cylinder(h=10, r=r);
	}
}