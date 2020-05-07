
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
    servoHolderExtraClearance = 0.5;
    OOBBbaseBoltOffset = 8;
    
    //full size servo variables
    servoBracketThicknessFull = 4 +2.5; //add the thickness of the holder 

module OOBB_HL_SM_03_03(bearingSize){
	//######  HOLDER PART
	if( extra == "NONE" || extra=="HOLDER"  || extra=="HOLDERA"  || extra=="HOLDERB" || extra=="NOHORN"){
		translate([0,OOBBSpacing * 3,0]){
        //translate([0,0,0]){    
			OOBB_HL_SM_03_03_HOLDER(bearingSize);    
		}
	}
	//######  SERVO BRACKET
	if( extra == "NONE" || extra=="BRACKET" || extra=="NOHORN"){
		translate([OOBBSpacing * 2,OOBBSpacing * 2,0]){
        //translate([0,0,0]){ 
			OOBB_HL_SM_03_03_BRACKET(bearingSize);
		}
	}
	//###### Servo Horn
	if( extra == "NONE" || extra=="HORN"){    
		translate([OOBBSpacing * 5,OOBBSpacing * 4,0]){    
		//translate([0,0,0]){    
			OOBB_HL_SM_03_03_SERVOHORN(bearingSize);
		}
	}
	//######  Base
	if( extra == "NONE" || extra=="BASE" || extra=="NOHORN"){    
		translate([OOBBSpacing * 3 + 5,OOBBSpacing * 6,0]){ 
        //translate([0,0,0]){    
            
                OOBB_HL_SM_03_03_BASE(bearingSize);
            
		} 
	}   
}


module OOBB_HL_SE_05_03(bearingSize){
	//######  HOLDER PART
	if( extra == "NONE" || extra=="HOLDER"  || extra=="HOLDERA"  || extra=="HOLDERB" || extra=="NOHORN"){
		translate([OOBBSpacing * 1,OOBBSpacing * 2,0]){
        //translate([0,0,0]){    
			OOBB_HL_SE_05_03_HOLDER(bearingSize);    
		}
	}
	//######  SERVO BRACKET
	if( extra == "NONE" || extra=="BRACKET" || extra=="NOHORN"){
		translate([OOBBSpacing * 3,OOBBSpacing * 8.5,0]){
        //translate([0,0,0]){ 
			OOBB_HL_SE_05_03_BRACKET(bearingSize);
		}
	}
	//###### Servo Horn
	if( extra == "NONE" || extra=="HORN"){    
		translate([OOBBSpacing * 6,OOBBSpacing * 4,0]){    
		//translate([0,0,0]){    
			OOBB_HL_SE_05_03_SERVOHORN(bearingSize);
		}
	}
	//######  Base
	if( extra == "NONE" || extra=="BASE" || extra=="NOHORN"){    
		translate([OOBBSpacing * 3 + 5,OOBBSpacing * 6,0]){ 
        //translate([0,0,0]){    
            
               // OOBB_HL_SM_03_03_BASE(bearingSize);
            
		} 
	}   
}



//////////////////////////////////////////////////// SM-03-03




///########
///########
///########  HOLDER
///########
module OOBB_HL_SM_03_03_HOLDER(bearingSize){
	
    spacerHeight = 12;
    extraCapHeight = 5;  //this is the amount to stretch the cap
	bearingHeight = bearingSize == 6803 ? 5 : 4;  //default to 6704
	totalHeight = spacerHeight + bearingHeight;
	capHeight = bearingHeight + 2 + extraCapHeight;
    holderBaseHeight = 12;
    
