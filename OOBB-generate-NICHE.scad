    m="HL-SM-03-03";
    w=0;
    h=0;
    s="TRUE";

include <OOBB-generate-BASE.scad>;



if(m=="HL-N17-05-03"){
    OOBB_HL_N17_05_03();    
}else if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
}else if(m=="BP-606-03-03"){
    OOBB_BP_606_03_03();   
}else if(m=="HL-SM-03-03"){
    OOBB_HL_SM_03_03();    
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


module OOBB_HL_SM_03_03(){
   
        //block part
    translate([0,OOBBSpacing * 6,0]){    
        
    
        spacerHeight = 12;
        //6704
        bearingHeight = 4;
        //6804
        //bearingHeight = 7;
        
        totalHeight = spacerHeight + bearingHeight;
        difference(){
            OOBBPLOutline3D(3,3,totalHeight);
         //holes
            OOBBHole3D(1,1);   
            OOBBHole3D(1,3);   
            OOBBHole3D(3,1);   
            OOBBHole3D(3,3);   
        //bearing hole
    
    ///6704
    OOBBInsertItemCoord("Bearing6704Outside",2,2,totalHeight);    
    OOBBInsertItemCoord("Bearing6704OutsideHold",2,2,spacerHeight,height=12); 
    
            
    ///6804        //OOBBInsertItemCoord("Bearing6804Outside",2,2,totalHeight);    
    //        OOBBInsertItemCoord("Bearing6804OutsideHold",2,2,12,height=12); 
        
         //captivem3 nuts 2.5
            OOBBInsertItemCoord("M3NutCaptive",2.333,1,totalHeight,height=7+7);      
        //servoHolderPart
            //m3 bolts
            OOBBInsertItemCoord("M3Hole",2.333,1);      
            OOBBInsertItemCoord("M3NutCaptive",2.333,3,totalHeight,height=7+7);      
            OOBBInsertItemCoord("M3Hole",2.333,3);      
           //captivem3 nuts 1.5
            OOBBInsertItemCoord("M3NutCaptive",1.667,1,totalHeight,height=7+7);      
        //servoHolderPart
            //m3 bolts
            OOBBInsertItemCoord("M3Hole",1.667,1);      
            OOBBInsertItemCoord("M3NutCaptive",1.667,3,totalHeight,height=7+7);      
            OOBBInsertItemCoord("M3Hole",1.667,3);      
         
       
         
         
         
         //clearance hole
           OOBBInsertItemCoord("ServoMicroHole",2,2,height=12);
        }
           
     }
     
     
     /*
     
    //Servo Holder
    translate([OOBBSpacing * 2,OOBBSpacing * 2,0]){
        difference(){
            union(){
                //servo piece
                translate([-5.35,0,0]){
                   OOBBPLOutline3DComplete(39,20,6);
                }
                //piece with screw holes
                translate([5-5.35,0,0]){
                   OOBBPLOutline3DComplete(13,42,6);
                }
            }
           OOBBInsertItemCoord("ServoMicroMount",0,0,height=12);
           OOBBInsertItemCoord("M3Slot",0,1);
           OOBBInsertItemCoord("M3Slot",0,-1);
        }
    }

   
    //servo arm
    translate([OOBBSpacing * 2,OOBBSpacing * 5,0]){    
        botTubeHeight = 7.5;
        bigTubeHeight = 5;
        armHeight = 3+4.85;
        totalHeight = botTubeHeight+bigTubeHeight+armHeight;
        difference(){

            union(){
                
                Bearing6804Inside = 19.8/2;
                //bottomTube
                
                translate([0,0,botTubeHeight/2]){
                    cylinder(botTubeHeight,Bearing6804Inside,Bearing6804Inside,true);
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
            OOBBInsertItemCoord("ServoMicroHornHole",0,0,height=2);
            OOBBInsertItemCoord("ServoMicroHornCatch",0,0,3.5);
            
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
   */
    

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
        
        
        
        OOBBnema17Holes(3*OS,2*OS,9);    
        
        //all the way through hole (to facilitate 19mm OD flexible coupler)        
        OOBBHole3DRadius(3*OS,2*OS,22/2);
        //25mm hole for clearance of metal outie bit on a NEMA17 motor
        OOBBHole3DRadiusComplete(3*OS,2*OS,25/2,3.575+4.85,9-6);    
        
    }
    
        
    
    
}


module OOBB_BP_606_03_03(){
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
        
        OOBBbearingHole("606",2,2);
        
        
    }
    
    
}

module OOBBbearingHole(bearingSize,OOx,OOy){
    if(bearingSize == "606"){
        OOBBHole3DRadiusComplete(OOx*OS,OOy*OS,OOBBBearing606Big,6,7.5);
        OOBBHole3DRadiusComplete(OOx*OS,OOy*OS,OOBBBearing606Little,9,9);
    }

}



module OOBBnema17Holes(x,y,z){
    translate([x,y,-10]){
        OOBBCountersinkM33DComplete(31/2,31/2,z+10);
        OOBBHole3DRadius(31/2,31/2,OOBBm3Hole);
        OOBBCountersinkM33DComplete(-31/2,-31/2,z+10);
        OOBBHole3DRadius(-31/2,-31/2,OOBBm3Hole);
        OOBBCountersinkM33DComplete(31/2,-31/2,z+10);
        OOBBHole3DRadius(31/2,-31/2,OOBBm3Hole);
        OOBBCountersinkM33DComplete(-31/2,31/2,z+10);
        OOBBHole3DRadius(-31/2,31/2,OOBBm3Hole);
    }
}

