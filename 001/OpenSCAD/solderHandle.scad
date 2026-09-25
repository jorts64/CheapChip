lado=2.54/2.54;
agujero=5;
base=0.6;
radio=0.77/2.54;

// scale([lado,lado,1]) soporte(4,6);

module soporte(a,b){
    for(i=[0 : a-1]){
        for(j=[0 : b-1]){
            translate([i*lado,j*lado,0]) pin();
        }
    }
}
module pin(){
    difference(){
        cube([lado,lado,base+agujero]);
        translate([lado/2,lado/2,base]) cylinder(r=radio, h=agujero+1, $fn=96);
     }
}
