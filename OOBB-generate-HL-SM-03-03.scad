
///########
///########
///########  MAIN
///########
include <OLD01_OOBB-generate-HL-SM-03-03.scad>;
include <OLD02_OOBB-generate-HL-SM-03-03.scad>;

include <OOBB-generate-HL-SE-05-03.scad>;



//servo holder negative (used in holder and base)
     
    //servoHolderCutoutSize = 6; //testing
    servoHolderCutoutSize = 1; //SG90
    
//servo bracket thickness (used in bracket and base)

    servoBracketThickness = 4;
    servoHolderExtraClearance = 0.5;
    OOBBbaseBoltOffset = 8;
    

module OOBB_HL_SM_03_03(){
	//######  HOLDER PART
	if( extra == "NONE" || extra=="HOLDER"  || extra=="HOLDERA"  || extra=="HOLDERB" || extra=="NOHORN"){
		translate([0,OOBBSpacing * 3,0]){
        //translate([0,0,0]){    
			OOBB_HL_SM_03_03_HOLDER();    
		}
	}
	//######  SERVO BRACKET
	if( extra == "NONE" || extra=="BRACKET" || extra=="NOHORN"){
		translate([OOBBSpacing * 2,OOBBSpacing * 2,0]){
        //translate([0,0,0]){ 
			OOBB_HL_SM_03_03_BRACKET();
		}
	}
	//###### Servo Horn
	if( extra == "NONE" || extra=="HORN"){    
		translate([OOBBSpacing * 5,OOBBSpacing * 4,0]){    
		//translate([0,0,0]){    
			OOBB_HL_SM_03_03_SERVOHORN();
		}
	}
	//######  Base
	if( extra == "NONE" || extra=="BASE" || extra=="NOHORN"){    
		translate([OOBBSpacing * 3 + 5,OOBBSpacing * 6,0]){ 
        //translate([0,0,0]){    
            
                OOBB_HL_SM_03_03_BASE();
            
		} 
	}   
}

//////////////////////////////////////////////////// SM-03-03




///########
///########
///########  HOLDER
///########
module OOBB_HL_SM_03_03_HOLDER(){
	
    spacerHeight = 12;
    extraCapHeight = 5;  //this is the amount to stretch the cap
	bearingHeight = 4;  //default to 6704
	totalHeight = spacerHeight + bearingHeight;
	capHeight = bearingHeight + 2 + extraCapHeight;
    holderBaseHeight = 12;
    
    if( extra == "NONE"|| extra=="HOLDER" || extra=="HOLDERA"  || extra=="NOHORN"){     
        translate([OOBBSpacing*2,OOBBSpacing*2.25,capHeight]){
            rotate([0,180,0]){
                translate([-OOBBSpacing*2,-OOBBSpacing*2,0]){
                    difference(){
                            OOBB_HL_SM_03_03_HOLDER_CAP(capHeight,extraCapHeight);
                            OOBB_HL_SM_03_03_HOLDER_MAINHOLES(capHeight);
                            OOBB_HL_SM_03_03_HOLDER_MAINHOLES_CAPONLY(capHeight);
                            OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(capHeight -2);
                            OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(capHeight);
                            
                        }
                    }
                }
            }
        }
    if( extra == "NONE"|| extra=="HOLDER" || extra=="HOLDERB"  || extra=="NOHORN"){     
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

module OOBB_HL_SM_03_03_HOLDER_BASE(holderBaseHeight,extraCapHeight){
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
            OOBBInsertItemCoord("Bearing6704Little",2,2,holderBaseHeight);    
        
           
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




module OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(totalHeight){
        OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
    
}


module OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(capHeight){
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
module OOBB_HL_SM_03_03_BRACKET(){
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
	
module OOBB_HL_SM_03_03_SERVOHORN(){

	bearingTubeHeight = 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = OOBBBearing6704Inside; //default to 6704
	bearingLittle = OOBBBearing6704Little;
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
                    OOBB_HL_SM_03_03_SERVOHORN_HOLES();
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
                OOBB_HL_SM_03_03_SERVOHORN_HOLES();
            }
        }
    }    
	
}


module OOBB_HL_SM_03_03_SERVOHORN_HOLES(){
    OOBB_screwClamp1X = 0; 
    OOBB_screwClamp2X = 0;
    OOBB_screwClamp1Y = 6.5;
    OOBB_screwClamp2Y = -6.5;
	
    
    
	bearingTubeHeight = 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = OOBBBearing6704Inside; //default to 6704
	bearingLittle = OOBBBearing6704Little;
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
module OOBB_HL_SM_03_03_BASE(){
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
