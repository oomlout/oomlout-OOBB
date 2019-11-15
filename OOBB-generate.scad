//######  OOBB OpenSCAD Generation  ######
//########################################


//GLOBAL DIMENSIONS

    //OPENSCAD Variables
    $fn = 100;

    //CORE
    OOBBSpacing = 15;
    OOBBRadius  = 10/2;
    OOBBRadiusOffset = 1;

    // HOLES
    OOBBHoleTrue = 6/2;
    OOBBHole3D  = 6/2;
    OOBBHoleLaser = 6/2;
    
    OOBBHole = OOBBHoleTrue;
    
    // TABS
    OOBBTabWidthTrue = 3;
    OOBBTabWidth3D = 3;
    OOBBTabWidthLaser = 3;
    
    OOBBTabWidth = OOBBTabWidthTrue;
    
    OOBBTabHeightTrue = 3;
    OOBBTabHeight3D = 3;
    OOBBTabHeightLaser = 3;
    
    OOBBTabHeight = OOBBTabHeightTrue;
    
    //m="PL3D";
    //w=5;
    //h=2;

    m="PL3D";
    
if(m=="PL2D"){
    OOBBPL2D(w,h);
}else if(m=="PL3D"){
    OOBBPL3D(w,h,3);
}


module OOBBPL3D(OOWidth,OOHeight,OOExtrude){
    linear_extrude(OOExtrude){
        OOBBPL2D(OOWidth,OOHeight);
    }
}

module OOBBPL2D(OOWidth,OOHeight   ){
    difference(){
        OOBBPLOutline(OOWidth, OOHeight);
            for(width = [1:OOWidth]){
                for(height = [1:OOHeight]){
                    OOBBHole(width,height);
                }
            }
            for(width = [1:OOWidth-1]){
                for(height = [1:OOHeight]){
                    OOBBSlotWide(width,height);                    
                }
            }
            for(width = [1:OOWidth]){
                for(height = [1:OOHeight-1]){
                    OOBBSlotTall(width,height);                    
                }
            }
        }
    
}


module OOBBHole(OOx,OOy){
    translate([OOBBSpacing * OOx, OOBBSpacing * OOy]){
        circle(OOBBHole);
    }
}
module OOBBSlotWide(OOx,OOy){
    
    translate([OOBBSpacing * OOx + OOBBSpacing/2, OOBBSpacing * OOy]){
        square([OOBBTabWidth,OOBBTabHeight],true);
    }
}
module OOBBSlotTall(OOx,OOy){
    translate([OOBBSpacing * OOx, OOBBSpacing * OOy + OOBBSpacing / 2]){
        square([OOBBTabHeight,OOBBTabWidth],true);
    }
}

module OOBBPLOutline(OOWidth,OOHeight){
    
    //Bottom Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset, OOBBSpacing * 1-OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    //Bottom Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset, OOBBSpacing * 1-OOBBRadiusOffset]){
        circle(OOBBRadius);
    }    
    //Top Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    //Top Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    
    //WideSquare
    width = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    height = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width,height],true);
    }

    //TallSquare
    width2 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2;
    height2 = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width2,height2],true);
    }    
    
    
    
}