
///########
///########
///########  MAIN
///########
//include <OOBB-generate-NICHE.scad>;


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
		translate([OOBBSpacing * 2,OOBBSpacing * 11,0]){    
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
    holderBaseHeight = 8;
    
        //side one
		translate([0,0,0]){
            difference(){
                OOBB_HL_SM_03_03_HOLDER_CAP(capHeight);
                OOBB_HL_SM_03_03_HOLDER_MAINHOLES(capHeight);
                OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize, capHeight -2);
                OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize, capHeight);
                //OOBB_HL_SM_03_03_HOLDER_SERVOBRACKETCLEARANCE();
                OOBBCube3DComplete(2*OOBBSpacing,3*OOBBSpacing,45,30,60,30);
            }
        }
        //side two
		translate([0,2,0]){  //for printing
        //translate([0,0,0]){    //for development
            difference(){
                OOBB_HL_SM_03_03_HOLDER_CAP(capHeight);
                OOBB_HL_SM_03_03_HOLDER_MAINHOLES(capHeight);
                OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize, capHeight -2);
                OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize, capHeight);
                //OOBB_HL_SM_03_03_HOLDER_SERVOBRACKETCLEARANCE();
                OOBBCube3DComplete(2*OOBBSpacing,1*OOBBSpacing,45,30,60,30);
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
    //OOBBInsertItemMM("M3NutCaptive",1.667*OOBBSpacing,1*OOBBSpacing-2,ooZ=OOBBNutM3Height,height=20);      
    //Base High
    //OOBBInsertItemMM("M3NutCaptive",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=OOBBNutM3Height,height=20);
    
    
    //LEFT BOTTOM
    OOBBInsertItemMM("M3NutCaptive",1*OOBBSpacing-2,1.667*OOBBSpacing,ooZ=holderBaseHeight-2,height=20);
    //LEFT TOP
    OOBBInsertItemMM("M3NutCaptive",1*OOBBSpacing-2,2.33*OOBBSpacing,ooZ=holderBaseHeight-2,height=20);
    
    //RIGHT BOTTOM
    OOBBInsertItemMM("M3NutCaptive",3*OOBBSpacing+2,1.667*OOBBSpacing,ooZ=holderBaseHeight-2,height=20);
    //RIGHT TOP
    OOBBInsertItemMM("M3NutCaptive",3*OOBBSpacing+2,2.33*OOBBSpacing,ooZ=holderBaseHeight-2,height=20);
    	
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
    
    
    //LEFT BOTTOM
    OOBBInsertItemMM("M3Hole",1*OOBBSpacing-2,1.667*OOBBSpacing);
    //LEFT TOP
    OOBBInsertItemMM("M3Hole",1*OOBBSpacing-2,2.33*OOBBSpacing);
    
    //RIGHT BOTTOM
    OOBBInsertItemMM("M3Hole",3*OOBBSpacing+2,1.667*OOBBSpacing);
    //RIGHT TOP
    OOBBInsertItemMM("M3Hole",3*OOBBSpacing+2,2.33*OOBBSpacing);
    
}




module OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize,totalHeight){
    if(bearingSize == 6704){
        OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
    }else if(bearingSize == 6803){
        OOBBInsertItemCoord("Bearing6803Hold",2,2,totalHeight);    
    }
}


module OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize,capHeight){
    
    
    
    /*
    nutHeight = totalHeight-5; //the height the nut is inserted at
    nutGap = 3.5;  //the length of the extrusion (distance from bottom is nutHeight - nutGap)
    nutWindow = 0; //the height of the nut (nutgap - nutWindow is the height of the gap mistake not fixed.)
    */
    
    //captive m3 nuts 2.5
    
    
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
    
    
    //LEFT BOTTOM
    OOBBInsertItemMM("M3SocketHead",1*OOBBSpacing-2,1.667*OOBBSpacing,height=capHeight);
    //LEFT TOP
    OOBBInsertItemMM("M3SocketHead",1*OOBBSpacing-2,2.33*OOBBSpacing,height=capHeight);
    
    //RIGHT BOTTOM
    OOBBInsertItemMM("M3SocketHead",3*OOBBSpacing+2,1.667*OOBBSpacing,height=capHeight);
    //RIGHT TOP
    OOBBInsertItemMM("M3SocketHead",3*OOBBSpacing+2,2.33*OOBBSpacing,height=capHeight);
    
 /*   
//LINKING SQUARES
    translate([OOBBSpacing*2.33,OOBBSpacing*0.5-1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    } 
    
    translate([OOBBSpacing*2.33,OOBBSpacing*3.5+1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    } 
    translate([OOBBSpacing*1.67,OOBBSpacing*0.5-1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    }
    translate([OOBBSpacing*1.67,OOBBSpacing*3.5+1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    }
*/

    
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


module OLD01_OOBB_HL_SM_03_03_HOLDER(bearingSize){
	
