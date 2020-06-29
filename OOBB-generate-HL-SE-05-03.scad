




//thicknesses
baseCapHeight = 5;        
spacerHeight = 12;
extraCapHeight = baseCapHeight+7;  //this is the amount to stretch the cap
bearingHeight = 4;  //default to 6704
totalHeight = spacerHeight + bearingHeight;
holderBaseHeight = 2; //used to be 12 6 too small may need to be 9

thicknessHolderA = bearingHeight + 2 + baseCapHeight;
thicknessHolderB = 5+5;
thicknessBracket = 12.5;



heightHolderA = thicknessHolderA + thicknessHolderB + thicknessBracket;
heightHolderB = thicknessHolderB + thicknessBracket;
heightBracket = thicknessBracket;


//todo
//add a second M3 hole to hold servo on each side
//remove slot for single hole
//make screws come up from bottom
//add block to lock m3 nuts on servo
module OOBB_HL_SE_05_03(){
   mode = "3DPR";
    //mode = "EXPLODED";
   //mode = "NONE";
    
    if(mode == "3DPR"){

        //######  HOLDER PART
        if( extra == "NONE" || extra=="HOLDER"  || extra=="HOLDERA" || extra=="NOHORN"){
        translate([OS*4,OS*2,thicknessHolderA/2]){
            rotate([0,180,0]){
                translate([0,0,-heightHolderA+thicknessHolderA-thicknessHolderA/2]){
                    OOBB_HL_SE_05_03_HOLDER_A();    
                }
            }
        }
    }
        //######  HOLDER PART
        if( extra == "NONE" || extra=="HOLDER"  || extra=="HOLDERB" || extra=="NOHORN"){
            translate([0,0,0]){
                translate([OS*2,OS*5,-heightHolderB+thicknessHolderB]){
                            OOBB_HL_SE_05_03_HOLDER_B();    
                }
            }
        }
        
        //######  SERVO BRACKET
        if( extra == "NONE" || extra=="BRACKET" || extra=="NOHORN"){
            translate([2*OS,8*OS,0]){
                OOBB_HL_SE_05_03_BRACKET();
            }
        }
        
        //###### Servo Horn
        if( extra == "NONE" || extra=="HORN"){    
            translate([7*OS,4*OS,0]){    
                OOBB_HL_SE_05_03_SERVOHORN();
            }
        }
    }
    else if(mode=="EXPLODED"){
        translate([0,0,40]){
        OOBB_HL_SE_05_03_HOLDER_A();
        }
        translate([0,0,20]){
        OOBB_HL_SE_05_03_HOLDER_B();    
        }
        translate([0,0,0]){
        OOBB_HL_SE_05_03_BRACKET();
        }
        translate([0,0,60]){
        //OOBB_HL_SE_05_03_SERVOHORN();
        }
    }
    else if(mode=="NONE"){
    
                OOBB_HL_SE_05_03_HOLDER_A();
                OOBB_HL_SE_05_03_HOLDER_B();    
                OOBB_HL_SE_05_03_BRACKET();
                //OOBB_HL_SE_05_03_SERVOHORN();
    }
}





///########
///########
///########  HOLDER
///########
        
module OOBB_HL_SE_05_03_HOLDER_A(){
    difference(){
            OOBB_HL_SE_05_03_HOLDER_A_BASE();
            OOBB_HL_SE_05_03_HOLDER_MAINHOLES();
    }
}


module OOBB_HL_SE_05_03_HOLDER_B(){ 
    difference(){
        OOBB_HL_SE_05_03_HOLDER_B_BASE();
        OOBB_HL_SE_05_03_HOLDER_MAINHOLES();
    }
}
       
module OOBB_HL_SE_05_03_BRACKET(){
    difference(){
        OOBB_HL_SE_05_03_BRACKET_BASE();
        OOBB_HL_SE_05_03_HOLDER_MAINHOLES();
    }
}


////######  BASE ROUTNES



module OOBB_HL_SE_05_03_HOLDER_A_BASE(){
    translate([0,0,heightHolderA-thicknessHolderA]){
        difference(){
            union(){
                translate([OS * -2,OS * -2,0]){
                    OOBBPLOutline3D(3,3,thicknessHolderA);
                    OOBBPLOutline3D(5,3,thicknessHolderA-4);
                }
            }
            TOP = 1;
            RIGHT = 1;
            BOTTOM = -1;
            LEFT = -1;
            OOBBinsert("M6BoltClearanceCorner",x=LEFT*OS,y=TOP*OS,z=thicknessHolderA,height=4,rot=270);
            OOBBinsert("M6BoltClearanceCorner",x=RIGHT*OS,y=TOP*OS,z=thicknessHolderA,height=4,rot=180);
            OOBBinsert("M6BoltClearanceCorner",x=LEFT*OS,y=BOTTOM*OS,z=thicknessHolderA,height=4,rot=0);
            OOBBinsert("M6BoltClearanceCorner",x=RIGHT*OS,y=BOTTOM*OS,z=thicknessHolderA,height=4,rot=90);
            OOBBinsert("Bearing6704ClearanceTube",0,0,z=thicknessHolderA-2-OOBBBearing6704Thickness,height=thicknessHolderA-OOBBBearing6704Thickness-2);
        }    
    }
}

