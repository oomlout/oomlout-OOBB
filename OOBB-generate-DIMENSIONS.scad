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

    //6804
        Bearing6804Inside = 19.8/2;
    
    //6704 Bearing
    OOBBBearing6704InsideTrue = 20/2;
    OOBBBearing6704Inside3D  = 19.8/2;
    OOBBBearing6704Inside = s=="3DPR" ? OOBBBearing6704Inside3D : OOBBBearing6704InsideTrue;

    OOBBBearing6704OutsideTrue = 27/2;
    OOBBBearing6704Outside3D  = (27-0.2)/2;
    OOBBBearing6704Outside = s=="3DPR" ? OOBBBearing6704Outside3D : OOBBBearing6704OutsideTrue;

    OOBBBearing6704OutsideHoldTrue = OOBBBearing6704OutsideTrue;
    OOBBBearing6704OutsideHold3D  = (OOBBBearing6704OutsideHoldTrue+(0.1/2));
    OOBBBearing6704OutsideHold = s=="3DPR" ? OOBBBearing6704OutsideHold3D : OOBBBearing6704OutsideHoldTrue;

    OOBBBearing6704Little = 24/2;

    // NUTS
    OOBBNutM3WidthTrue = 6.351;    
    OOBBNutM3Width3D = 6.928; //needs to be the long side    
    
    OOBBNutM3Width = s=="3DPR" ? OOBBNutM3Width3D : OOBBNutM3WidthTrue;
    
    OOBBNutM3HeightTrue = 2.5;    //actually 4.85 extra for clearance
    OOBBNutM3Height3D = 2.5;    
    
    OOBBNutM3Height = s=="3DPR" ? OOBBNutM3Height3D : OOBBNutM3HeightTrue;
    



    
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
    
    
    OOBBm27HoleTrue = 2.7/2;
    OOBBm27Hole3D = 3/2;
    OOBBm27Hole = s=="3DPR" ? OOBBm27Hole3D : OOBBm27HoleTrue;
    
    
    OOBBm27RivetClearanceTrue = 5/2;
    OOBBm27RivetClearance3D = 5.4/2;
    OOBBm27RivetClearance = s=="3DPR" ? OOBBm27RivetClearance3D : OOBBm27RivetClearanceTrue;
    
    
    
    
    OOBBm2HoleTrue = 2/2;
    OOBBm2Hole3D = 2.3/2;
    OOBBm2Hole = s=="3DPR" ? OOBBm2Hole3D : OOBBm2HoleTrue;
    
    
    OOBBm3CounterSinkTopHoleTrue = 5.5/2;
    OOBBm3CounterSinkTopHole3D = OOBBm3CounterSinkTopHoleTrue + 0.6;
    OOBBm3CounterSinkTopHole = s=="3DPR" ? OOBBm3CounterSinkTopHole3D : OOBBm3CounterSinkTopHoleTrue;    
    
    
    OOBBm3SocketHeadHoleTrue = 5.5/2;
    OOBBm3SocketHeadHole3D = OOBBm3SocketHeadHoleTrue + 0.4;
    OOBBm3SocketHeadHole = s=="3DPR" ? OOBBm3SocketHeadHole3D : OOBBm3SocketHeadHoleTrue;    
    
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