    spacerHeight = 12;
	bearingHeight = bearingSize == 6803 ? 5 : 4;  //default to 6704
	totalHeight = spacerHeight + bearingHeight;
	
    union(){
		//extra block added to conceal servo
		translate([OOBBSpacing * 1-6, OOBBSpacing*2,8]){
			linear_extrude(2){
				square([2,16],true);
			}
		}
		difference(){
            OOBB_HL_SM_03_03_HOLDER_MAINPIECE(totalHeight);
			OOBB_HL_SM_03_03_HOLDER_MAINHOLES(totalHeight);
			OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize, totalHeight);
			OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize, totalHeight);
			OOBB_HL_SM_03_03_HOLDER_SERVOBRACKETCLEARANCE();
		}
	}  
}

module OLD01_OOBB_HL_SM_03_03_HOLDER_MAINPIECE(totalHeight){
    union(){
        OOBBPLOutline3D(3,3,totalHeight);
        //extra end bits to keep servo bracket from sticking out the end.
        translate([-1,0,0]){
            OOBBPLOutline3D(3,3,totalHeight);
        }
        translate([1,0,0]){
            OOBBPLOutline3D(3,3,totalHeight);
        }
    }
}

module OLD01_OOBB_HL_SM_03_03_HOLDER_MAINHOLES(totalHeight){
//holes
    OOBBHole3D(1,1);
    //extra clearance hole
    OOBBInsertItemCoord("M6BoltClearance",1,1,totalHeight,height=4);      
    OOBBHole3D(1,3);   
    OOBBInsertItemCoord("M6BoltClearance",1,3,totalHeight,height=4);
    OOBBHole3D(3,1);   
    OOBBInsertItemCoord("M6BoltClearance",3,1,totalHeight,height=4);
    OOBBHole3D(3,3);   
    OOBBInsertItemCoord("M6BoltClearance",3,3,totalHeight,height=4);
    
    //extra keepout FOR BOLTS (8 TWO FOR EACH CORNER)
    translate([OOBBSpacing*1,OOBBSpacing*1-3,totalHeight-4]){
        linear_extrude(4){
            square([13,13/2],true);
        }
    }  
    translate([OOBBSpacing*1-3.5,OOBBSpacing*1,totalHeight-4]){
        linear_extrude(4){
            square([13/2+0.5,13],true);
        }
    }
    
    translate([OOBBSpacing*3,OOBBSpacing*1-3,totalHeight-4]){
        linear_extrude(4){
            square([13,13/2],true);
        }
    }  
    translate([OOBBSpacing*3+3.5,OOBBSpacing*1,totalHeight-4]){
        linear_extrude(4){
            square([13/2+0.5,13],true);
        }
    }
    
    translate([OOBBSpacing*1,OOBBSpacing*3+3,totalHeight-4]){
        linear_extrude(4){
            square([13,13/2],true);
        }
    }  
    translate([OOBBSpacing*1-3.5,OOBBSpacing*3,totalHeight-4]){
        linear_extrude(4){
            square([13/2+0.5,13],true);
        }
    }
    
    translate([OOBBSpacing*3,OOBBSpacing*3+3,totalHeight-4]){
        linear_extrude(4){
            square([13,13/2],true);
        }
    }  
    translate([OOBBSpacing*3+3.5,OOBBSpacing*3,totalHeight-4]){
        linear_extrude(4){
            square([13/2+0.5,13],true);
        }
    }
}




module OLD01_OOBB_HL_SM_03_03_HOLDER_BEARINGHOLE(bearingSize,totalHeight){
    if(bearingSize == 6704){
        OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
    }else if(bearingSize == 6803){
        OOBBInsertItemCoord("Bearing6803Hold",2,2,totalHeight);    
    }
}


module OLD01_OOBB_HL_SM_03_03_HOLDER_CAPTIVENUTS(bearingSize,totalHeight){
    
    
    
    
    nutHeight = totalHeight-5; //the height the nut is inserted at
    nutGap = 3.5;  //the length of the extrusion (distance from bottom is nutHeight - nutGap)
    nutWindow = 0; //the height of the nut (nutgap - nutWindow is the height of the gap mistake not fixed.)
    