module OOBB_HL_SE_05_03_HOLDER_B_BASE(){
    translate([0,0,heightHolderB-thicknessHolderB]){
        difference(){
            union(){
                translate([OS * -2,OS * -2,0]){
                    OOBBPLOutline3D(5,3,thicknessHolderB);
                }
                OOBBinsert("Bearing6704ClearanceTube",0,0,z=thicknessHolderB+thicknessHolderA-OOBBBearing6704Thickness-2,height=thicknessHolderA-OOBBBearing6704Thickness-2);
                
            }
        }
    }
}


module OOBB_HL_SE_05_03_BRACKET_BASE(){
    translate([0,0,0]){
        translate([OS*-2,OS*-2,0]){
            OOBBPLOutline3D(5,3,thicknessBracket);
        }
    }
}


////######  HOLE ROUTINES

module OOBB_HL_SE_05_03_HOLDER_MAINHOLES(){
//holes
    
    //main holes
        OOBBinsert("OOBBHoleSlot",-1*OS,1*OS,rot=270);
        OOBBinsert("OOBBHoleSlot",1*OS,1*OS,rot=225);
        OOBBinsert("OOBBHoleSlot",-1*OS,-1*OS,rot=0);
        OOBBinsert("OOBBHoleSlot",1*OS,-1*OS,rot=45);
        OOBBinsert("Bearing6704Hold",0,0,z=heightHolderA-2);
        //bottomHoles
        OOBBinsert("OOBBHole",2*OS,-1*OS);
        OOBBinsert("OOBBHole",3*OS,-1*OS);
        //topHoles
        OOBBinsert("OOBBHole",2*OS,1*OS);
        OOBBinsert("OOBBHole",3*OS,1*OS);
        //middleHole
        OOBBinsert("OOBBHole",3*OS,0*OS);

    
    //cap joining screws
        capJoiningScrewX1 = -1*OOBBSpacing-2;
        capJoiningScrewY1 = 0;
        capJoiningScrewX2 = 1*OOBBSpacing+2;

        capJoiningScrewZ1 = heightHolderA-OOBBm3SocketHeadDepth;
        capScrewLength=12;
        OOBBinsert("M3SocketHeadFull",capJoiningScrewX1,capJoiningScrewY1,z=capJoiningScrewZ1,length=capScrewLength);
        OOBBinsert("M3NutCaptiveSingle",capJoiningScrewX1,z=capJoiningScrewZ1-capScrewLength+2.5,length=capScrewLength);
        OOBBinsert("M3NutCaptiveSingle",capJoiningScrewX1,z=capJoiningScrewZ1-capScrewLength+3.5,length=capScrewLength);
        
        OOBBinsert("M3SocketHeadFull",capJoiningScrewX2,capJoiningScrewY1,z=capJoiningScrewZ1,length=capScrewLength);
        OOBBinsert("M3NutCaptiveSingle",capJoiningScrewX2,z=capJoiningScrewZ1-capScrewLength+2.5,length=capScrewLength);
        OOBBinsert("M3NutCaptiveSingle",capJoiningScrewX2,z=capJoiningScrewZ1-capScrewLength+3.5,length=capScrewLength);

    //long joining screws
        longJoiningScrewX1 = 0;
        longJoiningScrewY1 = -1*OS-2;
        longJoiningScrewX2 = 0;
        longJoiningScrewY2 = 1*OS+2;
        longJoiningScrewZ1 = heightHolderA-OOBBm3SocketHeadDepth;
        longScrewLength=30;
        OOBBinsert("M3SocketHeadFull",longJoiningScrewX1,longJoiningScrewY1,z=longJoiningScrewZ1,length=longScrewLength);
        OOBBinsert("M3NutCaptiveSingle",longJoiningScrewX1,longJoiningScrewY1,z=longJoiningScrewZ1-longScrewLength+2.5);
        OOBBinsert("M3NutCaptiveSingle",longJoiningScrewX1,longJoiningScrewY1,z=longJoiningScrewZ1-longScrewLength+3.5);
        
