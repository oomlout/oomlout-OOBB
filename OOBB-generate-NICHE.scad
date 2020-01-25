    /*
    //m="HL-B2X-07-05";
    m="HL-SM-03-03-6803";
    //m="HL-PC-03-03";
    w=3;
    h=0;
    s="3DPR";
    extra="BRACKET";
      */
    
    
include <OOBB-generate-BASE.scad>;
include <OOBB-generate-TEST.scad>;



if(m=="HL-N17-05-03"){
    OOBB_HL_N17_05_03();    
}else if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
}else if(m=="BP-606-03-03"){
    OOBB_BP_606_03_03();   
}else if(m=="BP-6810-05-05"){
    OOBB_BP_6810_05_05();   
}else if(m=="HL-SM-03-03-6704"){
    OOBB_HL_SM_03_03(6704); 
}else if(m=="HL-SM-03-03-6803"){
    OOBB_HL_SM_03_03(6803);    
}else if(m=="HL-PZ-05-03"){
    OOBB_HL_PZ_05_03();    
}else if(m=="HL-PC-03-03"){
    OOBB_HL_PC_03_03();    
}else if(m=="WH"){
    OOBB_WH(w);    
}else if(m=="CI-03-CA-FL"){
    CI_03_CA_FL();    
}else if(m=="HL-B2X-07-05"){
    HL_B2X_07_05();    
}

module HL_B2X_07_05(){
    difference(){
        rotate([0,180,0]){     //rotate so bevel is on the top so when flipped in cura it has the bevel on the right side
            translate([-4*OOBBSpacing,-3*OOBBSpacing,-4.5]){ //put centre at 0,0
                difference(){
                    OOBBPLOutline3D(7,5,4.5);
                    //OOBBHole3D(1,1);
                    //OOBBHole3D(2,1);
                    //OOBBHole3D(3,1);
                    OOBBHole3D(4,1);
                    OOBBHole3D(5,1);
                    OOBBHole3D(6,1);
                    OOBBHole3D(7,1);
                    OOBBHole3D(1,5);
                    OOBBHole3D(2,5);
                    OOBBHole3D(3,5);
                    OOBBHole3D(4,5);
                    OOBBHole3D(5,5);
                    OOBBHole3D(6,5);
                    OOBBHole3D(7,5);

                }
            }
        }
            OOBBInsertItemMM("M3Hole",-47.5,16.5);   
            OOBBInsertItemMM("M3RivetUpsideDown",-47.5,16.5);   
            OOBBInsertItemMM("M3Hole",47.5,16.5);   
            OOBBInsertItemMM("M3RivetUpsideDown",47.5,16.5);   
            OOBBInsertItemMM("M3Hole",47.5,-16.5);   
            OOBBInsertItemMM("M3RivetUpsideDown",47.5,-16.5);   
            OOBBInsertItemMM("M3Hole",-47.5,-16.5);   
            OOBBInsertItemMM("M3RivetUpsideDown",-47.5,-16.5);
         //clearance for PCB components
            translate([5.5,0,0]){
                linear_extrude(4.5){      // Main Hole
                    square([77,27],true);
                }
            }
            translate([48,-27.5,0]){  //corner extrusion
                linear_extrude(4.5){
                    square([6,17],true);
                }
            }
            translate([30,-25.5,0]){  //usb port charging cutout
                linear_extrude(4.5){
                    square([30,21],true);
                }
            }
            translate([-41,-21.5,0]){  // resistor cutout
                linear_extrude(4.5){
                    square([10,5],true);
                }
            }
            translate([-39,19.5,0]){  // power button cutout
                linear_extrude(4.5){
                    square([12,7],true);
                }
            }
            translate([-44,0,0]){  // USB A cutout
                linear_extrude(4.5){
                    square([14,20],true);
                }
            }
        }
    
}

module CI_03_CA_FL(){
    difference(){
        OOBBCIOutline3D(3,12);
        OOBBHolesForCI3D(3);
        OOBBInsertItemCoord("CouplerFlangeM5",0,0,12);   
        //flange cutout
        cylinder(4*2,23/2,23/2,true);     
        nutHeight = 12-3;
        OOBBInsertItemCoord("M6NutCaptiveSingle",0,1,nutHeight);   
        OOBBInsertItemCoord("M6NutCaptiveSingle",1,0,nutHeight);   
        OOBBInsertItemCoord("M6NutCaptiveSingle",0,-1,nutHeight);   
        OOBBInsertItemCoord("M6NutCaptiveSingle",-1,0,nutHeight);   
    }
    
    
}

