    
    


if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
}else if(m=="TEST-SERVOHORN"){
    TEST_SERVOHORN();    
}else if(m=="TEST-BEARING6704-OUTSIDE"){
    TEST_BEARING6704();   
}else if(m=="TEST-BEARING6704-MIDDLE"){
    TEST_BEARING6704_MIDDLE();    
}else if(m=="TEST-BEARING6803-OUTSIDE"){
    TEST_BEARING6803();    
}else if(m=="TEST-BEARING6803-MIDDLE"){
    TEST_BEARING6803_MIDDLE();    
}else if(m=="TEST-COUNTERSINKM3"){
    TEST_COUNTERSINKM3();    
}else if(m=="TEST-SOCKETHEADM3"){
    TEST_SOCKETHEADM3();    
}else if(m=="TEST-SERVOMICROHORNCATCH"){
    TEST_SERVOMICROHORNCATCH();    
}else if(m=="TEST-SERVOMICROHORNCATCHSINGLE"){
    TEST_SERVOMICROHORNCATCHSINGLE();    
}else if(m=="TEST-SERVOMICROHORNCATCHSINGLECONTINUOUS"){
    TEST_SERVOMICROHORNCATCHSINGLECONTINUOUS();    
}else if(m=="TEST-FIRSTLAYERLIP"){
    TEST_FIRSTLAYERLIP();    
}else if(m=="TEST-OOEBNORMAL"){
    TEST_OOEBNORMAL();    
}

module TEST_FIRSTLAYERLIP(){
    difference(){
        OOBBPLOutline3D(3, 2, 6);
    }
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


module TEST_BEARING6704_MIDDLE(){
    
    union(){
        OOBBPLOutline3D(5, 7, 3);
        
        OOBBHole3DRadiusSimple(25,25,OOBBBearing6704InsideTrue+0,10,10);
        OOBBHole3DRadiusSimple(25,25,OOBBBearing6704Little+0,5,5);
        
        OOBBHole3DRadiusSimple(25,55,OOBBBearing6704InsideTrue-0.050,10,10);
        OOBBHole3DRadiusSimple(25,55,OOBBBearing6704Little+0,5,5);
        
        OOBBHole3DRadiusSimple(25,85,OOBBBearing6704InsideTrue-0.1,10,10);
        OOBBHole3DRadiusSimple(25,85,OOBBBearing6704Little+0,5,5);
        
        OOBBHole3DRadiusSimple(55,25,OOBBBearing6704InsideTrue-0.15,10,10);
        OOBBHole3DRadiusSimple(55,25,OOBBBearing6704Little+0,5,5);
        
        OOBBHole3DRadiusSimple(55,55,OOBBBearing6704InsideTrue-0.2,10,10);
        OOBBHole3DRadiusSimple(55,55,OOBBBearing6704Little+0,5,5);
        
        
    }
}
    

module TEST_BEARING6803(){
    
    difference(){
        OOBBPLOutline3D(5, 7, 7);
        
        OOBBHole3DRadiusComplete(25,25,OOBBBearing6803OutsideHoldTrue,5,7);
        OOBBHole3DRadiusComplete(25,25,OOBBBearing6803Little,100,50);
        
        OOBBHole3DRadiusComplete(25,55,OOBBBearing6803OutsideHoldTrue+.1,5,7);
        OOBBHole3DRadiusComplete(25,55,OOBBBearing6803Little,100,50);
        
        OOBBHole3DRadiusComplete(25,85,OOBBBearing6803OutsideHoldTrue+.2,5,7);
        OOBBHole3DRadiusComplete(25,85,OOBBBearing6803Little,100,50);
        
        
        OOBBHole3DRadiusComplete(55,25,OOBBBearing6803OutsideHoldTrue+.3,5,7);
        OOBBHole3DRadiusComplete(55,25,OOBBBearing6803Little,100,50);
        
        OOBBHole3DRadiusComplete(55,55,OOBBBearing6803OutsideHoldTrue+.4,5,7);
        OOBBHole3DRadiusComplete(55,55,OOBBBearing6803Little,100,50);
        
    }
}


module TEST_BEARING6803_MIDDLE(){
    
