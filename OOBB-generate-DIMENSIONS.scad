//######  OOBB OpenSCAD Generation  ######
//########################################

    //OPENSCAD Variables
    $fn = 50;
    //$fn = 25; //lower to speed up generation should use 50

    //CORE
    OOBBSpacing = 15;
    OS=OOBBSpacing;
    OOBBRadius  = 10/2;
    OOBBMaterialThickness = 3;
    OOBBRadiusOffset = 1;

    
    OOBBfirstLayerLipOffset = 0.35;
    OOBBfirstLayerLipDepth = 0.2;

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

    OOBBBearing6704Little = (27-3)/2;
    OOBBBearing6704LittleInside = 21.5/2;
    
    OOBBBearing6704Thickness = 4;
    
    //6803 Bearing
    OOBBBearing6803InsideTrue = 17/2;
    OOBBBearing6803Inside3D  = 16.8/2;
    OOBBBearing6803Inside = s=="3DPR" ? OOBBBearing6803Inside3D : OOBBBearing6803InsideTrue;

    OOBBBearing6803OutsideTrue = 26/2;
    OOBBBearing6803Outside3D  = (26-0.2)/2;
    OOBBBearing6803Outside = s=="3DPR" ? OOBBBearing6803Outside3D : OOBBBearing6803OutsideTrue;

    OOBBBearing6803OutsideHoldTrue = OOBBBearing6803OutsideTrue;
    OOBBBearing6803OutsideHold3D  = (OOBBBearing6803OutsideHoldTrue+(0.25/2)); //0.2 was a bit too tight
    OOBBBearing6803OutsideHold = s=="3DPR" ? OOBBBearing6803OutsideHold3D : OOBBBearing6803OutsideHoldTrue;

    OOBBBearing6803Little = 21/2;
    OOBBBearing6803LittleInside = (17+1.5)/2;

    OOBBInsideTrueAmount = 0.15;    
    OOBBOutsideHoldAmount = 0.25;

    //6806 Bearing //currently working on these values
    OOBBBearing6806InsideTrue = 30/2;
    OOBBBearing6806Inside3D  = (OOBBBearing6806InsideTrue-(0.125/2)); //0.15 a bit too much
    OOBBBearing6806Inside = s=="3DPR" ? OOBBBearing6806Inside3D : OOBBBearing6806InsideTrue;

    OOBBBearing6806OutsideTrue = 42/2;
    OOBBBearing6806Outside3D  = (OOBBBearing6806OutsideTrue-(0.2/2));
    OOBBBearing6806Outside = s=="3DPR" ? OOBBBearing6806Outside3D : OOBBBearing6806OutsideTrue;

    OOBBBearing6806OutsideHoldTrue = OOBBBearing6806OutsideTrue;
    OOBBBearing6806OutsideHold3D  = (OOBBBearing6806OutsideHoldTrue+(0.25/2));
    OOBBBearing6806OutsideHold = s=="3DPR" ? OOBBBearing6806OutsideHold3D : OOBBBearing6806OutsideHoldTrue;
    
    OOBBBearing6806Little = OOBBBearing6806OutsideTrue-(3/2);
    OOBBBearing6806LittleInside = OOBBBearing6806InsideTrue+(3/2);

    //6808 Bearing
    OOBBBearing6808InsideTrue = 40/2;
    OOBBBearing6808Inside3D  = (OOBBBearing6808InsideTrue-(0.15/2));
    OOBBBearing6808Inside = s=="3DPR" ? OOBBBearing6808Inside3D : OOBBBearing6808InsideTrue;

    OOBBBearing6808OutsideTrue = 52/2;
    OOBBBearing6808Outside3D  = (OOBBBearing6808OutsideTrue-(0.2/2));
    OOBBBearing6808Outside = s=="3DPR" ? OOBBBearing6808Outside3D : OOBBBearing6808OutsideTrue;

    OOBBBearing6808OutsideHoldTrue = OOBBBearing6808OutsideTrue;
    OOBBBearing6808OutsideHold3D  = (OOBBBearing6808OutsideHoldTrue+(0.25/2));
    OOBBBearing6808OutsideHold = s=="3DPR" ? OOBBBearing6808OutsideHold3D : OOBBBearing6808OutsideHoldTrue;
    
    OOBBBearing6808Little = OOBBBearing6808OutsideTrue-(3/2);
    OOBBBearing6808LittleInside = OOBBBearing6808InsideTrue+(3/2);

    
    //6810 Bearing
    OOBBBearing6810InsideTrue = 50/2;
    OOBBBearing6810Inside3D  = (OOBBBearing6810InsideTrue-(0.15/2));
    OOBBBearing6810Inside = s=="3DPR" ? OOBBBearing6810Inside3D : OOBBBearing6810InsideTrue;

    OOBBBearing6810OutsideTrue = 65/2;
    OOBBBearing6810Outside3D  = (OOBBBearing6810OutsideTrue-(0.2/2));
    OOBBBearing6810Outside = s=="3DPR" ? OOBBBearing6810Outside3D : OOBBBearing6810OutsideTrue;

    OOBBBearing6810OutsideHoldTrue = OOBBBearing6810OutsideTrue;
    OOBBBearing6810OutsideHold3D  = (OOBBBearing6810OutsideHoldTrue+(0.6/2)); //0.45 almost large enough going to 0.6 for safetuy margin)
    OOBBBearing6810OutsideHold = s=="3DPR" ? OOBBBearing6810OutsideHold3D : OOBBBearing6810OutsideHoldTrue;

    OOBBBearing6810Little = OOBBBearing6810OutsideTrue-(3/2);
    OOBBBearing6810LittleInside = OOBBBearing6810InsideTrue+(3/2);

    // NUTS
    OOBBNutM3WidthTrue = 6.351;    //5.5mm short side
    //OOBBNutM3Width3D = 6.928; //needs to be the long side old value 2020/07 
    OOBBNutM3Width3D = 7.028; //needs to be the long side 
    
    // //6mm short side    
    
    OOBBNutM3Width = s=="3DPR" ? OOBBNutM3Width3D : OOBBNutM3WidthTrue;
    
    OOBBNutM3WidthShortSideTrue = 5.5;    //5.5mm short side
    OOBBNutM3WidthShortSide3D = 6; //needs to be the long side // //6mm short side    
    
    OOBBNutM3WidthShortSide = s=="3DPR" ? OOBBNutM3WidthShortSide3D : OOBBNutM3WidthShortSideTrue;
    
    
    
    OOBBNutM3HeightTrue = 2.5;    //actually 4.85 extra for clearance
    OOBBNutM3Height3D = 2.5;    
    
    OOBBNutM3Height = s=="3DPR" ? OOBBNutM3Height3D : OOBBNutM3HeightTrue;
    



    
    OOBBNutM6WidthTrue = 11.547;    //short side 10
    OOBBNutM6Width3D = 12.7; //needs to be the long side (short side is   
    
    

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
    
    OOBBm3CounterSinkTopDepthTrue = 1.7;
    OOBBm3CounterSinkTopDepth3D = OOBBm3CounterSinkTopDepthTrue + 0.2;
    OOBBm3CounterSinkTopDepth = s=="3DPR" ? OOBBm3CounterSinkTopDepth3D : OOBBm3CounterSinkTopDepthTrue;    
    
    
    OOBBm3SocketHeadHoleTrue = 5.5/2;
    OOBBm3SocketHeadHole3D = OOBBm3SocketHeadHoleTrue + 0.4;
    OOBBm3SocketHeadHole = s=="3DPR" ? OOBBm3SocketHeadHole3D : OOBBm3SocketHeadHoleTrue;   
    
    OOBBm3SocketHeadDepthTrue = 3;
    OOBBm3SocketHeadDepth3D = OOBBm3SocketHeadDepthTrue + 0.8;
    OOBBm3SocketHeadDepth = s=="3DPR" ? OOBBm3SocketHeadDepth3D : OOBBm3SocketHeadDepthTrue;    
    
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

