//######  OOBB OpenSCAD Generation  ######
//########################################
    
    //h=1;
    //w=3;
    //m="JA3D";
    //s="TRUE";
    echo("#########################################");
    echo("######  OOBB Open SCAD Generation  ######");
    echo("");
    echo("     .:Generating:.");
    echo("            Mode; ", m, " Width: ", w, " Height: ", h, " Style: ", s);
    echo("");
//GLOBAL DIMENSIONS

    //OPENSCAD Variables
    $fn = 100;

    //CORE
    OOBBSpacing = 15;
    OOBBRadius  = 10/2;
    OOBBMaterialThickness = 3;
    OOBBRadiusOffset = 1;

    // HOLES
    OOBBHoleTrue = 6/2;
    OOBBHole3D  = 6.5/2;
    
    OOBBHoleLaser = 6/2;
    
    OOBBHole = s=="3DPR" ? OOBBHole3D : OOBBHoleTrue;
    echo("                  OOBBHole =",OOBBHole);


    // NUTS
    OOBBNutM6WidthTrue = 10;    
    OOBBNutM6Width3D = 11;    
    
    OOBBNutM6Width = s=="3DPR" ? OOBBNutM6Width3D : OOBBNutM6WidthTrue;
    
    OOBBNutM6HeightTrue = 5.5;    
    OOBBNutM6Height3D = 5.5;    
    
    OOBBNutM6Height = s=="3DPR" ? OOBBNutM6Height3D : OOBBNutM6HeightTrue;
    
    
    // TABS
    OOBBTabWidthTrue = 3;
    OOBBTabWidth3D = 2.7;
    OOBBTabWidthLaser = 3;
  
    OOBBTabWidth = s=="3DPR" ? OOBBTabWidth3D : OOBBTabWidthTrue;
    
    OOBBTabWidthHoleTrue = 3;
    OOBBTabWidthHole3D = 3.4;
    OOBBTabWidthHoleLaser = 3;
   
    OOBBTabWidthHole = s=="3DPR" ? OOBBTabWidthHole3D : OOBBTabWidthHoleTrue;
    
    OOBBTabHeightTrue = OOBBTabWidthTrue;
    OOBBTabHeight3D = OOBBTabWidth3D;
    OOBBTabHeightLaser = OOBBTabWidthLaser;
    
    OOBBTabHeight = s=="3DPR" ? OOBBTabHeight3D : OOBBTabHeightTrue;
    
    OOBBTabHeightHoleTrue = OOBBTabWidthHoleTrue;
    OOBBTabHeightHole3D = OOBBTabWidthHole3D;
    OOBBTabHeightHoleLaser = OOBBTabWidthHoleLaser;
    
    OOBBTabHeightHole = s=="3DPR" ? OOBBTabHeightHole3D : OOBBTabHeightHoleTrue;

    
if(m=="PL2D"){
    OOBBPL2D(w,h);
}else if(m=="PL3D"){
    OOBBPL3D(w,h,3);
}else if(m=="JA2D"){
    OOBBJA2D(w,h);
}else if(m=="JA3D"){
    OOBBJA3D(w,h,9);
}else if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
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

module OOBBJA3D(OOWidth,OOHeight,OOExtrude){
    difference(){
        linear_extrude(OOExtrude){
            OOBBJA2DBase(OOWidth,OOHeight);
        }          
        for(width = [2:OOWidth-1]){
            OOBBHoleBolt3D(width);
        }
    }
    translate([0,0,3]){        
        linear_extrude(3){
            OOBBJA2DTabs(OOWidth,OOHeight);            
        }
    }
}

module OOBBPL3D(OOWidth,OOHeight,OOExtrude){
    linear_extrude(OOExtrude){
        OOBBPL2D(OOWidth,OOHeight);
    }
}

module OOBBJA2D(OOWidth,OOHeight){
    OOBBJA2DBase(OOWidth,OOHeight);
}

module OOBBJA2DBase(OOWidth,OOHeight){
    difference(){
        OOBBJAOutline(OOWidth, OOHeight);
        OOBBHolesFor(OOWidth, OOHeight); 
        OOBBHolesForJA(OOWidth, OOHeight);        
    }   
}

module OOBBPL2D(OOWidth,OOHeight   ){
    difference(){
        OOBBPLOutline(OOWidth, OOHeight);
        OOBBHolesFor(OOWidth, OOHeight);    
    }
}

module OOBBHolesForJA(OOWidth, OOHeight){
    for(width = [2:OOWidth-1]){
            OOBBHoleBolt(width);
    }
}

module OOBBJA2DTabs(OOWidth, OOHeight){
    for(width = [1:OOWidth-1]){
        OOBBJackWide(width,0);
    }
}

module OOBBHolesFor(OOWidth, OOHeight){
    for(width = [1:OOWidth]){
        for(height = [1:OOHeight]){
            OOBBHole(width,height);
        }
    }
    if(OOWidth > 1){
        for(width = [1:OOWidth-1]){
            for(height = [1:OOHeight]){
                OOBBSlotWide(width,height);                    
            }
        }   
    }
    if(OOHeight > 1){
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

module OOBBHoleBolt(OOx){
    translate([OOBBSpacing * OOx, 5.25]){
        translate([0, 1]){
            square([OOBBNutM6Width,OOBBNutM6Height],true);
        }
        if(m=="JA2D"){
            translate([0, -2.75]){
                square([OOBBHole*2,2],true);
            }
        }
    }
}

module OOBBHoleBolt3D(OOx){
    translate([OOBBSpacing * OOx, 3.5]){
        translate([0, 0, 4.5]){
            rotate([90,0,0]){
                linear_extrude(2){
                    circle(OOBBHole);
                }
            }
        }
        
    }
}

module OOBBSlotWide(OOx,OOy){
    
    translate([OOBBSpacing * OOx + OOBBSpacing/2, OOBBSpacing * OOy]){
        square([OOBBTabWidthHole,OOBBTabHeightHole],true);
    }
}
module OOBBSlotTall(OOx,OOy){
    translate([OOBBSpacing * OOx, OOBBSpacing * OOy + OOBBSpacing / 2]){
        square([OOBBTabHeightHole,OOBBTabWidthHole],true);
    }
}
module OOBBJackWide(OOx,OOy){
    translate([OOBBSpacing * OOx + OOBBSpacing / 2, 0]){
        square([OOBBTabHeight,OOBBTabWidth],true);
    }
}
module OOBBJAOutline(OOWidth,OOHeight){
    
    //Top Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    //Top Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    
    //Bottom Square
    width4 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    height4 = 14.5;//(OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,8.75]){
       square([width4,height4],true);
    }

    //TallSquare
    width3 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2;
    height3 = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width3,height3],true);
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

    