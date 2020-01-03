    
    /*
    m="TESTER-SERVOHORN";
    w=3;
    h=0;
    s="TRUE";
    extra="HORN";
    */
    
include <OOBB-generate-BASE.scad>;



if(m=="HL-N17-05-03"){
    OOBB_HL_N17_05_03();    
}else if(m=="PLTEST-HoleTolerance"){
    OOBBPLTESTHoleTolerance();
}else if(m=="BP-606-03-03"){
    OOBB_BP_606_03_03();   
}else if(m=="BP-6810-05-05"){
    OOBB_BP_6810_05_05();   
}else if(m=="HL-SM-03-03"){
    OOBB_HL_SM_03_03();    
}else if(m=="WH"){
    OOBB_WH(w);    
}else if(m=="CI-03-CA-FL"){
    CI_03_CA_FL();    
}else if(m=="TEST-SERVOHORN"){
    TEST_SERVOHORN();    
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
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=7.5);
        
        //one embedded one extra
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=10.5);
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=19.5);
        
        //two sides
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=7.5);
        //OOBBInsertItemCoord("Bearing606",0,0,ooZ=16.5);
        
        //9mm two sides
        OOBBInsertItemCoord("Bearing606",0,0,ooZ=3);
        OOBBInsertItemCoord("Bearing606",0,0,ooZ=12);
        
    }
    
    
    
}

module OOBB_HL_SM_03_03(){
   
    //HOLDER part
    if( extra == "NONE" || extra=="HOLDER" || extra=="NOHORN"){
        translate([0,OOBBSpacing * 3,0]){    
        //translate([0,OOBBSpacing * 0,0]){    
            
        
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
                OOBBInsertItemCoord("M6BoltClearance",1,1,totalHeight,height=5);      
                OOBBHole3D(1,3);   
                OOBBInsertItemCoord("M6BoltClearance",1,3,totalHeight,height=5);
                OOBBHole3D(3,1);   
                OOBBInsertItemCoord("M6BoltClearance",3,1,totalHeight,height=5);
                OOBBHole3D(3,3);   
                OOBBInsertItemCoord("M6BoltClearance",3,3,totalHeight,height=5);
                
            //extra keepout
                translate([OOBBSpacing*2,OOBBSpacing-1,totalHeight-5]){
                    linear_extrude(5){
                    square([42,10],true);
                    }
                }
                translate([OOBBSpacing*2,OOBBSpacing*3+1,totalHeight-5]){
                    linear_extrude(5){
                    square([42,10],true);
                    }
                }
                
                
            //bearing hole
        
        ///6704
        OOBBInsertItemCoord("Bearing6704Outside",2,2,totalHeight);    
        OOBBInsertItemCoord("Bearing6704OutsideHold",2,2,spacerHeight,height=12); 
        
                
        ///6804        //OOBBInsertItemCoord("Bearing6804Outside",2,2,totalHeight);    
        //        OOBBInsertItemCoord("Bearing6804OutsideHold",2,2,12,height=12); 
            
             //captive m3 nuts 2.5
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
               #OOBBInsertItemCoord("ServoMicroHole",2,2,height=7);
            }
               
         }
    
     
    //Servo Holder
        translate([OOBBSpacing * 2,OOBBSpacing * 2,0]){
            difference(){
                union(){
                    //servo piece
                    translate([-5.35,0,0]){
                       OOBBPLOutline3DComplete(39,20,6);
                    }
                    //piece with screw holes
                    translate([5,0,0]){
                       OOBBPLOutline3DComplete(11,42,6);
                    }
                }
               OOBBInsertItemCoord("ServoMicroMount",0,0,height=12);
               OOBBInsertItemCoord("M3Slot",0.33,1);
               OOBBInsertItemCoord("M3Slot",0.33,-1);
            }
        }
    }

    //servo horn
    if( extra == "NONE" || extra=="HORN"){    
        translate([OOBBSpacing * 2,OOBBSpacing * 11,0]){    
            botTubeHeight = 4.5;
            bigTubeHeight = 2;
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
    }

    
   //Base
    if( extra == "NONE" || extra=="BASE" || extra=="NOHORN"){    
      translate([0,OOBBSpacing * 6,0]){    
        difference(){
            OOBBPLOutline3D(3,3,18);
            OOBBHole3D(1,1);
            OOBBHole3D(3,1);
            OOBBHole3D(1,3);
            OOBBHole3D(3,3);
            OOBBInsertItemCoord("ServoMicroHole",2,2,height=18);
            OOBBInsertItemCoord("M3Hole",1.667,1);      
            OOBBInsertItemCoord("M3CountersinkUpsideDown",1.667,1 ,ooZ=0);  
            OOBBInsertItemCoord("M3Hole",1.667,3);      
            OOBBInsertItemCoord("M3CountersinkUpsideDown",1.667,3,ooZ=0);
            OOBBInsertItemCoord("M3HoleScrewTop",2.333,3);      
            OOBBInsertItemCoord("M3HoleScrewTop",2.333,1);      
            //servo holder negative
            translate([2*OOBBSpacing,2*OOBBSpacing,0]){
                translate([-5.35,0,18-6]){
                    OOBBPLOutline3DComplete(39+4,24,7);
                }
                //piece with screw holes
                translate([5,0,18-6]){
                    OOBBPLOutline3DComplete(11+4,42+8,7);
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
        
        
        
        OOBBnema17Holes(3*OS,2*OS,9);    
        
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