    if( extra == "NONE"|| extra=="HOLDER" || extra=="HOLDERA" ){     
        translate([OOBBSpacing*2,OOBBSpacing*2.25,capHeight]){
            rotate([0,180,0]){
                translate([-OOBBSpacing*2,-OOBBSpacing*2,0]){
                    difference(){
                            OOBB_HL_SM_03_03_HOLDER_CAP(capHeight,extraCapHeight);
                            OOBB_HL_SM_03_03_HOLDER_MAINHOLES(capHeight);
                            OOBB_HL_SM_03_03_HOLDER_MAINHOLES_CAPONLY(capHeight);
                            OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize, capHeight -2);
                            OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize, capHeight);
                            
                        }
                    }
                }
            }
        }
    if( extra == "NONE"|| extra=="HOLDER" || extra=="HOLDERB" ){     
        //holder base
        translate([0,50,capHeight-holderBaseHeight]){  //for printing
        //translate([0,0,-20]){    // fodevelopment
            difference(){
                OOBB_HL_SM_03_03_HOLDER_BASE(bearingSize, holderBaseHeight, extraCapHeight);
                OOBB_HL_SM_03_03_HOLDER_MAINHOLES(holderBaseHeight);
                OOBB_HL_SM_03_03_HOLDER_MAINHOLES_CAPONLY(holderBaseHeight);
			}
        }
    }   
        
	  
}

module OOBB_HL_SM_03_03_HOLDER_CAP(capHeight,extraCapHeight){
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
        
        //Extra bearing clearance
        translate([OOBBSpacing*2,OOBBSpacing*2,0]){
                cylinder(extraCapHeight, OOBBBearing6803OutsideHold+1, OOBBBearing6803OutsideHold+1); //.clearance given in base
            }
        
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

module OOBB_HL_SM_03_03_HOLDER_BASE(bearingSize, holderBaseHeight,extraCapHeight){
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
            //bearing push up piece
            translate([OOBBSpacing*2,OOBBSpacing*2,holderBaseHeight]){
                cylinder(extraCapHeight, OOBBBearing6803OutsideHold+1-.2, OOBBBearing6803OutsideHold+1-.2); //.2 extra clearance guess Bearing push up piece
            }
        }
        if(bearingSize == 6704){
            OOBBInsertItemCoord("Bearing6704Little",2,2,holderBaseHeight);    
        }else if(bearingSize == 6803){
            OOBBInsertItemCoord("Bearing6803Little",2,2,holderBaseHeight);    
        }
           
		//Servo Low
    OOBBInsertItemMM("M3NutCaptive",2*OOBBSpacing,3*OOBBSpacing+2,ooZ=OOBBNutM3Height,height=20);      
    //Servo High
    OOBBInsertItemMM("M3NutCaptive",2*OOBBSpacing,1*OOBBSpacing-2,ooZ=OOBBNutM3Height,height=20);      
   
    OOBBInsertItemMM("M3NutCaptive",3*OOBBSpacing+2,2*OOBBSpacing,ooZ=OOBBNutM3Height,height=20);      
    
    OOBBInsertItemMM("M3NutCaptive",1*OOBBSpacing-2,2*OOBBSpacing,ooZ=holderBaseHeight-2,height=20);      
    
    
    
    OOBBInsertItemCoord("ServoMicroHole",2,2,height=holderBaseHeight-3);
    OOBB_HL_SM_03_03_BASE_HOLES();
    
    nutHeight = 4;
    OOBBInsertItemMMRotate("M3NutCaptiveSideInsert",2*OOBBSpacing-OOBBbaseBoltOffset,3*OOBBSpacing,ooZ=nutHeight+3,height=nutHeight,rot=0);
    OOBBInsertItemMMRotate("M3NutCaptiveSideInsert",2*OOBBSpacing-OOBBbaseBoltOffset,1*OOBBSpacing,ooZ=nutHeight+3,height=nutHeight,rot=180);
               
    	
    }
}


module OOBB_HL_SM_03_03_HOLDER_MAINHOLES_CAPONLY(totalHeight){

