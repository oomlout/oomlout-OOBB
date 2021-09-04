
    //m="WH";
    //m="HL-B1X-09-02";
    //m="OBBB-04-03";
    //m="HL-SM-03-03";
    //m="HL-TP-03-03_RA";
    //m="HL-PC-03-03";
    //m="TEST-OOEBNORMAL";
    //m="BP-6806-04-04";
    //w=5;
    //h=5;
    //s="3DPR";
    //extra="BRACKET";
    //extra="HOLDERA";
    //extra="HORN";
    //extra="NUTBRACKET";
    //extra="NONE";
  
  
include <OOBB-generate-BASE.scad>;
include <OOBB-generate-TEST.scad>;
include <OOBB-generate-HL-SM-03-03.scad>;
include <OOBB-generate-BP.scad>;

/*
if(m=="HL-N17-05-03"){
    OOBB_xHL_N17_05_03();    
}else if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
}else if(m=="BP-606-03-03"){
    OOBB_BP_606_03_03();  
}else if(m=="HL-SM-03-03"){
    OOBB_HL_SM_03_03();    
}else if(m=="HL-SE-05-03"){
    OOBB_HL_SE_05_03();    
}else if(m=="HL-PZ-05-03"){
    OOBB_HL_PZ_05_03();    
}else if(m=="HL-PC-03-03"){
    OOBB_HL_PC_03_03();    
}else if(m=="WH"){
    OOBB_WH(w);    
}else if(m=="WHS"){
    OOBB_WH_SERVO(w,6803);    
}else if(m=="CI-03-CA-FL"){
    CI_03_CA_FL();    
}else if(m=="HL-B2X-07-04"){
    HL_B2X_07_04();  
}else if(m=="HL-B1X-09-02"){
    HL_B1X_09_02();  
}else if(m=="BP-6806-04-04"){
    BP_6806_04_04();    
}else if(m=="BP-6810-05-05"){
    BP_6810_05_05();    
}else if(m=="OBBB-04-03"){
    OBBB_04_03();    
}else if(m=="HL-TP-03-03"){
    OBBB_HL_TP_03_03();    
}else if(m=="HL-TP-03-03-RA"){
    OBBB_HL_TP_03_03_RA();    
}
*/

module OBBB_04_03(){
 OBBB_04_03_TOP();
 translate([OS*3,0,1.6+10]){
 //translate([0,0,0]){
     OBBB_04_03_BOTTOM();
 }
    
}    
    
module OBBB_04_03_TOP(){
    
    //top
    difference(){
        translate([-OS*2,-OS*2.5,0]){
            difference(){
                OOBBPLOutline3D(3,4,8.5);
                OOBBHole3D(1,4);
                OOBBHole3D(2,4);
                OOBBHole3D(3,4);
            }
        }
        zz1 = 8.5;
        xx1 = 3.35;
        yy1 = 11.125;
        OOBBInsertItemMM("OOEBNormal",xx1,yy1,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*1,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*2,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*3,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*4,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*5,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*6,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*7,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*8,zz1);
        OOBBInsertItemMM("OOEBNormal",xx1,yy1-2.54*9,zz1);
        
        
        xx2 = -14.43;
        OOBBInsertItemMM("OOEBNormal",xx2,yy1,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*1,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*2,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*3,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*4,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*5,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*6,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*7,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*8,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*9,zz1);
        
        OOBBInsertItemMM("OOEBDCJA",-11.5,-21.395,14);
        OOBBInsertItemMM("OOEBDCJA",-11.5,-21.395+1,14); //extra to remove wall
        
        OOBBInsertItemMM("OOEBARDCUpsideDown",5.89,-6.337,3);
        
        
        OOBBInsertItemMM90("OOEBDual",0.81,13.65-2.54,zz1);
        
    }
}
    
module OBBB_04_03_BOTTOM(){
           
