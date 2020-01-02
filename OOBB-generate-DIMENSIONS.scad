//######  OOBB OpenSCAD Generation  ######
//########################################

    //OPENSCAD Variables
    $fn = 50;

    //CORE
    OOBBSpacing = 15;
    OS=OOBBSpacing;
    OOBBRadius  = 10/2;
    OOBBMaterialThickness = 3;
    OOBBRadiusOffset = 1;

    // HOLES
    OOBBHoleTrue = 6/2;
    OOBBHole3D  = 6.5/2;
    
    OOBBHoleLaser = 6/2;
    
    OOBBHole = s=="3DPR" ? OOBBHole3D : OOBBHoleTrue;
    echo("                  OOBBHole =",OOBBHole);


    // Bearings
    OOBBBearing606BigTrue = 17/2;
    OOBBBearing606Big3D  = 17.5/2;
    
    OOBBBearing606Big = s=="3DPR" ? OOBBBearing606Big3D : OOBBBearing606BigTrue;

    OOBBBearing606LittleTrue = 14/2;
    OOBBBearing606Little3D  = 14.5/2;
    
    OOBBBearing606Little = s=="3DPR" ? OOBBBearing606Little3D : OOBBBearing606LittleTrue;



    // NUTS
    OOBBNutM3WidthTrue = 6.351;    
    OOBBNutM3Width3D = 6.928; //needs to be the long side    
    
    OOBBNutM3Width = s=="3DPR" ? OOBBNutM3Width3D : OOBBNutM3WidthTrue;
    
    
    OOBBNutM6WidthTrue = 11.547;    
    OOBBNutM6Width3D = 12.7; //needs to be the long side    
    
    OOBBNutM6Width = s=="3DPR" ? OOBBNutM6Width3D : OOBBNutM6WidthTrue;
    
    OOBBNutM6WidthShortTrue = 10;    
    OOBBNutM6WidthShort3D = 11; //needs to be the long side    
    
    OOBBNutM6WidthShort = s=="3DPR" ? OOBBNutM6WidthShort3D : OOBBNutM6WidthShortTrue;
    
    
    OOBBNutM6HeightTrue = 5;    //actually 4.85 extra for clearance
    OOBBNutM6Height3D = 5;    
    
    OOBBNutM6Height = s=="3DPR" ? OOBBNutM6Height3D : OOBBNutM6HeightTrue;
    
    OOBBm6HoleTrue = 6/2;
    OOBBm6Hole3D = 6.5/2;
    OOBBm6Hole = s=="3DPR" ? OOBBm6Hole3D : OOBBm6HoleTrue;
        
    OOBBm3HoleTrue = 3/2;
    OOBBm3Hole3D = 3.4/2;
    OOBBm3Hole = s=="3DPR" ? OOBBm3Hole3D : OOBBm3HoleTrue;
    
    
    OOBBm3CounterSinkTopHoleTrue = 5.5/2;
    OOBBm3CounterSinkTopHole3D = 5.9/2;
    OOBBm3CounterSinkTopHole = s=="3DPR" ? OOBBm3CounterSinkTopHole3D : OOBBm3CounterSinkTopHoleTrue;    
    
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