    OOBBInsertItemMM("M3Hole",3*OOBBSpacing+2,2*OOBBSpacing);      
    OOBBInsertItemMM("M3Hole",1*OOBBSpacing-2,2*OOBBSpacing);      
 //Servo Low
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing,3*OOBBSpacing+2);      
    //Servo High
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing,1*OOBBSpacing-2);   
    
}

module OOBB_HL_SM_03_03_HOLDER_MAINHOLES(totalHeight){
//holes
    OOBBHole3D(1,1);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-1,1*OOBBSpacing-1);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-2,1*OOBBSpacing-2);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-3,1*OOBBSpacing-3);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-4,1*OOBBSpacing-4);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-5,1*OOBBSpacing-5);
    
    
    OOBBHole3D(1,3);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-1,3*OOBBSpacing+1);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-2,3*OOBBSpacing+2);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-3,3*OOBBSpacing+3);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-4,3*OOBBSpacing+4);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-5,3*OOBBSpacing+5);
    
    
    OOBBHole3D(3,1);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+1,1*OOBBSpacing-1);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+2,1*OOBBSpacing-2);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+3,1*OOBBSpacing-3);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+4,1*OOBBSpacing-4);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+5,1*OOBBSpacing-5);
    
    
    OOBBHole3D(3,3);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+1,3*OOBBSpacing+1);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+2,3*OOBBSpacing+2);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+3,3*OOBBSpacing+3);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+4,3*OOBBSpacing+4);
    OOBBInsertItemMM("OOBBHole",3*OOBBSpacing+5,3*OOBBSpacing+5);
    
    
    
    
}




module OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize,totalHeight){
    if(bearingSize == 6704){
        OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
    }else if(bearingSize == 6803){
        OOBBInsertItemCoord("Bearing6803Hold",2,2,totalHeight);    
    }
}


module OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize,capHeight){
    nutHeight = OOBBNutM3Height;
    nutGap = nutHeight;
    //Servo Low
    //OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight);
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight-2);
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight); //to allow for using 30mm bolts      
    //Servo High
    //OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight);
    //to allow for using 30mm bolts
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight-2); OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight); //Retaining Screws
    OOBBInsertItemMM("M3SocketHead",3*OOBBSpacing+2,2*OOBBSpacing,height=capHeight);      
    OOBBInsertItemMM("M3SocketHead",1*OOBBSpacing-2,2*OOBBSpacing,height=capHeight);      
    
    

    
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
			translate([0,0,0]){
				//OOBBPLOutline3DComplete(10,42,6);
				linear_extrude(servoBracketThickness){
					square([10,42],true);
				}
			}
		}
		OOBBInsertItemCoord("ServoMicroMount",0,0,height=12);
		OOBBInsertItemMM("M3Slot",0*OOBBSpacing,1*OOBBSpacing+2);
		OOBBInsertItemMM("M3Slot",0*OOBBSpacing,-1*OOBBSpacing-2);
		//2.333*OOBBSpacing,1*OOBBSpacing-2
	}
}


///########
///########
///########  SERVOHORN
///########

	
botTubeHeight=5;
topTubeHeight = 4;
	
module OOBB_HL_SM_03_03_SERVOHORN(bearingSize){

	bearingTubeHeight = bearingSize==6803 ? 5 : 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
	bearingLittle = bearingSize==6803 ? OOBBBearing6803Little : OOBBBearing6704Little;
    totalHeight = botTubeHeight+bearingTubeHeight+topTubeHeight+9; //2+5+3+9=19
	
    topHeight = topTubeHeight + 9; //9 is wheel width
    bottomHeight = botTubeHeight + bearingTubeHeight;
        
    
    
