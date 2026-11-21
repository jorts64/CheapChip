$fn=92;
difference(){
	union(){
		cube([55,70,3]);
		cube([55,3,60]);
		translate([0,67,0]) cube([55,3,60]);
		PCB(45.06,49.94,5,10,1);
	}
	union(){
		translate([10,0,43]) cube([3.0,3,12.5]);	//OLED
		translate([10,0,27]) cube([3.0,3,13.1]);	//buttons
	}
}



module pata(r){
	difference(){
		translate([-2.5,-2.5,3]) cube([5,5,4]);
		translate([0,0,3]) cylinder(h=4, r=r); // agujero en (0,0)
	}
}

module PCB(dx,dy,x0,y0,r){
    // MEDIDAS DE LA PLACA
    //    dx       distancia entre agujeros eje x
    //    dy       distancia entre agujeros eje y
    //    x0       distancia x 1r agujero a esquina
    //    xy       distancia y 1r agujero a esquina
    translate([x0,y0,0]) pata(r);
    translate([x0+dx,y0,0]) pata(r);
    translate([x0,y0+dy,0]) pata(r);
    translate([x0+dx,y0+dy,0]) pata(r);
}
