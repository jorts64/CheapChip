difference(){
	union(){
		cube([70,61,3]);
		cube([70,3,38]);
		translate([0,58,0]) cube([70,3,25]);
	}
	union(){
		translate([58,0,6]) cube([12,3,32]);
	}
}