        //TOP PIECE
    //translate([0,0,0]){
    translate([0,0,topHeight/2]){  //move to zero height
        rotate([0,180,0]){ //rotate 180 to print upside down
            translate([0,0,-bottomHeight - topHeight/2]){ //shift so centred for flip
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
                               //bearing tube
                        translate([0,0,botTubeHeight+bearingTubeHeight/2  ]){
                            cylinder(bearingTubeHeight,bearingInside,bearingInside,true);
                            } 
                    }
                    OOBB_HL_SM_03_03_SERVOHORN_HOLES(bearingSize);
                }
            }
        }

    }
    
        // BOTTOM PIECE
    //translate([0,0,0]){
    translate([0,-OOBBSpacing*2-3,5]){
        rotate([0,180,0]){//rotate 180 to print upside down
            difference(){
                union(){
                    
                    translate([0,0,0]){
                        //OOBBcylinder(botTubeHeight,bearingLittle-0.5,bearingLittle-0.5);
                        OOBBcylinder(botTubeHeight,bearingInside+1,bearingInside+1);
                    }
                    //bearingTube    
                    
                    
                    
                    
                    
                }
                OOBB_HL_SM_03_03_SERVOHORN_HOLES(bearingSize);
            }
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
		
		
	//for tg90
	//OOBBInsertItemCoord("ServoMicroHornCatchSingleBottomInsertion",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
	//for continuousRotation
    OOBBInsertItemCoord("ServoMicroHornCatchSingleContinuousBottomInsertion",0,0,3.5); 
    
    
        //clamping screws
        OOBBInsertItemMM("M3SocketHead",OOBB_screwClamp1X,OOBB_screwClamp1Y,totalHeight);
        OOBBInsertItemMM("M3Hole",OOBB_screwClamp1X,OOBB_screwClamp1Y);
        OOBBInsertItemMM("M3NutCaptiveSingle",OOBB_screwClamp1X,OOBB_screwClamp1Y,OOBBNutM3Height);
        
        
        OOBBInsertItemMM("M3SocketHead",OOBB_screwClamp2X,OOBB_screwClamp2Y,totalHeight);
        OOBBInsertItemMM("M3Hole",OOBB_screwClamp2X,OOBB_screwClamp2Y);
        OOBBInsertItemMM("M3NutCaptiveSingle",OOBB_screwClamp2X,OOBB_screwClamp2Y,OOBBNutM3Height);

        /*
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
        */
}

///########
///########
///########  BASE
///########
module OOBB_HL_SM_03_03_BASE(bearingSize){
	baseHeight= 18;
    servoHolderCutoutDepth=4.5;   
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
			
            
            //CUTOUTS for servo nut
            //Servo Low
            OOBBInsertItemMM("M3NutClearanceSlide",2*OOBBSpacing,3*OOBBSpacing+2,ooZ=baseHeight-servoHolderCutoutDepth,height=5);      
            //Servo High
            OOBBInsertItemMM("M3NutClearanceSlide",2*OOBBSpacing,1*OOBBSpacing-2,ooZ=baseHeight-servoHolderCutoutDepth,height=5);   
 
            
            
            //OOBBbaseBoltOffset = DEFINED AT TOP
            
            
            
            OOBBInsertItemMM("M3SocketHeadUpsideDown",2*OOBBSpacing-OOBBbaseBoltOffset,1*OOBBSpacing,ooZ=0);  
            OOBBInsertItemMM("M3SocketHeadUpsideDown",2*OOBBSpacing-OOBBbaseBoltOffset,3*OOBBSpacing,ooZ=0);
            OOBB_HL_SM_03_03_BASE_HOLES();
           
			//servo holder negative
            
            //servoHolderCutoutSize = DEFINED AT TOP
            //servoHolderExtraClearance = DEFINED AT TOP
            
            
            
			translate([2*OOBBSpacing,2*OOBBSpacing,baseHeight-servoHolderCutoutDepth]){
                OOBB_HL_SM_03_03_BASE_SERVOBRACKETCLEARANCE(servoHolderCutoutDepth);               
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

module OOBB_HL_SM_03_03_BASE_HOLES(){
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing-OOBBbaseBoltOffset,1*OOBBSpacing,ooZ=0);
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing-OOBBbaseBoltOffset,3*OOBBSpacing,ooZ=0);
}

module OOBB_HL_SM_03_03_BASE_SERVOBRACKETCLEARANCE(servoHolderCutoutDepth){
    OOBB_HL_SM_03_03_BASE_SERVOBRACKET(servoHolderCutoutDepth);
    translate([0.5,0,0]){
        OOBB_HL_SM_03_03_BASE_SERVOBRACKET(servoHolderCutoutDepth);
    }
    
    translate([-0.5,0,0]){
        OOBB_HL_SM_03_03_BASE_SERVOBRACKET(servoHolderCutoutDepth);
    }
    
    translate([0,0.5,0]){
        OOBB_HL_SM_03_03_BASE_SERVOBRACKET(servoHolderCutoutDepth);
    }
    
    translate([0,-0.5,0]){
        OOBB_HL_SM_03_03_BASE_SERVOBRACKET(servoHolderCutoutDepth);
    }
     
}

module OOBB_HL_SM_03_03_BASE_SERVOBRACKET(servoHolderCutoutDepth){

 //copy and pasted from bracket section, extrude height changed
              translate([-5.35,0,0]){
				//OOBBPLOutline3DComplete(33,20,6);
				linear_extrude(servoHolderCutoutDepth){
					square([33,20],true);
				}
			}
			//piece with screw holes
			translate([0,0,0]){
				//OOBBPLOutline3DComplete(10,42,6);
				linear_extrude(servoHolderCutoutDepth){
					square([10,42],true);
				}
			}
        }


//////////////////////////////////////////////////// SE-05-03
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////



///########
///########
///########  HOLDER
///########
        
baseCapHeight = 5;        
        
module OOBB_HL_SE_05_03_HOLDER(bearingSize){
	
    spacerHeight = 12;
    extraCapHeight = baseCapHeight+7;  //this is the amount to stretch the cap
	bearingHeight = bearingSize == 6803 ? 5 : 4;  //default to 6704
	totalHeight = spacerHeight + bearingHeight;
	capHeight = bearingHeight + 2 + baseCapHeight;
    holderBaseHeight = 12;
    if( extra == "NONE"|| extra=="HOLDER" || extra=="HOLDERA" ){     
        //translate([-OOBBSpacing*2,-OOBBSpacing*2,capHeight]){ // to bring it to zer0
        translate([OOBBSpacing*2,OOBBSpacing*2.25,capHeight]){
            rotate([0,180,0]){
                translate([-OOBBSpacing*2,-OOBBSpacing*4,0]){
                    difference(){
                            OOBB_HL_SE_05_03_HOLDER_CAP(capHeight,extraCapHeight);
                            OOBB_HL_SE_05_03_HOLDER_MAINHOLES(capHeight);
                            OOBB_HL_SE_05_03_HOLDER_MAINHOLES_CAPONLY(capHeight);
                            OOBB_HL_SE_05_03_HOLDER_BEARINGHOLE(bearingSize, capHeight -2);
                            OOBB_HL_SE_05_03_HOLDER_CAPTIVENUTS(bearingSize, capHeight);
                            
                        }
                    }
                }
         }
        }
    if( extra == "NONE"|| extra=="HOLDER" || extra=="HOLDERB" ){     
        //holder base
        translate([0,50,capHeight-holderBaseHeight]){  //for printing
        
        //translate([0,0,-40]){    // fodevelopment
            translate([-OOBBSpacing*2,-OOBBSpacing*2,0]){
                    
                difference(){
                    OOBB_HL_SE_05_03_HOLDER_BASE(bearingSize, holderBaseHeight, extraCapHeight);
                    OOBB_HL_SE_05_03_HOLDER_MAINHOLES(holderBaseHeight);
                    OOBB_HL_SE_05_03_HOLDER_MAINHOLES_CAPONLY(holderBaseHeight);
                }
            }
        }
    }   
        
	  
}

module OOBB_HL_SE_05_03_HOLDER_CAP(capHeight,extraCapHeight){
    difference(){
        union(){
            OOBBPLOutline3D(5,3,capHeight);
            /*
            //extra end bits to keep servo bracket from sticking out the end.
            translate([-1,0,0]){
                OOBBPLOutline3D(3,3,capHeight);
            }
            translate([1,0,0]){
                OOBBPLOutline3D(3,3,capHeight);
            }
            */
        }
        TOP = 3;
        RIGHT = 5;
        BOTTOM = 1;
        LEFT = 1;
        
        //Extra bearing clearance
        translate([OOBBSpacing*2,OOBBSpacing*2,0]){
                cylinder(baseCapHeight, OOBBBearing6803OutsideHold+1, OOBBBearing6803OutsideHold+1); //.clearance given in base
            }
        
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

module OOBB_HL_SE_05_03_HOLDER_BASE(bearingSize, holderBaseHeight,extraCapHeight){
    difference(){
        union(){
            OOBBPLOutline3D(5,3,holderBaseHeight+extraCapHeight-baseCapHeight);
            /*
            //extra end bits to keep servo bracket from sticking out the end.
            translate([-1,0,0]){
                OOBBPLOutline3D(5,3,holderBaseHeight);
            }
            translate([1,0,0]){
                OOBBPLOutline3D(3,3,holderBaseHeight);
            }
            */
            //bearing push up piece
            translate([OOBBSpacing*2,OOBBSpacing*2,holderBaseHeight+extraCapHeight-baseCapHeight]){
                cylinder(baseCapHeight, OOBBBearing6803OutsideHold+1-.2, OOBBBearing6803OutsideHold+1-.2); //.2 extra clearance guess Bearing push up piece
            }
        }
        if(bearingSize == 6704){
            OOBBInsertItemCoord("Bearing6704Little",2,2,holderBaseHeight);    
        }else if(bearingSize == 6803){
            OOBBInsertItemCoord("Bearing6803Little",2,2,holderBaseHeight);    
        }
           
		//Servo Low
    OOBBInsertItemMM("M3NutCaptive",2*OOBBSpacing,3*OOBBSpacing+2,ooZ=OOBBNutM3Height,height=20);      
    //Servo High
    OOBBInsertItemMM("M3NutCaptive",2*OOBBSpacing,1*OOBBSpacing-2,ooZ=OOBBNutM3Height,height=20);      
   
    OOBBInsertItemMM("M3NutCaptive",3*OOBBSpacing+2,2*OOBBSpacing,ooZ=OOBBNutM3Height,height=20);      
    
    OOBBInsertItemMM("M3NutCaptive",1*OOBBSpacing-2,2*OOBBSpacing,ooZ=holderBaseHeight-2,height=20);      
    
    
    
    OOBBInsertItemCoord("ServoHole",2,2,height=holderBaseHeight-3);
    //OOBB_HL_SM_03_03_BASE_HOLES();
    
    nutHeight = 4;
    //OOBBInsertItemMMRotate("M3NutCaptiveSideInsert",2*OOBBSpacing-OOBBbaseBoltOffset,3*OOBBSpacing,ooZ=nutHeight+3,height=nutHeight,rot=0);
    //OOBBInsertItemMMRotate("M3NutCaptiveSideInsert",2*OOBBSpacing-OOBBbaseBoltOffset,1*OOBBSpacing,ooZ=nutHeight+3,height=nutHeight,rot=180);
               
    	
    }
}


module OOBB_HL_SE_05_03_HOLDER_MAINHOLES_CAPONLY(totalHeight){

    OOBBInsertItemMM("M3Hole",3*OOBBSpacing+2,2*OOBBSpacing);      
    OOBBInsertItemMM("M3Hole",1*OOBBSpacing-2,2*OOBBSpacing);      
 //Servo Low
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing,3*OOBBSpacing+2);      
    //Servo High
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing,1*OOBBSpacing-2);   
    
}

module OOBB_HL_SE_05_03_HOLDER_MAINHOLES(totalHeight){
//holes
    OOBBHole3D(1,1);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-1,1*OOBBSpacing-1);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-2,1*OOBBSpacing-2);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-3,1*OOBBSpacing-3);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-4,1*OOBBSpacing-4);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-5,1*OOBBSpacing-5);
    
    
    OOBBHole3D(1,3);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-1,3*OOBBSpacing+1);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-2,3*OOBBSpacing+2);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-3,3*OOBBSpacing+3);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-4,3*OOBBSpacing+4);
    OOBBInsertItemMM("OOBBHole",1*OOBBSpacing-5,3*OOBBSpacing+5);
    
    
    OOBBHole3D(3,1);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+1,1*OOBBSpacing-1);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+2,1*OOBBSpacing-2);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+3,1*OOBBSpacing-3);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+4,1*OOBBSpacing-4);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+5,1*OOBBSpacing-5);
    
    
    OOBBHole3D(3,3);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+1,3*OOBBSpacing+1);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+2,3*OOBBSpacing+2);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+3,3*OOBBSpacing+3);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+4,3*OOBBSpacing+4);
    OOBBInsertItemMM("OOBBHole",5*OOBBSpacing+5,3*OOBBSpacing+5);
    
    //OOBBInsertItemCoord("OOBBHole",2,3);
    OOBBInsertItemCoord("OOBBHole",3,3);
    OOBBInsertItemCoord("OOBBHole",4,3);
    
    //OOBBInsertItemCoord("OOBBHole",2,1);
    OOBBInsertItemCoord("OOBBHole",3,1);
    OOBBInsertItemCoord("OOBBHole",4,1);
    
    
    
}