    union(){
        OOBBPLOutline3D(5, 7, 3);
        
        OOBBHole3DRadiusSimple(25,25,OOBBBearing6803InsideTrue+0,10,10);
        OOBBHole3DRadiusSimple(25,25,OOBBBearing6803Little+0,5,5);
        
        OOBBHole3DRadiusSimple(25,55,OOBBBearing6803InsideTrue-0.050,10,10);
        OOBBHole3DRadiusSimple(25,55,OOBBBearing6803Little+0,5,5);
        
        OOBBHole3DRadiusSimple(25,85,OOBBBearing6803InsideTrue-0.1,10,10);
        OOBBHole3DRadiusSimple(25,85,OOBBBearing6803Little+0,5,5);
        
        OOBBHole3DRadiusSimple(55,25,OOBBBearing6803InsideTrue-0.15,10,10);
        OOBBHole3DRadiusSimple(55,25,OOBBBearing6803Little+0,5,5);
        
        OOBBHole3DRadiusSimple(55,55,OOBBBearing6803InsideTrue-0.2,10,10);
        OOBBHole3DRadiusSimple(55,55,OOBBBearing6803Little+0,5,5);
        
        
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
        height = 1.9; //true is 1.75
        OOBBCountersink3DComplete(OOBBSpacing*xVal1,OOBBSpacing*yVal1,top,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal1,yVal1);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal1,yVal1,ooZ=OOBBNutM3Height);   
    
        
        xVal2 = 1;
        yVal2 = 1.75;
        top2 = OOBBm3CounterSinkTopHoleTrue + 0.1;
        OOBBCountersink3DComplete(OOBBSpacing*xVal2,OOBBSpacing*yVal2,top2,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal2,yVal2);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal2,yVal2,ooZ=OOBBNutM3Height);
        
        xVal3 = 1;
        yVal3 = 2.5;
        top3 = OOBBm3CounterSinkTopHoleTrue + 0.2;
        OOBBCountersink3DComplete(OOBBSpacing*xVal3,OOBBSpacing*yVal3,top3,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal3,yVal3);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal3,yVal3,ooZ=OOBBNutM3Height);
    
        
        xVal4 = 1;
        yVal4 = 3.25;
        top4 = OOBBm3CounterSinkTopHoleTrue + 0.3;
    OOBBCountersink3DComplete(OOBBSpacing*xVal4,OOBBSpacing*yVal4,top4,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal4,yVal4);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal4,yVal4,ooZ=OOBBNutM3Height);
        
        xVal5 = 1;
        yVal5 = 4;
        top5 = OOBBm3CounterSinkTopHoleTrue + 0.4;
        OOBBCountersink3DComplete(OOBBSpacing*xVal5,OOBBSpacing*yVal5,top5,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal5,yVal5);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal5,yVal5,ooZ=OOBBNutM3Height);
        
        xVal6 = 2;
        yVal6 = 1;
        top6 = OOBBm3CounterSinkTopHoleTrue + 0.5;
        OOBBCountersink3DComplete(OOBBSpacing*xVal6,OOBBSpacing*yVal6,top6,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal6,yVal6);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal6,yVal6,ooZ=OOBBNutM3Height);
        
        
        //CURRENT CHOICE
        xVal7 = 2;
        yVal7 = 1.75;
        top7 = OOBBm3CounterSinkTopHoleTrue +0.6;
        OOBBCountersink3DComplete(OOBBSpacing*xVal7,OOBBSpacing*yVal7,top7,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal7,yVal7);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal7,yVal7,ooZ=OOBBNutM3Height);
        
        xVal8 = 2;
        yVal8 = 2.5;
        top8 = OOBBm3CounterSinkTopHoleTrue + 0.7;
        OOBBCountersink3DComplete(OOBBSpacing*xVal8,OOBBSpacing*yVal8,top8,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal8,yVal8);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal8,yVal8,ooZ=OOBBNutM3Height);
        
        xVal9 = 2;
        yVal9 = 3.25;
        top9 = OOBBm3CounterSinkTopHoleTrue + 0.8;
        OOBBCountersink3DComplete(OOBBSpacing*xVal9,OOBBSpacing*yVal9,top9,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal9,yVal9);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal9,yVal9,ooZ=OOBBNutM3Height);
    }
}



