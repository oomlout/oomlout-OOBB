    //m="HL-N17-05-03";
    //w=0;
    //h=0;
    //s="TRUE";

include <OOBB-generate-BASE.scad>;



if(m=="HL-N17-05-03"){
    OOBB_HL_N17_05_03();    
}else if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
}else if(m=="BP-606-03-03"){
    OOBB_BP_606_03_03();    
}


module OOBBPLTESTHoleTolerance(){
    linear_extrude(3){
        difference(){
        OOBBPLOutline(4, 3);


            for(x=[0:8]){    
                OOx = floor(x%3)+1;
                OOy = floor(x/3)+1;
                OOoffset = -0.1 + 0.1 *x;
                translate([OOBBSpacing * OOx, OOBBSpacing * OOy]){
                    circle(OOBBHole + OOoffset);
                }
                translate([OOBBSpacing * OOx + OOBBSpacing/2, OOBBSpacing * OOy]){
                    square([OOBBTabWidth+OOoffset,OOBBTabHeight+OOoffset],true);
                }    
            }
        }
    }
}

module OOBB_HL_N17_05_03(){
    
    OOWidth = 5;
    OOHeight = 3;    
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,9);
        //OOBB Holes
        OOBBHole3D(1,1);
        OOBBSlotTall3D(1,1);
        OOBBSlotWide3D(1,1);        
        OOBBHole3D(1,2);
        OOBBSlotTall3D(1,2);
        OOBBSlotWide3D(1,2);        
        OOBBHole3D(1,3);
        OOBBSlotWide3D(1,3);        
        
        OOBBHole3D(5,1);
        OOBBSlotTall3D(5,1);
        OOBBSlotWide3D(4,1);        
        OOBBHole3D(5,2);
        OOBBSlotTall3D(5,2);
        OOBBSlotWide3D(4,2);                
        OOBBHole3D(5,3);
        OOBBSlotWide3D(4,3);        
        
        //slots around NEMA17 Mount
        OOBBSlotWide3D(2,1);       
        OOBBSlotWide3D(2,3);       
        
        
        OOBBHole3D(3,1);
        OOBBSlotWide3D(3,1);        
        OOBBHole3D(2,2);
        OOBBSlotTall3D(4,2);
        OOBBHole3D(4,2);
        OOBBSlotTall3D(4,1);
        OOBBHole3D(3,3);
        OOBBSlotWide3D(3,3);        
        
        OOBBnema17Holes(3*OS,2*OS,9);    
        //all the way through hole (to facilitate 19mm OD flexible coupler)
        OOBBHole3DRadius(3*OS,2*OS,22/2);
        //25mm hole for clearance of metal outie bit on a NEMA17 motor
        OOBBHole3DRadiusComplete(3*OS,2*OS,25/2,3.575+4.85,12-3.575);    
        //embedded nuts
        OOBBPolygon3DComplete90Deg(6,2*OS,2*OS,OOBBNutM6Width/2,4.85,4.85);
        OOBBPolygon3DComplete90Deg(6,4*OS,2*OS,OOBBNutM6Width/2,4.85,4.85);
        OOBBPolygon3DComplete(6,3*OS,1*OS,OOBBNutM6Width/2,4.85,4.85);
        OOBBPolygon3DComplete(6,3*OS,3*OS,OOBBNutM6Width/2,4.85,4.85);
    }
    
        
    
    
}

module OOBB_BP_606_03_03(){
    OOWidth = 3;
    OOHeight = 3;    
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,9);
        //OOBB Holes
        OOBBHole3D(1,1);
        OOBBSlotTall3D(1,1);
        OOBBSlotWide3D(1,1);
        OOBBHole3D(1,2);
        OOBBSlotTall3D(1,2);
        OOBBHole3D(1,3);
        OOBBSlotWide3D(1,3);
        
        OOBBHole3D(3,1);
        OOBBSlotTall3D(3,1);
        
        OOBBHole3D(3,2);
        OOBBSlotTall3D(3,2);
        OOBBHole3D(3,3);
        
        OOBBHole3D(2,1);
        OOBBSlotWide3D(2,1);
        OOBBHole3D(2,3);
        OOBBSlotWide3D(2,3);
        
        OOBBbearingHole("606",2,2);
        
        
    }
    
    
}

module OOBBbearingHole(bearingSize,OOx,OOy){
    if(bearingSize == "606"){
        OOBBHole3DRadiusComplete(OOx*OS,OOy*OS,OOBBBearing606Big,6,7.5);
        OOBBHole3DRadiusComplete(OOx*OS,OOy*OS,OOBBBearing606Little,9,9);
    }

}



module OOBBnema17Holes(x,y,z){
    translate([x,y,-10]){
        OOBBCountersinkM33DComplete(31/2,31/2,z+10);
        OOBBHole3DRadius(31/2,31/2,OOBBm3Hole);
        OOBBCountersinkM33DComplete(-31/2,-31/2,z+10);
        OOBBHole3DRadius(-31/2,-31/2,OOBBm3Hole);
        OOBBCountersinkM33DComplete(31/2,-31/2,z+10);
        OOBBHole3DRadius(31/2,-31/2,OOBBm3Hole);
        OOBBCountersinkM33DComplete(-31/2,31/2,z+10);
        OOBBHole3DRadius(-31/2,31/2,OOBBm3Hole);
    }
}