module OOBB_HL_SE_05_03_HOLDER_BEARINGHOLE(bearingSize,totalHeight){
    if(bearingSize == 6704){
        OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
    }else if(bearingSize == 6803){
        OOBBInsertItemCoord("Bearing6803Hold",2,2,totalHeight);    
    }
}


module OOBB_HL_SE_05_03_HOLDER_CAPTIVENUTS(bearingSize,capHeight){
    nutHeight = OOBBNutM3Height;
    nutGap = nutHeight;
    //Servo Low
    //OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight);
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight-2);
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight); //to allow for using 30mm bolts      
    //Servo High
    //OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight);
    //to allow for using 30mm bolts
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight-2); OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight); //Retaining Screws
    OOBBInsertItemMM("M3SocketHead",3*OOBBSpacing+2,2*OOBBSpacing,height=capHeight);      
    OOBBInsertItemMM("M3SocketHead",1*OOBBSpacing-2,2*OOBBSpacing,height=capHeight);      
    
    

    
}

///########
///########
///########  BRACKET
///########
module OOBB_HL_SE_05_03_BRACKET(bearingSize){
	difference(){
        translate([-4*OOBBSpacing,-2*OOBBSpacing,0]){
            OOBBPLOutline3D(5,3,servoBracketThicknessFull);		
        }
            OOBBInsertItemCoord("ServoFullMount",0,0,height=12);
            OOBBInsertItemMM("M3Slot",0*OOBBSpacing,1*OOBBSpacing+2);
            OOBBInsertItemMM("M3Slot",0*OOBBSpacing,-1*OOBBSpacing-2);
        
	}
}


