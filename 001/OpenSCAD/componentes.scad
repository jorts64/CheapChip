 $fn=96;
 
 // Altura de las patas
 h=10;
 
 
 cube([90,100,3]);
 D1MiniTripleBase();
 translate([0,50,0]) D1MiniDobleBase();


module pata(r){
	difference(){
		cube([5,5,h]);
		translate([2.5,2.5,0]) cylinder(h=h, r=r);
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

module D1MiniTripleBase(){
	PCB(72,28,3,3,1.5);
}

module D1MiniDobleBase(){
	PCB(46.6,28,3,2.8,1.5);
}