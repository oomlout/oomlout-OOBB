
///########
///########
///########  MAIN
///########
include <OLD01_OOBB-generate-HL-SM-03-03.scad>;


//servo holder negative (used in holder and base)
     
    //servoHolderCutoutSize = 6; //testing
    servoHolderCutoutSize = 1; //SG90
    
//servo bracket thickness (used in bracket and base)

    servoBracketThickness = 4;
    servoHolderExtraClearance = 3;
    

module OOBB_HL_SM_03_03(bearingSize){
	//######  HOLDER PART
	if( extra == "NONE" || extra=="HOLDER" || extra=="NOHORN"){
		//translate([0,OOBBSpacing * 3,0]){
        translate([0,0,0]){    
			OOBB_HL_SM_03_03_HOLDER(bearingSize);    
		}
	}
	//######  SERVO BRACKET
	if( extra == "NONE" || extra=="BRACKET" || extra=="NOHORN"){
		translate([OOBBSpacing * 2,OOBBSpacing * 2,0]){
			OOBB_HL_SM_03_03_BRACKET(bearingSize);
		}
	}
	//###### Servo Horn
	if( extra == "NONE" || extra=="HORN"){    
		translate([OOBBSpacing * 2,OOBBSpacing * 10,0]){    
			OOBB_HL_SM_03_03_SERVOHORN(bearingSize);
		}
	}
	//######  Base
	if( extra == "NONE" || extra=="BASE" || extra=="NOHORN"){    
		//translate([0,OOBBSpacing * 6,0]){ 
        translate([0,0,0]){    
		
			OOBB_HL_SM_03_03_BASE(bearingSize);
		} 
	}   
}

///########
///########
///########  HOLDER
///########
module OOBB_HL_SM_03_03_HOLDER(bearingSize){
	
    spacerHeight = 12;
	bearingHeight = bearingSize == 6803 ? 5 : 4;  //default to 6704
	totalHeight = spacerHeight + bearingHeight;
	capHeight = bearingHeight + 2;
    holderBaseHeight = 12;
    
        //side one
		translate([0,0,0]){
            difference(){
                OOBB_HL_SM_03_03_HOLDER_CAP(capHeight);
                OOBB_HL_SM_03_03_HOLDER_MAINHOLES(capHeight);
                OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize, capHeight -2);
                OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize, capHeight);
                //OOBB_HL_SM_03_03_HOLDER_SERVOBRACKETCLEARANCE();
        
            }
        }
        
        //holder base
        translate([0,50,capHeight-holderBaseHeight]){  //for printing
        //translate([0,0,-20]){    // fodevelopment
            difference(){
                OOBB_HL_SM_03_03_HOLDER_BASE(bearingSize, holderBaseHeight);
                OOBB_HL_SM_03_03_HOLDER_MAINHOLES(holderBaseHeight);
			}
        }
        
        
	  
}

module OOBB_HL_SM_03_03_HOLDER_CAP(capHeight){
    difference(){
        union(){
            OOBBPLOutline3D(3,3,capHeight);
            //extra end bits to keep servo bracket from sticking out the end.
            translate([-1,0,0]){
                OOBBPLOutline3D(3,3,capHeight);
            }
            translate([1,0,0]){
                OOBBPLOutline3D(3,3,capHeight);
            }
        }
        TOP = 3;
        RIGHT = 3;
        BOTTOM = 1;
        LEFT = 1;
        
        //RIGHT TOP
        OOBBInsertItemCoordRotate("M6BoltClearanceCorner",RIGHT,TOP,capHeight,height=4,rot=180);
        OOBBInsertItemMMRotate("M6BoltClearanceCorner",RIGHT*OOBBSpacing+1,TOP*OOBBSpacing,capHeight,height=4,rot=180);
        //LEFT TOP
        OOBBInsertItemCoordRotate("M6BoltClearanceCorner",LEFT,TOP,capHeight,height=4,rot=270);
        OOBBInsertItemMMRotate("M6BoltClearanceCorner",LEFT*OOBBSpacing-1,TOP*OOBBSpacing,capHeight,height=4,rot=270);
        //RIGHT BOTTOM
        OOBBInsertItemCoordRotate("M6BoltClearanceCorner",RIGHT,BOTTOM,capHeight,height=4,rot=90);
        OOBBInsertItemMMRotate("M6BoltClearanceCorner",RIGHT*OOBBSpacing+1,BOTTOM*OOBBSpacing,capHeight,height=4,rot=90);
        //LEFT BOTTOM
        OOBBInsertItemCoordRotate("M6BoltClearanceCorner",LEFT,BOTTOM,capHeight,height=4,rot=0);
        OOBBInsertItemMMRotate("M6BoltClearanceCorner",LEFT*OOBBSpacing-1,BOTTOM*OOBBSpacing,capHeight,height=4,rot=0);
    }
}