        OOBBinsert("M3SocketHeadFull",longJoiningScrewX2,longJoiningScrewY2,z=longJoiningScrewZ1,length=longScrewLength);
        OOBBinsert("M3NutCaptiveSingle",longJoiningScrewX2,longJoiningScrewY2,z=longJoiningScrewZ1-longScrewLength+2.5);
        OOBBinsert("M3NutCaptiveSingle",longJoiningScrewX2,longJoiningScrewY2,z=longJoiningScrewZ1-longScrewLength+3.5);
        
        



/*
    
    OOBBInsertItemMM("M3Hole",3*OOBBSpacing+2,2*OOBBSpacing);      
    OOBBInsertItemMM("M3Hole",1*OOBBSpacing-2,2*OOBBSpacing);      
 //Servo Low
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing,3*OOBBSpacing+2);      
    //Servo High
    OOBBInsertItemMM("M3Hole",2*OOBBSpacing,1*OOBBSpacing-2);
    */

    //servo mount
        OOBBinsert("ServoFullMountTop",0,0,z=6,height=7+5,rot=180);
        //OOBBInsertItemMM("M3Slot",0*OOBBSpacing,1*OOBBSpacing+2);
        //OOBBInsertItemMM("M3Slot",0*OOBBSpacing,-1*OOBBSpacing-2);
 /*           
               
            //Servo Low
            
        OOBBInsertItemMM("M3NutCaptive",2*OOBBSpacing,3*OOBBSpacing+2,ooZ=OOBBNutM3Height,height=20);      
        //Servo High
        OOBBInsertItemMM("M3NutCaptive",2*OOBBSpacing,1*OOBBSpacing-2,ooZ=OOBBNutM3Height,height=20);      
       
        
        extraNutHeight =     holderBaseHeight+extraCapHeight-baseCapHeight-3;
        OOBBInsertItemMM("M3NutCaptive",3*OOBBSpacing+2,2*OOBBSpacing,ooZ=extraNutHeight,height=20);      
        
        OOBBInsertItemMM("M3NutCaptive",1*OOBBSpacing-2,2*OOBBSpacing,ooZ=extraNutHeight,height=20);      
        
        
        
        OOBBInsertItemCoord("ServoHole",2,2,height=holderBaseHeight+extraCapHeight-baseCapHeight-5);
        //OOBB_HL_SM_03_03_BASE_HOLES();
        
        nutHeight = 4;
        //OOBBInsertItemMMRotate("M3NutCaptiveSideInsert",2*OOBBSpacing-OOBBbaseBoltOffset,3*OOBBSpacing,ooZ=nutHeight+3,height=nutHeight,rot=0);
        //OOBBInsertItemMMRotate("M3NutCaptiveSideInsert",2*OOBBSpacing-OOBBbaseBoltOffset,1*OOBBSpacing,ooZ=nutHeight+3,height=nutHeight,rot=180);
   */                
/*
    nutHeight = OOBBNutM3Height;
    nutGap = nutHeight;
    //Servo Low
   
    //OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight-2);
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,3*OOBBSpacing+2,height=capHeight); //to allow for using 30mm bolts      
    //Servo High
    //OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight);
    //to allow for using 30mm bolts
    //OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight-2); 
    OOBBInsertItemMM("M3SocketHead",2*OOBBSpacing,1*OOBBSpacing-2,height=capHeight); //Retaining Screws
    OOBBInsertItemMM("M3SocketHead",3*OOBBSpacing+2,2*OOBBSpacing,height=capHeight);      
    OOBBInsertItemMM("M3SocketHead",1*OOBBSpacing-2,2*OOBBSpacing,height=capHeight);      
    
    

*/
            
}

///########
///########
///########  SERVOHORN
///########

	
botTubeHeightFull=7;
topTubeHeightFull = 4;
	
module OOBB_HL_SE_05_03_SERVOHORN(){

	bearingTubeHeight = 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = OOBBBearing6704Inside; //default to 6704
	bearingLittle = OOBBBearing6704Little;
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
                    OOBB_HL_SE_05_03_SERVOHORN_HOLES();
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
                OOBB_HL_SE_05_03_SERVOHORN_HOLES();
            }
        }
    }    
	
}

module OOBB_HL_SE_05_03_SERVOHORN_HOLES(){
    OOBB_screwClamp1X = 0; 
    OOBB_screwClamp2X = 0;
    OOBB_screwClamp1Y = 8.125;
    OOBB_screwClamp2Y = -8.125;
	
    
    
	bearingTubeHeight = 4; //default to 6704
	//bearingTubeHeight = 4; //default to 6704
	bearingInside = OOBBBearing6704Inside; //default to 6704
	bearingLittle = OOBBBearing6704Little;
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