module TEST_SOCKETHEADM3(){
    difference(){
        OOBBPLOutline3D(2, 4, 10);
        
        
        
        xVal1 = 1;
        yVal1 = 1;
        top = OOBBm3SocketHeadHoleTrue;
        bot = OOBBm3SocketHeadHoleTrue;
        height = 3; //true is 1.75
        OOBBCountersink3DComplete(OOBBSpacing*xVal1,OOBBSpacing*yVal1,top,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal1,yVal1);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal1,yVal1,ooZ=OOBBNutM3Height);   
    
        
        xVal2 = 1;
        yVal2 = 1.75;
        top2 = OOBBm3SocketHeadHoleTrue + 0.1;
        OOBBCountersink3DComplete(OOBBSpacing*xVal2,OOBBSpacing*yVal2,top2,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal2,yVal2);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal2,yVal2,ooZ=OOBBNutM3Height);
        
        xVal3 = 1;
        yVal3 = 2.5;
        top3 = OOBBm3SocketHeadHoleTrue + 0.2;
        OOBBCountersink3DComplete(OOBBSpacing*xVal3,OOBBSpacing*yVal3,top3,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal3,yVal3);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal3,yVal3,ooZ=OOBBNutM3Height);
    
        
        xVal4 = 1;
        yVal4 = 3.25;
        top4 = OOBBm3SocketHeadHoleTrue + 0.3;
    OOBBCountersink3DComplete(OOBBSpacing*xVal4,OOBBSpacing*yVal4,top4,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal4,yVal4);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal4,yVal4,ooZ=OOBBNutM3Height);
        
        xVal5 = 1;
        yVal5 = 4;
        top5 = OOBBm3SocketHeadHoleTrue + 0.4;
        OOBBCountersink3DComplete(OOBBSpacing*xVal5,OOBBSpacing*yVal5,top5,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal5,yVal5);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal5,yVal5,ooZ=OOBBNutM3Height);
        
        xVal6 = 2;
        yVal6 = 1;
        top6 = OOBBm3SocketHeadHoleTrue + 0.5;
        OOBBCountersink3DComplete(OOBBSpacing*xVal6,OOBBSpacing*yVal6,top6,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal6,yVal6);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal6,yVal6,ooZ=OOBBNutM3Height);
        
        
        //CURRENT CHOICE
        xVal7 = 2;
        yVal7 = 1.75;
        top7 = OOBBm3SocketHeadHoleTrue +0.6;
        OOBBCountersink3DComplete(OOBBSpacing*xVal7,OOBBSpacing*yVal7,top7,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal7,yVal7);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal7,yVal7,ooZ=OOBBNutM3Height);
        
        xVal8 = 2;
        yVal8 = 2.5;
        top8 = OOBBm3SocketHeadHoleTrue + 0.7;
        OOBBCountersink3DComplete(OOBBSpacing*xVal8,OOBBSpacing*yVal8,top8,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal8,yVal8);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal8,yVal8,ooZ=OOBBNutM3Height);
        
        xVal9 = 2;
        yVal9 = 3.25;
        top9 = OOBBm3SocketHeadHoleTrue + 0.8;
        OOBBCountersink3DComplete(OOBBSpacing*xVal9,OOBBSpacing*yVal9,top9,bot,height,10);
        OOBBInsertItemCoord("M3Hole",xVal9,yVal9);   
        OOBBInsertItemCoord("M3NutCaptiveSingle",xVal9,yVal9,ooZ=OOBBNutM3Height);
    }
}