    //captive m3 nuts 2.5
    
    
    //Servo Low
    OOBBInsertItemMM90("M3NutCaptive",2.333*OOBBSpacing,1*OOBBSpacing-2,ooZ=nutHeight,height=nutGap);      
    //OOBBInsertItemMM("M3HoleExtra",2.333*OOBBSpacing,3*OOBBSpacing+2,height=nutHeight,ooZ=nutHeight);      
    OOBBInsertItemMM("M3Hole",2.333*OOBBSpacing,3*OOBBSpacing+2);      
    
    
    //Servo High
    OOBBInsertItemMM90("M3NutCaptive",2.333*OOBBSpacing,3*OOBBSpacing+2,ooZ=nutHeight,height=nutGap);          
    //OOBBInsertItemMM("M3HoleExtra",2.333*OOBBSpacing,3*OOBBSpacing+2,height=nutHeight,ooZ=nutHeight);            
    OOBBInsertItemMM("M3Hole",2.333*OOBBSpacing,1*OOBBSpacing-2);      
    
    
    //Base Low
    OOBBInsertItemMM90("M3NutCaptive",1.667*OOBBSpacing,1*OOBBSpacing-2,ooZ=nutHeight,height=nutGap);         
    //OOBBInsertItemMM("M3HoleExtra",1.667*OOBBSpacing,1*OOBBSpacing-2,height=nutHeight,ooZ=nutHeight);      
    OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,1*OOBBSpacing-2);      
    
    //Base High
    OOBBInsertItemMM90("M3NutCaptive",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=nutHeight,height=nutGap);          
    //OOBBInsertItemMM("M3HoleExtra",1.667*OOBBSpacing,3*OOBBSpacing+2,height=nutHeight,ooZ=nutHeight);
    OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,3*OOBBSpacing+2);
    