///########
///########
///########  SERVOHORN
///########

	
botTubeHeightFull=7;
topTubeHeightFull = 4;
	
module OOBB_HL_SE_05_03_SERVOHORN(bearingSize){

	bearingTubeHeight = bearingSize==6803 ? 5 : 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
	bearingLittle = bearingSize==6803 ? OOBBBearing6803Little : OOBBBearing6704Little;
    totalHeight = botTubeHeightFull+bearingTubeHeight+topTubeHeight+9; //2+5+3+9=19
	
    topHeight = topTubeHeightFull + 9; //9 is wheel width
    bottomHeight = botTubeHeightFull + bearingTubeHeight;
        
    
    
        //TOP PIECE
    //translate([0,0,0]){
    translate([0,0,topHeight/2]){  //move to zero height
        rotate([0,180,0]){ //rotate 180 to print upside down
            translate([0,0,-bottomHeight - topHeight/2]){ //shift so centred for flip
                difference(){
                    union(){
                        //bottomTube
                        
                        
                        //topTube
                        translate([0,0,botTubeHeightFull+bearingTubeHeight+topTubeHeightFull/2  ]){
                            //cylinder(topTubeHeight,bearingLittle-0.5,bearingLittle-0.5,true);
                            cylinder(topTubeHeightFull,bearingInside+1,bearingInside+1,true);
                        }
                        //wheel
                        translate([0,0,totalHeight]){
                            rotate([0,180,0]){
                                OOBB_WH_SOLID(3);
                            }
                        }
                               //bearing tube
                        translate([0,0,botTubeHeightFull+bearingTubeHeight/2  ]){
                            cylinder(bearingTubeHeight,bearingInside,bearingInside,true);
                            } 
                    }
                    OOBB_HL_SE_05_03_SERVOHORN_HOLES(bearingSize);
                }
            }
        }

    }
    