module OOBB_HL_SM_03_03_HOLDER_BASE(bearingSize, holderBaseHeight){
    difference(){
        union(){
            OOBBPLOutline3D(3,3,holderBaseHeight);
            //extra end bits to keep servo bracket from sticking out the end.
            translate([-1,0,0]){
                OOBBPLOutline3D(3,3,holderBaseHeight);
            }
            translate([1,0,0]){
                OOBBPLOutline3D(3,3,holderBaseHeight);
            }
        }
        if(bearingSize == 6704){
            OOBBInsertItemCoord("Bearing6704Little",2,2,holderBaseHeight);    
        }else if(bearingSize == 6803){
            OOBBInsertItemCoord("Bearing6803Little",2,2,holderBaseHeight);    
        }
        OOBBInsertItemCoord("ServoMicroHole",2,2,height=holderBaseHeight-2);
        
           
		//Servo Low
    OOBBInsertItemMM("M3NutCaptive",2.333*OOBBSpacing,3*OOBBSpacing+2,ooZ=OOBBNutM3Height,height=20);      
    //Servo High
    OOBBInsertItemMM("M3NutCaptive",2.333*OOBBSpacing,1*OOBBSpacing-2,ooZ=OOBBNutM3Height,height=20);      
    //Base Low
    
    	
    }
}


module OOBB_HL_SM_03_03_HOLDER_MAINHOLES(totalHeight){
//holes
    OOBBHole3D(1,1);
    OOBBHole3D(1,3);
    OOBBHole3D(3,1);
    OOBBHole3D(3,3);
    //Servo Low
    OOBBInsertItemMM("M3Hole",2.333*OOBBSpacing,3*OOBBSpacing+2);      
    //Servo High
    OOBBInsertItemMM("M3Hole",2.333*OOBBSpacing,1*OOBBSpacing-2);      
    //Base Low
    OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,1*OOBBSpacing-2);      
    //Base High
    OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,3*OOBBSpacing+2);
    
    
    
    
}




module OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize,totalHeight){
    if(bearingSize == 6704){
        OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
    }else if(bearingSize == 6803){
        OOBBInsertItemCoord("Bearing6803Hold",2,2,totalHeight);    
    }
}


module OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize,capHeight){
    
    //Servo Low
    //OOBBInsertItemMM90("M3NutCaptive",2.333*OOBBSpacing,1*OOBBSpacing-2,ooZ=nutHeight,height=nutGap);
    OOBBInsertItemMM("M3SocketHead",2.333*OOBBSpacing,3*OOBBSpacing+2,height=capHeight);      
      
    
    
    //Servo High
    //OOBBInsertItemMM90("M3NutCaptive",2.333*OOBBSpacing,3*OOBBSpacing+2,ooZ=nutHeight,height=nutGap);O
    OOBBInsertItemMM("M3SocketHead",2.333*OOBBSpacing,1*OOBBSpacing-2,height=capHeight);      
    
    
    //Base Low
    //OOBBInsertItemMM90("M3NutCaptive",1.667*OOBBSpacing,1*OOBBSpacing-2,ooZ=nutHeight,height=nutGap);
    OOBBInsertItemMM("M3NutCaptiveSingle",1.667*OOBBSpacing,1*OOBBSpacing-2,ooZ=capHeight);      
    OOBBInsertItemMM("M3NutCaptiveSingle",1.667*OOBBSpacing,1*OOBBSpacing-2,ooZ=capHeight-OOBBNutM3Height);      
    
    
    //Base High
    //OOBBInsertItemMM90("M3NutCaptive",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=nutHeight,height=nutGap);
    OOBBInsertItemMM("M3NutCaptiveSingle",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=capHeight);      
    OOBBInsertItemMM("M3NutCaptiveSingle",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=capHeight-OOBBNutM3Height);      
    
    

    
}