module OOBB_WH(width){
    oringCrossSection = 5.33/2;
    oringGrooveDepth = 2;
    wheelThickness = 9;
    
    extrudeRadius = (((width * OOBBSpacing - 3) + oringCrossSection*2)-oringGrooveDepth*2)  / 2;
    
    difference(){
        OOBBCI3D(width,wheelThickness);
        rotate_extrude(convexity = 10){
            translate([extrudeRadius, wheelThickness/2, 0]){
            circle(r = oringCrossSection);
            }
        }
        
        //original single
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=12);
        
        //9mm single
        OOBBInsertItemCoord("Bearing606",0,0,ooZ=7.5);
        
        //one embedded one extra
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=10.5);
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=19.5);
        
        //two sides
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=7.5);
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=16.5);
        
        //9mm two sides
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=3);
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=12);
        
    }
    
    
    
}

module OOBB_HL_PZ_05_03(){
  difference(){
      union(){
        OOBBPLOutline3D(5,3,3);
        //extra end bits to keep servo bracket from sticking out the end.
        translate([0,-1.5,0]){
           OOBBPLOutline3D(5,3,3);
        }
       } 
        OOBBHole3D(1,3);
        OOBBHole3D(2,3);
        OOBBHole3D(3,3);
        OOBBHole3D(4,3);
        OOBBHole3D(5,3);
        
        OOBBInsertItemCoord180("PiZeroMountUpsideDown",3,1.5,0);

        
   }
}
module OOBB_HL_PC_03_03(){
  difference(){
        OOBBPLOutline3D(3,3,3);
        OOBBHole3D(1,3);
        OOBBHole3D(2,3);
        OOBBHole3D(3,3);
        OOBBHole3D(3,1);
        OOBBHole3D(3,2);

        
        OOBBInsertItemMM("PiCameraMount",OOBBSpacing*1.5,OOBBSpacing*2-6,3);
        translate([OOBBSpacing*1.5,OOBBSpacing*2-6,00]){  //extra m2 holes to get the bevel at z=0  
          OOBBInsertItemMM("M2Hole",-10.5,10,0);
          OOBBInsertItemMM("M2Hole",-10.5,-2.5,0);
          OOBBInsertItemMM("M2Hole",10.5,10,0);
          OOBBInsertItemMM("M2Hole",10.5,-2.5,0);
        }
      
      
      
        
   }
}


module OOBB_HL_SM_03_03(bearingSize){
   
   
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
            
                
                    
                    nutHeight = 8; //the height the nut is inserted at
                    nutGap = 6;  //the length of the extrusion (distance from bottom is nutHeight - nutGap)
                    nutWindow = 3; //the height of the linking square
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



module OOBB_HL_N17_05_03(){
    
    OOWidth = 5;
    OOHeight = 3;    
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,9);
        //OOBB Holes
        //Left side holes
        OOBBHole3D(1,1);
        //OOBBSlotTall3D(1,1);
        //OOBBSlotWide3D(1,1);        
        OOBBHole3D(1,2);
        //OOBBSlotTall3D(1,2);
        //OOBBSlotWide3D(1,2);        
        OOBBHole3D(1,3);
        //OOBBSlotWide3D(1,3);        
        
        //right side holes
        OOBBHole3D(5,1);
        //OOBBSlotTall3D(5,1);
        //OOBBSlotWide3D(4,1);        
        OOBBHole3D(5,2);
        //OOBBSlotTall3D(5,2);
        //OOBBSlotWide3D(4,2);                
        OOBBHole3D(5,3);
        //OOBBSlotWide3D(4,3);        
        
        //slots around NEMA17 Mount
        //OOBBSlotWide3D(2,1);       
        //OOBBSlotWide3D(2,3);       
        //OOBBSlotWide3D(3,1);       
        //OOBBSlotWide3D(3,3);       
        
        //OOBBSlotTall3D(2,1);       
        //OOBBSlotTall3D(2,2);       
        //OOBBSlotTall3D(4,1);       
        //OOBBSlotTall3D(4,2);       
        
        
        
        OOBBInsertItemCoord("NEMA17",3,2,ooZ=9);
        