    //bottom
    translate([0,0,-1.6]){
    //translate([0,0,-1.6]){
        difference(){
            translate([-OS*2,-OS*2.5,-10]){
                difference(){
                    OOBBPLOutline3D(3,4,10);
                    OOBBHole3D(1,4);
                    OOBBHole3D(2,4);
                    OOBBHole3D(3,4);
                }
            }
        zz1 = 8.5-3;
        yy1 = 11.125;
        xx2 = -14.43;
        OOBBInsertItemMM("OOEBNormal",xx2,yy1,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*1,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*2,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*3,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*4,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*5,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*6,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*7,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*8,zz1);
        OOBBInsertItemMM("OOEBNormal",xx2,yy1-2.54*9,zz1);
        
        OOBBInsertItemMM("OOEBDCJA",-11.5,-21.395,14-3);
        OOBBInsertItemMM("OOEBDCJA",-11.5,-21.395+1,14-3); //extra to remove wall
            OOBBInsertItemMM("OOEBARDCUpsideDown",5.89,-6.337,4.5);
        }   
        
        
    }
}

module HL_B2X_07_04(){
    difference(){
        rotate([0,180,0]){     //rotate so bevel is on the top so when flipped in cura it has the bevel on the right side
            translate([-4*OOBBSpacing,-3*OOBBSpacing,-4.5]){ //put centre at 0,0
                difference(){
                    translate([0,OOBBSpacing*1,0]){ //added because size was changed after designed.
                        OOBBPLOutline3D(7,4,4.5);
                    }
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

module HL_B1X_09_02(){
    
    //mode = "";
    mode="3DPR";
    
    
    holderHeight=15+3+2;
    
    if(mode== "3DPR"){
        translate([0,0,holderHeight]){
            rotate([180,0,0]){    
                HL_B1X_09_02_TOP(holderHeight);
            }
        }
        translate([0,OS*2.5,9]){
            HL_B1X_09_02_BOTTOM();
        }
    }else{
        HL_B1X_09_02_TOP(holderHeight);
        HL_B1X_09_02_BOTTOM();
    }
}
    
module HL_B1X_09_02_TOP(holderHeight){   
    extraWidth=0.25;
    
    
    
    //top main
    difference(){
    //    rotate([0,180,0]){     //rotate so bevel is on the top so when flipped in cura it has the bevel on the right side
    //        translate([-4*OOBBSpacing,-3*OOBBSpacing,-4.5]){ //put centre at 0,
        
     
        translate([-OS*5,-OS*1.5,0]){
            difference(){
                translate([0,OS*-extraWidth/2,0]){
                    OOBBPLOutline3D(9,2+extraWidth,holderHeight);
                    //OOBBPLOutline3D(9,2+extraWidth,5); //testing height
                }
                OOBBHole3D(1,1);
                OOBBHole3D(1,1.5);
                OOBBHole3D(1,2);
                OOBBHole3D(9,1);
                OOBBHole3D(9,1.5);
                OOBBHole3D(9,2);
            }
        }
        OOBBInsertItemMM("B1X",0,0,ooZ=18);
        OOBBInsertItemMM90("OOEBNormalCableUpsideDown",53,0,ooZ=-8.5);    
        OOBBInsertItemMM90("OOEBNormalCableUpsideDown",53-2,0,ooZ=-8.5);  
        OOBBInsertItemMM90("OOEBNormalCableUpsideDown",53-4,0,ooZ=-8.5); 
        OOBBInsertItemMM90("OOEBNormalCableUpsideDown",53-6,0,ooZ=-8.5); 
        OOBBInsertItemMM90("OOEBNormalCableUpsideDown",53-8,0,ooZ=-8.5); 
        OOBBInsertItemMM90("OOEBNormalCableUpsideDown",53-10,0,ooZ=-8.5);
     }
}
                            
                             
module HL_B1X_09_02_BOTTOM(){
    extraWidth=0.25;
    
     //bottom cap
    difference(){
    //    rotate([0,180,0]){     //rotate so bevel is on the top so when flipped in cura it has the bevel on the right side
    //        translate([-4*OOBBSpacing,-3*OOBBSpacing,-4.5]){ //put centre at 0,
        
     
                capHeight = 8.5;
        translate([-OS*5,-OS*1.5,0]){
            difference(){
                translate([0,OS*-extraWidth/2,-capHeight-0.5]){//extra tp take care of clearance positive to make clamping nice
                    OOBBPLOutline3D(9,2+extraWidth,capHeight);
                    //OOBBPLOutline3D(9,2+extraWidth,5); //testing height
                }
                OOBBHole3D(1,1);
                OOBBHole3D(1,1.5);
                OOBBHole3D(1,2);
                OOBBHole3D(9,1);
                OOBBHole3D(9,1.5);
                OOBBHole3D(9,2);
            }
        }
        OOBBInsertItemMM("B1X",0,0,ooZ=18);
        OOBBInsertItemMM90("OOEBNormalCableUpsideDown",53,0,ooZ=-capHeight-0.5);
        
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
module OOBB_WH_SOLID(width){
    oringCrossSection = 5.33/2;
    oringGrooveDepth = 2;
    wheelThickness = 9;
    
    extrudeRadius = (((width * OOBBSpacing - 3) + oringCrossSection*2)-oringGrooveDepth*2)  / 2;
    
    difference(){
        OOBBCI3D(width,wheelThickness,middle=false);
        rotate_extrude(convexity = 10){
            translate([extrudeRadius, wheelThickness/2, 0]){
            circle(r = oringCrossSection);
            }
        }
        
        //original single
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=12);
        
        //9mm single
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=7.5);
        
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


module OOBB_WH_SERVO(width, bSize){
    

        //servo horn
            /*
                BASE 2.5 (both in botTube)
                HORN 1.5
                TUBE 0.5  4.5
                TUBE BIG 2
                NUT GAP 5
                TOP 3
            */
            botTubeHeight = bSize==6803 ? 5.5 : 4.5; //default to 6704
            bearingInside = bSize==6803 ? OOBBBearing6803Inside : OOBBBearing6704Inside; //default to 6704
            bigTubeHeight = 2;
            armHeight = 3+OOBBNutM6Height;
            totalHeight = botTubeHeight+bigTubeHeight+armHeight;
    
        union(){
        translate([0,0,botTubeHeight+bigTubeHeight]){
        OOBB_WH_SOLID(width);
        }
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
                    translate([0,0,12]){
                        cylinder(9,20/2,20/2,true);
                    }
                }
                
               
                OOBBHole3D(0,0);
                OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=4);
                OOBBInsertItemCoord("ServoMicroHornCatchSingle",0,0,4); //allows for 1.5mm thick arm and 2.5mm thick adapter tube
            }
            
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

module OBBB_HL_TP_03_03()    {
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
        OOBBInsertItemCoord("TripodNutCaptive",2,2,ooZ=7.5);
      OOBBInsertItemCoord("M7Hole",2,2);
    }
    
}

module OBBB_HL_TP_03_03_RA()    {
    OOWidth = 3;
    OOHeight = 3;    
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,12);
        //OOBB Holes
        
        OOBBHole3D(2,1);
        //OOBBSlotWide3D(2,1);
        OOBBHole3D(2,3);
        //OOBBSlotWide3D(2,3);
        OOBBInsertItemCoord("TripodNutCaptive",2,2,ooZ=7.5);
      OOBBInsertItemCoord("M7Hole",2,2);
        OOBBInsertItemCoordRotateX("OOBBHole",1,6,rot=90,ooZ=6);        
    OOBBInsertItemCoordRotateX("OOBBHole",3,6,rot=90,ooZ=6);        
    }
    
}


module OOBB_BP_606_03_03_FULL(){
    OOWidth = 3;
    OOHeight = 3;    
    //outside
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