module OOBB_HL_SM_03_03_HOLDER_SERVOBRACKETCLEARANCE(){
    //clearance hole (bigger than needs to be at the moment)
    OOBBInsertItemCoord("ServoMicroHole",2,2,height=10);
    
    
    //servo holder negative
    
    //servoHolderCutoutSize = DEFINED AT TOP
    
    //servoHolderExtraClearance = DEFINED AT TOP;
    translate([2*OOBBSpacing,2*OOBBSpacing,0]){
        translate([-5.35,0,0]){
            OOBBPLOutline3DComplete(39+servoHolderExtraClearance,21,servoHolderCutoutSize);
        }
        //piece with screw holes
        translate([5,0,0]){
            OOBBPLOutline3DComplete(11+servoHolderExtraClearance,42+servoHolderExtraClearance*2,servoHolderCutoutSize);
        }       
    }
}

///########
///########
///########  BRACKET
///########
module OOBB_HL_SM_03_03_BRACKET(bearingSize){
	difference(){
		union(){
			//servo piece
			translate([-5.35,0,0]){
				//OOBBPLOutline3DComplete(33,20,6);
				linear_extrude(servoBracketThickness){
					square([33,20],true);
				}
			}
			//piece with screw holes
			translate([5,0,0]){
				//OOBBPLOutline3DComplete(10,42,6);
				linear_extrude(servoBracketThickness){
					square([10,42],true);
				}
			}
		}
		OOBBInsertItemCoord("ServoMicroMount",0,0,height=12);
		OOBBInsertItemMM("M3Slot",0.33*OOBBSpacing,1*OOBBSpacing+2);
		OOBBInsertItemMM("M3Slot",0.33*OOBBSpacing,-1*OOBBSpacing-2);
		//2.333*OOBBSpacing,1*OOBBSpacing-2
	}
}


///########
///########
///########  SERVOHORN
///########

	
botTubeHeight=6;
topTubeHeight = 3;
	
module OOBB_HL_SM_03_03_SERVOHORN(bearingSize){

	bearingTubeHeight = bearingSize==6803 ? 5 : 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
	bearingLittle = bearingSize==6803 ? OOBBBearing6803Little : OOBBBearing6704Little;
    totalHeight = botTubeHeight+bearingTubeHeight+topTubeHeight+9; //2+5+3+9=19
	
    
        //TOP PIECE
    //translate([0,0,0]){
    translate([0,0,-botTubeHeight-bearingTubeHeight]){
        
            difference(){
                union(){
                    //bottomTube
                    
                    
                    //topTube
                    translate([0,0,botTubeHeight+bearingTubeHeight+topTubeHeight/2  ]){
                        //cylinder(topTubeHeight,bearingLittle-0.5,bearingLittle-0.5,true);
                        cylinder(topTubeHeight,bearingInside+1,bearingInside+1,true);
                    }
                    //wheel
                    translate([0,0,totalHeight]){
                        rotate([0,180,0]){
                            OOBB_WH_SOLID(3);
                        }
                    }	
                }
                OOBB_HL_SM_03_03_SERVOHORN_HOLES(bearingSize);
            }
        }
    
        // BOTTOM PIECE
    translate([0,-OOBBSpacing*2-3,0]){
        difference(){
            union(){
                
                translate([0,0,0]){
                    //OOBBcylinder(botTubeHeight,bearingLittle-0.5,bearingLittle-0.5);
                    OOBBcylinder(botTubeHeight,bearingInside+1,bearingInside+1);
                }
                //bearingTube    
                
                
                translate([0,0,botTubeHeight+bearingTubeHeight/2  ]){
                    cylinder(bearingTubeHeight,bearingInside,bearingInside,true);
                }
                
                
            }
            OOBB_HL_SM_03_03_SERVOHORN_HOLES(bearingSize);
        }
    }    
	
}