        //all the way through hole (to facilitate 19mm OD flexible coupler)        
        OOBBHole3DRadius(3*OS,2*OS,22/2);
        //25mm hole for clearance of metal outie bit on a NEMA17 motor
        OOBBHole3DRadiusComplete(3*OS,2*OS,25/2,3.575+4.85,9-6);    
        OOBBInsertItemCoord("SetScrewKeyway",3,2,ooZ=4.5);    
        
    }
    
        
    
    
}


module OOBB_BP_606_03_03(){
    if(extra == "SANDWICH"){
        translate([2*OOBBSpacing,2*OOBBSpacing,0]){
            OOBB_BP_606_03_03_HALF();
        }
        translate([2*OOBBSpacing,5*OOBBSpacing,0]){
            mirror([1,0,0]){
                    OOBB_BP_606_03_03_HALF();
            }
        }
    }else{
       OOBB_BP_606_03_03_FULL ();
    }
}

module OOBB_BP_606_03_03_HALF(){
    OOWidth = 3;
    OOHeight = 3;    
    translate([-2*OOBBSpacing,-2*OOBBSpacing,0]){
        difference(){
            OOBBPLOutline3D(OOWidth,OOHeight,4.5);
            //OOBB Holes
            OOBBHole3D(1,1);
            //OOBBSlotTall3D(1,1);
            //OOBBSlotWide3D(1,1);
            OOBBHole3D(1,2);
            //OOBBSlotTall3D(1,2);
            OOBBHole3D(1,3);
            //OOBBSlotWide3D(1,3);
            
            OOBBHole3D(3,1);
            //OOBBSlotTall3D(3,1);
            
            OOBBHole3D(3,2);
            //OOBBSlotTall3D(3,2);
            OOBBHole3D(3,3);
            
            OOBBHole3D(2,1);
            //OOBBSlotWide3D(2,1);
            OOBBHole3D(2,3);
            //OOBBSlotWide3D(2,3);
            
            OOBBInsertItemCoord("Bearing606",2,2,ooZ=7.5);
            OOBBInsertItemCoord("BearingJoiner0303",0,0);
            
            
        }
        
    }
    
    
}


module OOBB_BP_606_03_03_FULL(){
    OOWidth = 3;
    OOHeight = 3;    
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,9);
        //OOBB Holes
        OOBBHole3D(1,1);
        //OOBBSlotTall3D(1,1);
        //OOBBSlotWide3D(1,1);
        OOBBHole3D(1,2);
        //OOBBSlotTall3D(1,2);
        OOBBHole3D(1,3);
        //OOBBSlotWide3D(1,3);
        
        OOBBHole3D(3,1);
        //OOBBSlotTall3D(3,1);
        
        OOBBHole3D(3,2);
        //OOBBSlotTall3D(3,2);
        OOBBHole3D(3,3);
        
        OOBBHole3D(2,1);
        //OOBBSlotWide3D(2,1);
        OOBBHole3D(2,3);
        //OOBBSlotWide3D(2,3);
        
        OOBBInsertItemCoord("Bearing606",2,2,ooZ=7.5);
        
        
    }
    
    
}

module OOBB_BP_6810_05_05(){
    OOWidth = 5;
    OOHeight = 5;    
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,9);
        //OOBB Holes
        OOBBHole3D(1,1);
        //OOBBSlotTall3D(1,1);
        //OOBBSlotWide3D(1,1);
        OOBBHole3D(1,5);
        
        OOBBHole3D(5,1);
        //OOBBSlotTall3D(3,1);
        
        OOBBHole3D(5,5);
        
        
        
        OOBBInsertItemCoord("Bearing6810",3,3,ooZ=8);
        
        
    }
    
    
}





module OOBBnema17Holes(x,y,z){
    translate([x,y,-10]){
//        OOBBCountersinkM33DComplete(31/2,31/2,z+10);
//        OOBBHole3DRadius(31/2,31/2,OOBBm3Hole);
//        OOBBCountersinkM33DComplete(-31/2,-31/2,z+10);
//        OOBBHole3DRadius(-31/2,-31/2,OOBBm3Hole);
//        OOBBCountersinkM33DComplete(31/2,-31/2,z+10);
//        OOBBHole3DRadius(31/2,-31/2,OOBBm3Hole);
//        OOBBCountersinkM33DComplete(-31/2,31/2,z+10);
//        OOBBHole3DRadius(-31/2,31/2,OOBBm3Hole);
    }
}