//LINKING SQUARES
    translate([OOBBSpacing*2.33,OOBBSpacing*0.5-1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    } 
    
    translate([OOBBSpacing*2.33,OOBBSpacing*3.5+1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    } 
    translate([OOBBSpacing*1.67,OOBBSpacing*0.5-1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    }
    translate([OOBBSpacing*1.67,OOBBSpacing*3.5+1.5,nutHeight-nutGap+nutWindow]){
        linear_extrude(nutGap-nutWindow){
            square([OOBBNutM3WidthShortSide,15],true);
        }
    }


    
}




module OLD01_OOBB_HL_SM_03_03_HOLDER_SERVOBRACKETCLEARANCE(){
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
module OOBB_HL_SM_03_03_SERVOHORN(bearingSize){
	
	
    botTubeHeight=2;
	bearingTubeHeight = bearingSize==6803 ? 5 : 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
	bearingLittle = bearingSize==6803 ? OOBBBearing6803Little : OOBBBearing6704Little;
    topTubeHeight = 3;
	totalHeight = botTubeHeight+bearingTubeHeight+topTubeHeight+9; //2+5+3+9=19
	difference(){

		union(){
			
			
			//bottomTube
			
			translate([0,0,0]){
				//OOBBcylinder(botTubeHeight,bearingLittle-0.5,bearingLittle-0.5);
                OOBBcylinder(botTubeHeight,18.5/2,18.5/2);
			}
			//bearingTube    
			
			translate([0,0,botTubeHeight+bearingTubeHeight/2  ]){
				cylinder(bearingTubeHeight,bearingInside,bearingInside,true);
			}
            
			translate([0,0,botTubeHeight+bearingTubeHeight+topTubeHeight/2  ]){
				//cylinder(topTubeHeight,bearingLittle-0.5,bearingLittle-0.5,true);
                cylinder(topTubeHeight,18.5/2,18.5/2,true);
			}
            translate([0,0,totalHeight]){
                rotate([0,180,0]){
                    OOBB_WH_SOLID(3);
                }
            }	
		}
		OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=4);
		OOBBInsertItemCoord("OOBBHole",0,0,height=4);
		
		
		//OOBBInsertItemCoord("ServoMicroHornCatch",0,0,4);
		OOBBInsertItemCoord("ServoMicroHornCatchSingleBottomInsertion",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
		
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
	
}

module OLD01_OOBB_HL_SM_03_03_SERVOHORN(bearingSize){
	
	/*
				BASE 2.5 (both in botTube)
				HORN 1.5
				TUBE 0.5  4.5
				TUBE BIG 2
				NUT GAP 5
				TOP 3
			*/
	botTubeHeight = bearingSize==6803 ? 5.5 : 4.5; //default to 6704
	bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
	bigTubeHeight = 2;
	armHeight = 3+OOBBNutM6Height;
	totalHeight = botTubeHeight+bigTubeHeight+armHeight;
	difference(){

		union(){
			
			
			//bottomTube
			
			translate([0,0,0]){
				OOBBcylinder(botTubeHeight,bearingInside,bearingInside);
			}
			//bigTube    
			
			translate([0,0,botTubeHeight+bigTubeHeight/2]){
				cylinder(bigTubeHeight,24/2,24/2,true);
			}
			//arm
			
			translate([0,0,botTubeHeight+bigTubeHeight]){
				OOBBPLOutline3DComplete(42,24,8.5);
			}
		}
		OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=4);
		
		//OOBBInsertItemCoord("ServoMicroHornCatch",0,0,4);
		OOBBInsertItemCoord("ServoMicroHornCatchSingle",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
		
		OOBBHole3D(0,0);
		OOBBHole3D(-1,0);
		OOBBHole3D(1,0);
		OOBBInsertItemCoord("M6NutCaptiveSingle",-1,0,totalHeight-3);
		OOBBInsertItemCoord("M6NutCaptiveSingle",0,0,totalHeight-3);
		OOBBInsertItemCoord("M6NutCaptiveSingle",-1.2,0,totalHeight-3);
		OOBBInsertItemCoord("M6NutCaptiveSingle",1,0,totalHeight-3);
		OOBBInsertItemCoord("M6NutCaptiveSingle",1.2,0,totalHeight-3);
	}
	
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




module OLD01_OOBB_HL_SM_03_03_BASE(bearingSize){
	//height = 16   
	union(){ 
		difference(){
			union(){
				OOBBPLOutline3D(3,3,16);
				//extra end bits to keep servo bracket from sticking out the end.
				translate([-1,0,0]){
					OOBBPLOutline3D(3,3,16);
				}
				translate([1,0,0]){
					OOBBPLOutline3D(3,3,16);
				}
			}
			OOBBInsertItemCoord("ServoWireClearance",3,2,ooZ=16);      
			OOBBHole3D(1,1);
			OOBBHole3D(3,1);
			OOBBHole3D(1,3);
			OOBBHole3D(3,3);
			OOBBInsertItemCoord("ServoMicroHole",2,2,height=12);
			
            //LOWER SIDE
            
            OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,1*OOBBSpacing-2);      
			OOBBInsertItemMM("M3SocketHeadUpsideDown",1.667*OOBBSpacing,1*OOBBSpacing-2 ,ooZ=0);  
			OOBBInsertItemMM("M3HoleScrewTop",2.333*OOBBSpacing,1*OOBBSpacing-2);      
			
            //UPPER SIDE
            OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,3*OOBBSpacing+2);      
			OOBBInsertItemMM("M3SocketHeadUpsideDown",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=0);
			OOBBInsertItemMM("M3HoleScrewTop",2.333*OOBBSpacing,3*OOBBSpacing+2);      
			
            
            //servo holder negative
			translate([2*OOBBSpacing,2*OOBBSpacing,0]){
				translate([-5.35,0,16-6.5]){
					OOBBPLOutline3DComplete(39+4,21,6.5);
				}
				
			}
			//servo holder negative
            
            //servoHolderCutoutSize = DEFINED AT TOP
            
			translate([2*OOBBSpacing,2*OOBBSpacing,0]){
				translate([-5.35,0,16-(servoBracketThickness+0.5-servoHolderCutoutSize)]){
					OOBBPLOutline3DComplete(39+servoHolderExtraClearance,21,(servoBracketThickness+0.5-servoHolderCutoutSize));
				}
				//piece with screw holes
				translate([5,0,16-(servoBracketThickness+0.5-servoHolderCutoutSize)]){
					OOBBPLOutline3DComplete(11+servoHolderExtraClearance,42+servoHolderExtraClearance*2,(servoBracketThickness+0.5-servoHolderCutoutSize));      
				}        
				
			}

		}        
		//extra block added to conceal servo
		translate([OOBBSpacing * 1-6, OOBBSpacing*2,0]){
			linear_extrude(16-7){
				square([2,16],true);
			}
		}
	}    
}



//################################################################################################
//######  OLD OLD OLD OLD OLD OLD
//################################################################################################
//################################################################################################
//################################################################################################
//################################################################################################
//################################################################################################
//################################################################################################
//################################################################################################
//################################################################################################

module OLD_OOBB_HL_SM_03_03(bearingSize){


	//######  HOLDER PART
	if( extra == "NONE" || extra=="HOLDER" || extra=="NOHORN"){
		
		
		translate([0,OOBBSpacing * 3,0]){    
			
			//translate([0,OOBBSpacing * 0,0]){    
			
			spacerHeight = 12;
			//6704
			bearingHeight = bearingSize == 6803 ? 5 : 4;  //default to 6704
			
			
			totalHeight = spacerHeight + bearingHeight;
			union(){
				//extra block added to conceal servo
				translate([OOBBSpacing * 1-6, OOBBSpacing*2,8]){
					linear_extrude(2){
						square([2,16],true);
					}
				}
				difference(){
					union(){
						OOBBPLOutline3D(3,3,totalHeight);
						//extra end bits to keep servo bracket from sticking out the end.
						translate([-1,0,0]){
							OOBBPLOutline3D(3,3,totalHeight);
						}
						translate([1,0,0]){
							OOBBPLOutline3D(3,3,totalHeight);
						}
					}
					//holes
					OOBBHole3D(1,1);
					//extra clearance hole
					OOBBInsertItemCoord("M6BoltClearance",1,1,totalHeight,height=4);      
					OOBBHole3D(1,3);   
					OOBBInsertItemCoord("M6BoltClearance",1,3,totalHeight,height=4);
					OOBBHole3D(3,1);   
					OOBBInsertItemCoord("M6BoltClearance",3,1,totalHeight,height=4);
					OOBBHole3D(3,3);   
					OOBBInsertItemCoord("M6BoltClearance",3,3,totalHeight,height=4);
					
					//extra keepout FOR BOLTS (8 TWO FOR EACH CORNER)
					translate([OOBBSpacing*1,OOBBSpacing*1-3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*1-3.5,OOBBSpacing*1,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					}
					
					translate([OOBBSpacing*3,OOBBSpacing*1-3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*3+3.5,OOBBSpacing*1,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					}
					
					translate([OOBBSpacing*1,OOBBSpacing*3+3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*1-3.5,OOBBSpacing*3,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					}
					
					translate([OOBBSpacing*3,OOBBSpacing*3+3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*3+3.5,OOBBSpacing*3,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					} 
					
					
					
					//bearing hole
					
					///6704
					echo(totalHeight);
					if(bearingSize == 6704){
						OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
					}else if(bearingSize == 6803){
						OOBBInsertItemCoord("Bearing6803Hold",2,2,totalHeight);    
					}
					
					
					
					nutHeight = totalHeight-5; //the height the nut is inserted at
					nutGap = 3.5;  //the length of the extrusion (distance from bottom is nutHeight - nutGap)
					nutWindow = 0; //the height of the nut (nutgap - nutWindow is the height of the gap mistake not fixed.)
					//LINKING SQUARES
					translate([OOBBSpacing*2.33,OOBBSpacing*0.5-1.5,nutHeight-nutGap+nutWindow]){
						linear_extrude(nutGap-nutWindow){
							square([OOBBNutM3WidthShortSide,15],true);
						}
					} 
					
					translate([OOBBSpacing*2.33,OOBBSpacing*3.5+1.5,nutHeight-nutGap+nutWindow]){
						linear_extrude(nutGap-nutWindow){
							square([OOBBNutM3WidthShortSide,15],true);
						}
					} 
					translate([OOBBSpacing*1.67,OOBBSpacing*0.5-1.5,nutHeight-nutGap+nutWindow]){
						linear_extrude(nutGap-nutWindow){
							square([OOBBNutM3WidthShortSide,15],true);
						}
					}
					translate([OOBBSpacing*1.67,OOBBSpacing*3.5+1.5,nutHeight-nutGap+nutWindow]){
						linear_extrude(nutGap-nutWindow){
							square([OOBBNutM3WidthShortSide,15],true);
						}
					}
					//captive m3 nuts 2.5
					
					
					OOBBInsertItemMM90("M3NutCaptive",2.333*OOBBSpacing,1*OOBBSpacing-2,ooZ=nutHeight,height=nutGap);      
					//servoHolderPart
					//m3 bolts
					OOBBInsertItemMM("M3Hole",2.333*OOBBSpacing,1*OOBBSpacing-2,height=nutHeight,ooZ=nutHeight);      
					
					
					OOBBInsertItemMM90("M3NutCaptive",2.333*OOBBSpacing,3*OOBBSpacing+2,ooZ=nutHeight,height=nutGap);          
					OOBBInsertItemMM("M3Hole",2.333*OOBBSpacing,3*OOBBSpacing+2,height=nutHeight,ooZ=nutHeight);            
					//captivem3 nuts 1.5
					
					
					OOBBInsertItemMM90("M3NutCaptive",1.667*OOBBSpacing,1*OOBBSpacing-2,ooZ=nutHeight,height=nutGap);         
					//servoHolderPart
					//m3 bolts
					OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,1*OOBBSpacing-2,height=nutHeight,ooZ=nutHeight);      
					
					
					OOBBInsertItemMM90("M3NutCaptive",1.667*OOBBSpacing,3*OOBBSpacing+2,ooZ=nutHeight,height=nutGap);          
					OOBBInsertItemMM("M3Hole",1.667*OOBBSpacing,3*OOBBSpacing+2,height=nutHeight,ooZ=nutHeight);      
					
					//Clearance for servo bracket
					
					
					
					
					//clearance hole
					OOBBInsertItemCoord("ServoMicroHole",2,2,height=10);
					//servo holder negative
					translate([2*OOBBSpacing,2*OOBBSpacing,0]){
						translate([-5.35,0,0]){
							OOBBPLOutline3DComplete(39+4,21,6);
						}
						//piece with screw holes
						translate([5,0,0]){
							OOBBPLOutline3DComplete(11+4,42+8,6);
						}        
						
					}
				}
			}  
		}
	}
	//######  SERVO BRACKET
	if( extra == "NONE" || extra=="BRACKET" || extra=="NOHORN"){
		

		translate([OOBBSpacing * 2,OOBBSpacing * 2,0]){
			difference(){
				union(){
					//servo piece
					translate([-5.35,0,0]){
						//OOBBPLOutline3DComplete(33,20,6);
						linear_extrude(4){
							square([33,20],true);
						}
					}
					//piece with screw holes
					translate([5,0,0]){
						//OOBBPLOutline3DComplete(10,42,6);
						linear_extrude(4){
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
	}

	//###### Servo Horn
	if( extra == "NONE" || extra=="HORN"){    
		translate([OOBBSpacing * 2,OOBBSpacing * 11,0]){    
			/*
				BASE 2.5 (both in botTube)
				HORN 1.5
				TUBE 0.5  4.5
				TUBE BIG 2
				NUT GAP 5
				TOP 3
			*/
			botTubeHeight = bearingSize==6803 ? 5.5 : 4.5; //default to 6704
			bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
			bigTubeHeight = 2;
			armHeight = 3+OOBBNutM6Height;
			totalHeight = botTubeHeight+bigTubeHeight+armHeight;
			difference(){

				union(){
					
					
					//bottomTube
					
					translate([0,0,0]){
						OOBBcylinder(botTubeHeight,bearingInside,bearingInside);
					}
					//bigTube    
					
					translate([0,0,botTubeHeight+bigTubeHeight/2]){
						cylinder(bigTubeHeight,24/2,24/2,true);
					}
					//arm
					
					translate([0,0,botTubeHeight+bigTubeHeight]){
						OOBBPLOutline3DComplete(42,24,8.5);
					}
				}
				OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=4);
				
				//OOBBInsertItemCoord("ServoMicroHornCatch",0,0,4);
				OOBBInsertItemCoord("ServoMicroHornCatchSingle",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
				
				OOBBHole3D(0,0);
				OOBBHole3D(-1,0);
				OOBBHole3D(1,0);
				OOBBInsertItemCoord("M6NutCaptiveSingle",-1,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",0,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",-1.2,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",1,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",1.2,0,totalHeight-3);
			}
			
		}
	}
	//######  Base
	if( extra == "NONE" || extra=="BASE" || extra=="NOHORN"){    
		translate([0,OOBBSpacing * 6,0]){ 
			//height = 16   
			union(){ 
				difference(){
					union(){
						OOBBPLOutline3D(3,3,16);
						//extra end bits to keep servo bracket from sticking out the end.
						translate([-1,0,0]){
							OOBBPLOutline3D(3,3,16);
						}
						translate([1,0,0]){
							OOBBPLOutline3D(3,3,16);
						}
					}
					OOBBInsertItemCoord("ServoWireClearance",3,2,ooZ=16);      
					OOBBHole3D(1,1);
					OOBBHole3D(3,1);
					OOBBHole3D(1,3);
					OOBBHole3D(3,3);
					OOBBInsertItemCoord("ServoMicroHole",2,2,height=12);
					OOBBInsertItemCoord("M3Hole",1.667,1);      
					OOBBInsertItemCoord("M3SocketHeadUpsideDown",1.667,1 ,ooZ=0);  
					OOBBInsertItemCoord("M3Hole",1.667,3);      
					//OOBBInsertItemCoord("M3CountersinkUpsideDown",1.667,3,ooZ=0);
					OOBBInsertItemCoord("M3SocketHeadUpsideDown",1.667,3,ooZ=0);
					OOBBInsertItemMM("M3HoleScrewTop",2.333*OOBBSpacing,3*OOBBSpacing+2);      
					OOBBInsertItemMM("M3HoleScrewTop",2.333*OOBBSpacing,1*OOBBSpacing-2);      
					//servo holder negative
					translate([2*OOBBSpacing,2*OOBBSpacing,0]){
						translate([-5.35,0,16-6.5]){
							OOBBPLOutline3DComplete(39+4,21,6.5);
						}
						
					}
					//servo holder negative
					translate([2*OOBBSpacing,2*OOBBSpacing,0]){
						translate([-5.35,0,16-4.5]){
							OOBBPLOutline3DComplete(39+4,21,4.5);
						}
						//piece with screw holes
						translate([5,0,16-4.5]){
							OOBBPLOutline3DComplete(11+4,42+8,4.5);      
						}        
						
					}

				}        
				//extra block added to conceal servo
				translate([OOBBSpacing * 1-6, OOBBSpacing*2,0]){
					linear_extrude(12-7){
						square([2,16],true);
					}
				}
			}
		} 
	}   

}



module OLDOLD_OOBB_HL_SM_03_03(bearingSize){


	//######  HOLDER PART
	if( extra == "NONE" || extra=="HOLDER" || extra=="NOHORN"){
		
		
		translate([0,OOBBSpacing * 3,0]){    
			
			//translate([0,OOBBSpacing * 0,0]){    
			
			spacerHeight = 12;
			//6704
			bearingHeight = bearingSize == 6803 ? 5 : 4;  //default to 6704
			
			
			totalHeight = spacerHeight + bearingHeight;
			union(){
				//extra block added to conceal servo
				translate([OOBBSpacing * 1-6, OOBBSpacing*2,4]){
					linear_extrude(8){
						square([2,16],true);
					}
				}
				difference(){
					union(){
						OOBBPLOutline3D(3,3,totalHeight);
						//extra end bits to keep servo bracket from sticking out the end.
						translate([-1,0,0]){
							OOBBPLOutline3D(3,3,totalHeight);
						}
						translate([1,0,0]){
							OOBBPLOutline3D(3,3,totalHeight);
						}
					}
					//holes
					OOBBHole3D(1,1);
					//extra clearance hole
					OOBBInsertItemCoord("M6BoltClearance",1,1,totalHeight,height=4);      
					OOBBHole3D(1,3);   
					OOBBInsertItemCoord("M6BoltClearance",1,3,totalHeight,height=4);
					OOBBHole3D(3,1);   
					OOBBInsertItemCoord("M6BoltClearance",3,1,totalHeight,height=4);
					OOBBHole3D(3,3);   
					OOBBInsertItemCoord("M6BoltClearance",3,3,totalHeight,height=4);
					
					//extra keepout FOR BOLTS (8 TWO FOR EACH CORNER)
					translate([OOBBSpacing*1,OOBBSpacing*1-3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*1-3.5,OOBBSpacing*1,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					}
					
					translate([OOBBSpacing*3,OOBBSpacing*1-3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*3+3.5,OOBBSpacing*1,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					}
					
					translate([OOBBSpacing*1,OOBBSpacing*3+3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*1-3.5,OOBBSpacing*3,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					}
					
					translate([OOBBSpacing*3,OOBBSpacing*3+3,totalHeight-4]){
						linear_extrude(4){
							square([13,13/2],true);
						}
					}  
					translate([OOBBSpacing*3+3.5,OOBBSpacing*3,totalHeight-4]){
						linear_extrude(4){
							square([13/2+0.5,13],true);
						}
					} 
					
					
					
					//bearing hole
					
					///6704
					echo(totalHeight);
					if(bearingSize == 6704){
						OOBBInsertItemCoord("Bearing6704Hold",2,2,totalHeight);    
					}else if(bearingSize == 6803){
						OOBBInsertItemCoord("Bearing6803Hold",2,2,totalHeight);    
					}
					
					
					
					nutHeight = 9; //the height the nut is inserted at
					nutGap = 7;  //the length of the extrusion (distance from bottom is nutHeight - nutGap)
					nutWindow = 3; //the height of the nut (nutgap - nutWindow is the height of the gap mistake not fixed.)
					//LINKING SQUARES
					translate([OOBBSpacing*2.33,OOBBSpacing*2,nutHeight-nutGap+nutWindow]){
						linear_extrude(nutGap-nutWindow){
							square([OOBBNutM3WidthShortSide,30],true);
						}
					} 
					translate([OOBBSpacing*1.67,OOBBSpacing*2,nutHeight-nutGap+nutWindow]){
						linear_extrude(nutGap-nutWindow){
							square([OOBBNutM3WidthShortSide,30],true);
						}
					}
					//captive m3 nuts 2.5
					
					
					OOBBInsertItemCoord90("M3NutCaptive",2.333,1,ooZ=nutHeight,height=nutGap);      
					//servoHolderPart
					//m3 bolts
					OOBBInsertItemCoord("M3HoleExtra",2.333,1,height=nutHeight,ooZ=nutHeight);      
					
					
					OOBBInsertItemCoord90("M3NutCaptive",2.333,3,ooZ=nutHeight,height=nutGap);          
					OOBBInsertItemCoord("M3HoleExtra",2.333,3,height=nutHeight,ooZ=nutHeight);            
					//captivem3 nuts 1.5
					
					
					OOBBInsertItemCoord90("M3NutCaptive",1.667,1,ooZ=nutHeight,height=nutGap);         
					//servoHolderPart
					//m3 bolts
					OOBBInsertItemCoord("M3HoleExtra",1.667,1,height=nutHeight,ooZ=nutHeight);      
					
					
					OOBBInsertItemCoord90("M3NutCaptive",1.667,3,ooZ=nutHeight,height=nutGap);          
					OOBBInsertItemCoord("M3HoleExtra",1.667,3,height=nutHeight,ooZ=nutHeight);      
					
					
					
					
					
					//clearance hole
					OOBBInsertItemCoord("ServoMicroHole",2,2,height=9);
				}
			}  
		}
	}
	//######  SERVO BRACKET
	if( extra == "NONE" || extra=="BRACKET" || extra=="NOHORN"){
		

		translate([OOBBSpacing * 2,OOBBSpacing * 2,0]){
			difference(){
				union(){
					//servo piece
					translate([-5.35,0,0]){
						//OOBBPLOutline3DComplete(33,20,6);
						linear_extrude(6){
							square([33,20],true);
						}
					}
					//piece with screw holes
					translate([5,0,0]){
						//OOBBPLOutline3DComplete(10,42,6);
						linear_extrude(6){
							square([10,42],true);
						}
					}
				}
				OOBBInsertItemCoord("ServoMicroMount",0,0,height=12);
				OOBBInsertItemCoord("M3Slot",0.33,1);
				OOBBInsertItemCoord("M3Slot",0.33,-1);
			}
		}
	}

	//###### Servo Horn
	if( extra == "NONE" || extra=="HORN"){    
		translate([OOBBSpacing * 2,OOBBSpacing * 11,0]){    
			/*
				BASE 2.5 (both in botTube)
				HORN 1.5
				TUBE 0.5  4.5
				TUBE BIG 2
				NUT GAP 5
				TOP 3
			*/
			botTubeHeight = bearingSize==6803 ? 5.5 : 4.5; //default to 6704
			bearingInside = bearingSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
			bigTubeHeight = 2;
			armHeight = 3+OOBBNutM6Height;
			totalHeight = botTubeHeight+bigTubeHeight+armHeight;
			difference(){

				union(){
					
					
					//bottomTube
					
					translate([0,0,0]){
						OOBBcylinder(botTubeHeight,bearingInside,bearingInside);
					}
					//bigTube    
					
					translate([0,0,botTubeHeight+bigTubeHeight/2]){
						cylinder(bigTubeHeight,24/2,24/2,true);
					}
					//arm
					
					translate([0,0,botTubeHeight+bigTubeHeight]){
						OOBBPLOutline3DComplete(42,24,8.5);
					}
				}
				OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=4);
				
				//OOBBInsertItemCoord("ServoMicroHornCatch",0,0,4);
				OOBBInsertItemCoord("ServoMicroHornCatchSingle",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
				
				OOBBHole3D(0,0);
				OOBBHole3D(-1,0);
				OOBBHole3D(1,0);
				OOBBInsertItemCoord("M6NutCaptiveSingle",-1,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",0,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",-1.2,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",1,0,totalHeight-3);
				OOBBInsertItemCoord("M6NutCaptiveSingle",1.2,0,totalHeight-3);
			}
			
		}
	}
	//######  Base
	if( extra == "NONE" || extra=="BASE" || extra=="NOHORN"){    
		translate([0,OOBBSpacing * 6,0]){    
			union(){ 
				difference(){
					union(){
						OOBBPLOutline3D(3,3,18);
						//extra end bits to keep servo bracket from sticking out the end.
						translate([-1,0,0]){
							OOBBPLOutline3D(3,3,18);
						}
						translate([1,0,0]){
							OOBBPLOutline3D(3,3,18);
						}
					}
					OOBBInsertItemCoord("ServoWireClearance",3,2,ooZ=18);      
					OOBBHole3D(1,1);
					OOBBHole3D(3,1);
					OOBBHole3D(1,3);
					OOBBHole3D(3,3);
					OOBBInsertItemCoord("ServoMicroHole",2,2,height=18);
					OOBBInsertItemCoord("M3Hole",1.667,1);      
					OOBBInsertItemCoord("M3SocketHeadUpsideDown",1.667,1 ,ooZ=0);  
					OOBBInsertItemCoord("M3Hole",1.667,3);      
					//OOBBInsertItemCoord("M3CountersinkUpsideDown",1.667,3,ooZ=0);
					OOBBInsertItemCoord("M3SocketHeadUpsideDown",1.667,3,ooZ=0);
					OOBBInsertItemCoord("M3HoleScrewTop",2.333,3);      
					OOBBInsertItemCoord("M3HoleScrewTop",2.333,1);      
					//servo holder negative
					translate([2*OOBBSpacing,2*OOBBSpacing,0]){
						translate([-5.35,0,18-6.5]){
							OOBBPLOutline3DComplete(39+4,21,6.5);
						}
						//piece with screw holes
						translate([5,0,18-6.5]){
							OOBBPLOutline3DComplete(11+4,42+8,6.5);
						}        
						
					}

				}        
				//extra block added to conceal servo
				translate([OOBBSpacing * 1-6, OOBBSpacing*2,0]){
					linear_extrude(11){
						square([2,16],true);
					}
				}
			}
		} 
	}   

}