module OOBB_HL_SM_03_03_SERVOHORN_HOLES(bearingSize){
    OOBB_screwClamp1X = 0; 
    OOBB_screwClamp2X = 0;
    OOBB_screwClamp1Y = 6.5;
    OOBB_screwClamp2Y = -6.5;
	
    
    
	bearingTubeHeight = bearingSize==6803 ? 5 : 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
	bearingLittle = bearingSize==6803 ? OOBBBearing6803Little : OOBBBearing6704Little;
    totalHeight = botTubeHeight+bearingTubeHeight+topTubeHeight+9; //2+5+3+9=19

		OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=4);
		OOBBInsertItemCoord("OOBBHole",0,0,height=4);
		
		
		//OOBBInsertItemCoord("ServoMicroHornCatch",0,0,4);
		OOBBInsertItemCoord("ServoMicroHornCatchSingleBottomInsertion",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
	
        //clamping screws
        OOBBInsertItemMM("M3SocketHead",OOBB_screwClamp1X,OOBB_screwClamp1Y,totalHeight);
        OOBBInsertItemMM("M3Hole",OOBB_screwClamp1X,OOBB_screwClamp1Y);
        OOBBInsertItemMM("M3NutCaptiveSingle",OOBB_screwClamp1X,OOBB_screwClamp1Y,OOBBNutM3Height);
        
        
        OOBBInsertItemMM("M3SocketHead",OOBB_screwClamp2X,OOBB_screwClamp2Y,totalHeight);
        OOBBInsertItemMM("M3Hole",OOBB_screwClamp2X,OOBB_screwClamp2Y);
        OOBBInsertItemMM("M3NutCaptiveSingle",OOBB_screwClamp2X,OOBB_screwClamp2Y,OOBBNutM3Height);
	
        //blank for screw insertion
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,1*OOBBSpacing+1);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,1*OOBBSpacing+2);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,1*OOBBSpacing+3);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,1*OOBBSpacing+4);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,1*OOBBSpacing+5);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,1*OOBBSpacing+6);
		
        //blank for screw insertion
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,-1*OOBBSpacing-1);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,-1*OOBBSpacing-2);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,-1*OOBBSpacing-3);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,-1*OOBBSpacing-4);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,-1*OOBBSpacing-5);
        OOBBInsertItemMM("OOBBHole",0*OOBBSpacing,-1*OOBBSpacing-6);
    
}

///########
///########
///########  BASE
///########
module OOBB_HL_SM_03_03_BASE(bearingSize){
	baseHeight= 22;   
	union(){ 
		difference(){
			union(){
				OOBBPLOutline3D(3,3,baseHeight);
				//extra end bits to keep servo bracket from sticking out the end.
				translate([-1,0,0]){
					OOBBPLOutline3D(3,3,baseHeight);
				}
				translate([1,0,0]){
					OOBBPLOutline3D(3,3,baseHeight);
				}
			}

            
            OOBB_HL_SM_03_03_HOLDER_MAINHOLES(baseHeight);
            
			OOBBInsertItemCoord("ServoWireClearance",3,2,ooZ=baseHeight);      
			OOBBInsertItemCoord("ServoMicroHole",2,2,height=baseHeight);
			
            OOBBInsertItemMM("M3SocketHeadUpsideDown",1.667*OOBBSpacing,1*OOBBSpacing-2 ,ooZ=0);  
			
            OOBBInsertItemMM("M3SocketHeadUpsideDown",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=0);
			
           
			//servo holder negative
            
            //servoHolderCutoutSize = DEFINED AT TOP
            
            servoHolderCutoutDepth=14;
            
			translate([2*OOBBSpacing,2*OOBBSpacing,baseHeight-servoHolderCutoutDepth]){
				translate([-5.35,0,0]){
					OOBBPLOutline3DComplete(39+servoHolderExtraClearance,21,servoHolderCutoutDepth);
				}
				//piece with screw holes
				translate([5,0,0]){
					OOBBPLOutline3DComplete(11+servoHolderExtraClearance,42+servoHolderExtraClearance*2,servoHolderCutoutDepth);      
				}        
				
			}

		}        
		//extra block added to conceal servo
		translate([OOBBSpacing * 1-6, OOBBSpacing*2,0]){
			linear_extrude(10){
				square([2,30],true);
			}
		}
	}    
}

