    
    /*
    m="TEST-COUNTERSINKM3";
    w=3;
    h=0;
    s="TRUE";
    extra="NONE";
    */
    


if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
}else if(m=="TEST-SERVOHORN"){
    TEST_SERVOHORN();    
}else if(m=="TEST-BEARING6704"){
    TEST_BEARING6704();    
}else if(m=="TEST-COUNTERSINKM3"){
    TEST_COUNTERSINKM3();    
}

module TEST_BEARING6704(){
    
    difference(){
        OOBBPLOutline3D(5, 7, 6);
        
        OOBBHole3DRadiusComplete(25,25,OOBBBearing6704OutsideHoldTrue,4,6);
        OOBBHole3DRadiusComplete(25,25,OOBBBearing6704Little,100,50);
        
        OOBBHole3DRadiusComplete(25,55,OOBBBearing6704OutsideHoldTrue+.1,4,6);
        OOBBHole3DRadiusComplete(25,55,OOBBBearing6704Little,100,50);
        
        OOBBHole3DRadiusComplete(25,85,OOBBBearing6704OutsideHoldTrue+.2,4,6);
        OOBBHole3DRadiusComplete(25,85,OOBBBearing6704Little,100,50);
        
        
        OOBBHole3DRadiusComplete(55,25,OOBBBearing6704OutsideHoldTrue+.3,4,6);
        OOBBHole3DRadiusComplete(55,25,OOBBBearing6704Little,100,50);
        
        OOBBHole3DRadiusComplete(55,55,OOBBBearing6704OutsideHoldTrue+.4,4,6);
        OOBBHole3DRadiusComplete(55,55,OOBBBearing6704Little,100,50);
        
    }
}
        
        
        
module TEST_SERVOHORN(){
    
    difference(){
        OOBBPLOutline3D(2, 3, 6);
        height = 20;
        rad=7.2/2;
        OOBBHole3DRadiusComplete(OOBBSpacing * 1,OOBBSpacing * 1,rad,height,height-5);
        rad1=7.4/2;
        OOBBHole3DRadiusComplete(OOBBSpacing * 1,OOBBSpacing * 2,rad1,height,height-5);
        rad2=7.6/2;
        OOBBHole3DRadiusComplete(OOBBSpacing * 1,OOBBSpacing * 3,rad2,height,height-5);
        rad3=7.8/2;
        OOBBHole3DRadiusComplete(OOBBSpacing * 2,OOBBSpacing * 1,rad3,height,height-5);
        rad4=8.0/2;
        OOBBHole3DRadiusComplete(OOBBSpacing * 2,OOBBSpacing * 2,rad4,height,height-5);

    }
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

module TEST_COUNTERSINKM3(){
    difference(){
        OOBBPLOutline3D(2, 4, 10);
        
        
        
        xVal1 = 1;
        yVal1 = 1;
        top = OOBBm3CounterSinkTopHoleTrue;
        bot = OOBBm3Hole;
        height = 1.75;
        OOBBCountersink3DComplete(OOBBSpacing*xVal1,OOBBSpacing*yVal1,top,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal1,yVal1);   
        !OOBBInsertItemCoord("M3NutCaptiveSingle",xVal1,yVal1,ooZ=OOBBNutM6Height);   
    
        
        xVal2 = 1;
        yVal2 = 1.75;
        top2 = OOBBm3CounterSinkTopHoleTrue + 0.1;
        OOBBCountersink3DComplete(OOBBSpacing*xVal2,OOBBSpacing*yVal2,top2,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal2,yVal2);   
    
        
        xVal3 = 1;
        yVal3 = 2.5;
        top3 = OOBBm3CounterSinkTopHoleTrue + 0.2;
        OOBBCountersink3DComplete(OOBBSpacing*xVal3,OOBBSpacing*yVal3,top3,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal3,yVal3);   
    
        
        xVal4 = 1;
        yVal4 = 3.25;
        top4 = OOBBm3CounterSinkTopHoleTrue + 0.3;
    OOBBCountersink3DComplete(OOBBSpacing*xVal4,OOBBSpacing*yVal4,top4,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal4,yVal4);   
    
        
        xVal5 = 1;
        yVal5 = 4;
        top5 = OOBBm3CounterSinkTopHoleTrue + 0.4;
        OOBBCountersink3DComplete(OOBBSpacing*xVal5,OOBBSpacing*yVal5,top5,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal5,yVal5);   
    
        
        xVal6 = 2;
        yVal6 = 1;
        top6 = OOBBm3CounterSinkTopHoleTrue + 0.5;
        OOBBCountersink3DComplete(OOBBSpacing*xVal6,OOBBSpacing*yVal6,top6,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal6,yVal6);   
    
        
        xVal7 = 2;
        yVal7 = 1.75;
        top7 = OOBBm3CounterSinkTopHoleTrue +0.6;
        OOBBCountersink3DComplete(OOBBSpacing*xVal7,OOBBSpacing*yVal7,top7,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal7,yVal7);   
    
        
        xVal8 = 2;
        yVal8 = 2.5;
        top8 = OOBBm3CounterSinkTopHoleTrue + 0.7;
        OOBBCountersink3DComplete(OOBBSpacing*xVal8,OOBBSpacing*yVal8,top8,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal8,yVal8);   
    
        
        xVal9 = 2;
        yVal9 = 3.25;
        top9 = OOBBm3CounterSinkTopHoleTrue + 0.8;
        OOBBCountersink3DComplete(OOBBSpacing*xVal9,OOBBSpacing*yVal9,top9,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal9,yVal9);   
    
    }
}