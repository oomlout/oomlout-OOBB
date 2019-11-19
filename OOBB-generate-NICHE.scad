    m="HL-N17-05-03";
    w=0;
    h=0;
    s="TRUE";

include <OOBB-generate-BASE.scad>;



if(m=="HL-N17-05-03"){
    OOBB_HL_N17_05_03();    
}

module OOBB_HL_N17_05_03(){
    OOWidth = 5;
    OOHeight = 3;    
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,12);
        OOBBHole3D(1,1);
        OOBBHole3D(1,2);
        OOBBHole3D(1,3);
        
        OOBBHole3D(5,1);
        OOBBHole3D(5,2);
        OOBBHole3D(5,3);
        
        OOBBHole3D(3,1);
        OOBBHole3D(2,2);
        OOBBHole3D(4,2);
        OOBBHole3D(3,3);
        
        OOBBnema17Holes(3*OS,2*OS);    
        OOBBHole3DRadius(3*OS,2*OS,15/2);
        OOBBHole3DRadiusComplete(3*OS,2*OS,25/2,3.575+4.85,12);    
        OOBBPolygon3DComplete90Deg(6,2*OS,2*OS,OOBBNutM6Width/2,4.85,3.575+4.85);
        OOBBPolygon3DComplete90Deg(6,4*OS,2*OS,OOBBNutM6Width/2,4.85,3.575+4.85);
        OOBBPolygon3DComplete(6,3*OS,1*OS,OOBBNutM6Width/2,4.85,3.575+4.85);
        OOBBPolygon3DComplete(6,3*OS,3*OS,OOBBNutM6Width/2,4.85,3.575+4.85);
    }
    
        
    
    
}


module OOBBnema17Holes(x,y){
    translate([x,y,-10]){
        OOBBHole3DRadius(31/2,31/2,OOBBm3Hole);
        OOBBHole3DRadius(-31/2,-31/2,OOBBm3Hole);
        OOBBHole3DRadius(31/2,-31/2,OOBBm3Hole);
        OOBBHole3DRadius(-31/2,31/2,OOBBm3Hole);
    }
}