module TEST_SERVOMICROHORNCATCH(){
    difference(){
        OOBBPLOutline3D(3, 4.5, 3.75);
        
        //1
        translate([OOBBSpacing *2,OOBBSpacing*1,0]){
            union(){
                extension=0;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,-1.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      #square([15,5.25+extension],true);
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }translate([-7.5-(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
        
        
        //2
        translate([OOBBSpacing *2,OOBBSpacing*2,0]){
            union(){
                extension=0.1;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      #square([15,5.25+extension],true);
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }translate([-7.5-(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
        
        //3
        translate([OOBBSpacing *2,OOBBSpacing*3,0]){
            union(){
                extension=0.2;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      #square([15,5.25+extension],true);
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }translate([-7.5-(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
        
        //4
        translate([OOBBSpacing *2,OOBBSpacing*4,0]){
            union(){
                extension=0.3;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      #square([15,5.25+extension],true);
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }translate([-7.5-(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
    }
}

module TEST_SERVOMICROHORNCATCHSINGLE(){
      difference(){
          translate([OOBBSpacing*1,0,0]){
            OOBBPLOutline3D(2, 4.5, 3.75);
          }
        
        //1
        translate([OOBBSpacing *2,OOBBSpacing*1,0]){
          union(){
                extension=0;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
        
        
        //2
        translate([OOBBSpacing *2,OOBBSpacing*2,0]){
            union(){
                extension=0.1;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
        
        //3
        translate([OOBBSpacing *2,OOBBSpacing*3,0]){
            union(){
                extension=0.2;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
        
        //4
        translate([OOBBSpacing *2,OOBBSpacing*4,0]){
            union(){
                extension=0.3;
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(1.5){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
        
    }
}




module TEST_SERVOMICROHORNCATCHSINGLECONTINUOUS(){
      difference(){
          translate([OOBBSpacing*1,0,0]){
            OOBBPLOutline3D(2, 1, 4.25);
            //OOBBPLOutline3D(2, 4.5, 3.75);
          }
        
        //1
            TS(0,1);
            //TS(0.1,2);
            //TS(0.2,3);
            //TS(0.3,4);
    }
}

module TS(extension,shift){
    translate([OOBBSpacing *2,OOBBSpacing*shift,0]){
          union(){
                
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2.5]){
                   rad=7.4/2; 
                   linear_extrude(2){
                      
                      translate([4/2,0,0]){
                        square([4,7.1+extension],true);
                      }
                      
                      translate([5.5/2,0,0]){
                        square([8.5,6.1+extension],true);
                      }
                      
                      translate([8.5+(9/2),0,0]){
                        square([14,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
}

module TEST_OOEBNORMAL(){
    
    //mode="";
    mode="3DPR";
    
    if(mode=="3DPR"){
        translate([0,0,17]){
            rotate([0,180,0]){
                TEST_OOEBNORMAL_TOP();
            }
        }
        translate([OS*3,0,0]){
            rotate([0,180,0]){
                TEST_OOEBNORMAL_BOTTOM();
            }
        }    
    }else{
        TEST_OOEBNORMAL_TOP();
        TEST_OOEBNORMAL_BOTTOM();
    }
}

module TEST_OOEBNORMAL_TOP(){
    difference(){
        translate([-OS*2,-OS*2,0]){
            OOBBPLOutline3D(3, 3, 17);
        }
        TEXT_OOEBNORMAL_HOLES();
    }
}

module TEST_OOEBNORMAL_BOTTOM(){
    difference(){
        translate([-OS*2,-OS*2,-6]){
            OOBBPLOutline3D(3, 3, 6);
        }
        TEXT_OOEBNORMAL_HOLES();
    }
}

module TEXT_OOEBNORMAL_HOLES(){
    he = -6;
    st = -16;
    sp = 8;
    xx1 = 0;
    #OOBBInsertItemMM("OOEBNormalCableUpsideDown",xx1,st+0*sp,he,ex=0.1);
    #OOBBInsertItemMM("OOEBNormalCableUpsideDown",xx1,st+1*sp,he,ex=0.2);
    #OOBBInsertItemMM("OOEBNormalCableUpsideDown",xx1,st+2*sp,he,ex=0.3);
    #OOBBInsertItemMM("OOEBNormalCableUpsideDown",xx1,st+3*sp,he,ex=0.4);
    #OOBBInsertItemMM("OOEBNormalCableUpsideDown",xx1,st+4*sp,he,ex=0.5);
    
}