        // BOTTOM PIECE
    //translate([0,0,0]){
    translate([0,-OOBBSpacing*2-3,7]){
        rotate([0,180,0]){//rotate 180 to print upside down
            difference(){
                union(){
                    
                    translate([0,0,0]){
                        //OOBBcylinder(botTubeHeightFull,bearingLittle-0.5,bearingLittle-0.5);
                        OOBBcylinder(botTubeHeightFull,bearingInside+1,bearingInside+1);
                    }
                    //bearingTube    
                    
                    
                    
                    
                    
                }
                OOBB_HL_SE_05_03_SERVOHORN_HOLES(bearingSize);
            }
        }
    }    
	
}

module OOBB_HL_SE_05_03_SERVOHORN_HOLES(bearingSize){
    OOBB_screwClamp1X = 0; 
    OOBB_screwClamp2X = 0;
    OOBB_screwClamp1Y = 8.125;
    OOBB_screwClamp2Y = -8.125;
	
    
    
	bearingTubeHeight = bearingSize==6803 ? 5 : 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
	bearingLittle = bearingSize==6803 ? OOBBBearing6803Little : OOBBBearing6704Little;
    totalHeight = botTubeHeightFull+bearingTubeHeight+topTubeHeight+9; //2+5+3+9=19

		OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=4);
		OOBBInsertItemCoord("OOBBHole",0,0,height=4);
		
		
	//for tg90
	//OOBBInsertItemCoord("ServoMicroHornCatchSingleBottomInsertion",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
	//for continuousRotation
    OOBBInsertItemCoord("ServoFullHornCatchBottomInsertion",0,0,5.75); 
    
    
        //clamping screws
        OOBBInsertItemMM("M3SocketHead",OOBB_screwClamp1X,OOBB_screwClamp1Y,totalHeight);
        OOBBInsertItemMM("M3Hole",OOBB_screwClamp1X,OOBB_screwClamp1Y);
        OOBBInsertItemMM("M3NutCaptiveSingle",OOBB_screwClamp1X,OOBB_screwClamp1Y,OOBBNutM3Height);
        
        
        OOBBInsertItemMM("M3SocketHead",OOBB_screwClamp2X,OOBB_screwClamp2Y,totalHeight);
        OOBBInsertItemMM("M3Hole",OOBB_screwClamp2X,OOBB_screwClamp2Y);
        OOBBInsertItemMM("M3NutCaptiveSingle",OOBB_screwClamp2X,OOBB_screwClamp2Y,OOBBNutM3Height);
}