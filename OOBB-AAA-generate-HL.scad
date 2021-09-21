module HL_N20_03_03(width,height){
    depth=12;
    echo("Building HL-N20-03-03");
    difference(){
        oi("oobbBase",width=width,height=height,depth=depth);
        oi("n20Motor",x=0,y=0,z=-2,rotZ=90);
        //nut cutouts for clearance
        //oi("cube",x=-15,width=15,height=100,depth=6);
        //oi("cube",x=15,width=15,height=100,depth=6);
        //oobb holes
        oi("holeM6",x=15,y=0);
        oi("holeM6",x=15,y=15);
        oi("holeM6",x=15,y=-15);
        oi("holeM6",x=-15,y=0);
        oi("holeM6",x=-15,y=15);
        oi("holeM6",x=-15,y=-15);
        oi("holeM6",x=0,y=15);
        oi("holeM6",x=0,y=-15);
    }
}

module HL_GM1_03_03_BP6803(width,height){
    jointOffset = OOBBgv("HL-GM1-JOINTOFFSET");
    shift = 4;
    
    oi("HL-GM1-03-03",z=-5-1.75-2);

    difference(){
        bearingDepth=gv("BEARING-6803-DEPTH");
        union(){
            oi("oobbBase",width=width,height=height,depth=bearingDepth,z=0);
            oi("oobbBase",x=-shift,width=width,height=height,depth=bearingDepth,z=0);
        }
        //HL_GM1_03_03_HOLES(join=join,plateThickness=plateThickness);
        oi("bearing6803",z=0);
        oi("roundedClearanceM12",x=15,y=15);
        oi("roundedClearanceM12",x=15,y=-15,rotZ=270);
        oi("roundedClearanceM12",x=-15,y=15,rotZ=90);
        oi("roundedClearanceM12",x=-15,y=-15,rotZ=180);
        //joiner
        oi("holeM3",x=0,y=jointOffset);
        oi("countersunkM3",x=0,y=jointOffset,z=0,rotY=0);

        oi("holeM3",x=0,y=-jointOffset);
        oi("countersunkM3",x=0,y=-jointOffset,z=0,rotY=0);
        
        //Motor holding screw
        oi("hole",x=OOBBgv("GMOT-01-HOLE2X"),y=OOBBgv("GMOT-01-HOLE2Y"),rad=gv("CAPSCREW-M3-TOP"));
        oi("hole",x=OOBBgv("GMOT-01-HOLE3X"),y=OOBBgv("GMOT-01-HOLE3Y"),rad=gv("CAPSCREW-M3-TOP"));
        
        
    }
}

module HL_GM1_03_03(width,height){
    
    echo("Building HL-GM1-03-03");
    wiringWidth = 35;
    wiringHeight = 13;
    wiringDepth = 4;
    shift = 4;
    space = 0.25;
    plateThickness = 3.75;
    motorOffset = -1.75;
    join = 9+motorOffset; //9 is the height of the tab on the gearmotor     
    topDepth=plateThickness+join; //plate thickness, plus distance to tab plus thickness of tab, plus nut height
    botDepth=plateThickness+OOBBgv("GMOT-01-DEPTH")-join;
    bottomLevel=-OOBBgv("GMOT-01-DEPTH");
    bottomOfPart=-OOBBgv("GMOT-01-DEPTH")-plateThickness;
    totalDepth=topDepth+botDepth;
   echo("    Total Depth :", totalDepth);
    //sizing cube
    //oi("cube",width=70,height=3,depth=25,z=plateThickness);
    if(extra=="NONE" || extra=="TOP"){
        difference(){
            //base plate
            union(){
                oi("oobbBase",width=width,height=height,depth=topDepth,z=plateThickness);
                oi("oobbBase",x=-shift,width=width,height=height,depth=topDepth,z=plateThickness);
                //oi("oobbBase",y=-shift,width=width,height=height,depth=depth,z=plateThickness);
                //oi("oobbBase",x=-shift,y=-shift,width=width,height=height,depth=depth,z=plateThickness);
            }
            HL_GM1_03_03_HOLES(join=join,plateThickness=plateThickness,botDepth=botDepth,motorOffset=motorOffset,totalDepth=totalDepth);
            }
        }
    if(extra=="NONE" || extra=="BOTTOM"){
        union(){
            difference(){
                //base plate
                union(){
                    oi("oobbBase",width=width,height=height,depth=botDepth,z=bottomLevel+OOBBgv("GMOT-01-DEPTH")-join);
                    oi("oobbBase",x=-shift,width=width,height=height,depth=botDepth,z=bottomLevel+OOBBgv("GMOT-01-DEPTH")-join);
                    
                    //oi("oobbBase",y=-shift,width=width,height=height,depth=depth,z=plateThickness);
                    //oi("oobbBase",x=-shift,y=-shift,width=width,height=height,depth=depth,z=plateThickness);
                }
                HL_GM1_03_03_HOLES(join=join,plateThickness=plateThickness,botDepth=botDepth,motorOffset =motorOffset,totalDepth=totalDepth);
                oi("roundedClearanceM12",x=15,y=15,depth=gv("NUT-M6-DEPTH"),z=bottomOfPart+gv("NUT-M6-DEPTH"));
                oi("roundedClearanceM12",x=15,y=-15,rotZ=-90,depth=gv("NUT-M6-DEPTH"),z=bottomOfPart+gv("NUT-M6-DEPTH"));
                }
            //add plate to cover bottom of mounting holes
            oi("cube",depth=1,x=-20,y=0,z=-plateThickness+1+bottomLevel,width=8,height=24); 
            }
        }
            
}

module HL_GM1_03_03_HOLES(width,height,join,plateThickness,botDepth,motorOffset,totalDepth){
    bottomLevel=-OOBBgv("GMOT-01-DEPTH");
    topLevel=plateThickness;

    oi("gearMotor1",ex=plateThickness+motorOffset,rad=0.75,rotZ=0,z=-motorOffset);//shifted to create bolt clearance (6-3.75=2.25)
    //oi("cylinder",rad=gv("NUTM3WIDTH")/2+0.5,x=OOBBgv("GMOT-01-HOLE1X"),y=OOBBgv("GMOT-01-HOLE1Y"),z=-9-motorOffset,depth=6); (clearance for nut when using three scres to secure motor)
    nutClearance = 1;
    nutSurroundClearance = 0.5;
    oi("nutM3",x=OOBBgv("GMOT-01-HOLE2X"),y=OOBBgv("GMOT-01-HOLE2Y"),z=bottomLevel-plateThickness+botDepth+nutClearance,depth=botDepth-nutClearance,rad=nutSurroundClearance);
    oi("nutM3",x=OOBBgv("GMOT-01-HOLE3X"),y=OOBBgv("GMOT-01-HOLE3Y"),z=bottomLevel-plateThickness+botDepth+nutClearance,depth=botDepth-nutClearance,rad=nutSurroundClearance);
    
    //joiner
    jointOffset = OOBBgv("HL-GM1-JOINTOFFSET");
    
    oi("holeM3",x=0,y=jointOffset,z=topLevel,depth=totalDepth-nutClearance);
    oi("countersunkM3",x=0,y=jointOffset,z=plateThickness);
    nutSlotDepth=6;
    nutHeight= bottomLevel + nutSlotDepth;
    oi("nutM3Slot",x=0,y=jointOffset+0.5,z=nutHeight-motorOffset,depth=nutSlotDepth,rotZ=180);

    oi("holeM3",x=0,y=-jointOffset,z=topLevel,depth=totalDepth-nutClearance);
    oi("countersunkM3",x=0,y=-jointOffset,z=plateThickness);
    oi("nutM3Slot",x=0,y=-jointOffset-0.5,z=nutHeight-motorOffset,depth=nutSlotDepth);
    
    oi("holeM3",x=OOBBgv("GMOT-01-HOLE1X"),y=0,z=topLevel,depth=totalDepth-nutClearance);
    oi("slot",rad=holeM3,x=OOBBgv("GMOT-01-HOLE1X"),y=0,rotZ=180,depth=OOBBgv("GMOT-01-DEPTH"),z=plateThickness+motorOffset);
    oi("countersunkM3",x=OOBBgv("GMOT-01-HOLE1X"),y=0,z=plateThickness);
    oi("nutM3Slot",x=OOBBgv("GMOT-01-HOLE1X"),y=0,z=nutHeight-motorOffset-2,depth=4,rotZ=90);
    
    
    //OOBB Holes        
    oi("holeM6",x=15,y=15);
    oi("holeM6",x=15,y=-15);
    oi("holeM6",x=-15,y=15);
    oi("slot",rad=holeM6,x=-15,y=15,rotZ=-90,depth=OOBBgv("GMOT-01-DEPTH"),z=plateThickness+motorOffset);
    oi("holeM6",x=-15,y=-15);
    oi("slot",rad=holeM6,x=-15,y=-15,rotZ=90,depth=OOBBgv("GMOT-01-DEPTH"),z=plateThickness+motorOffset);
    
    /*  Now soldered on    
        //wiring      
        oi("WI-M2",x=-42/2-4,y=-1.5-1.5-OOBBgv("GMOT-01-HEIGHT")/2,z=-join,rotX=90);    
        w = 30;
        h=2.5;
        oi("cube",width=w,height=h,depth=3,x=-42/2-4+w/2,y=-OOBBgv("GMOT-01-HEIGHT")/2-h/2,z=-OOBBgv("GMOT-01-DEPTH")+3);
        oi("cube",width=3,height=h,depth=15,x=4,y=-OOBBgv("GMOT-01-HEIGHT")/2-h/2,z=-OOBBgv("GMOT-01-DEPTH")+15);
    */
}


//45 degree model
module HL_GM1_03_03_OLD01(width,height){
    depth=18;
    echo("Building HL-GM1-03-03");
    wiringWidth = 35;
    wiringHeight = 13;
    wiringDepth = 4;
    space = 0.25;
    if(extra=="NONE" || extra=="BASE"){
        difference(){
            union(){
                shift = 4;
                plateThickness = 2;
                oi("oobbBase",width=width,height=height,depth=depth,z=plateThickness);
                oi("oobbBase",x=-shift,width=width,height=height,depth=depth,z=plateThickness);
                oi("oobbBase",y=-shift,width=width,height=height,depth=depth,z=plateThickness);
                oi("oobbBase",x=-shift,y=-shift,width=width,height=height,depth=depth,z=plateThickness);
            }
            
            oi("gearMotor1",ex=2,rad=0,rotZ=45);
            #oi("gearMotor1",rad=0,rotZ=45,z=-2);
            oi("gearMotor1",rad=0,rotZ=45,z=-4);
            //oobb holes
            //oi("holeM6",x=15,y=0);
            oi("holeM6",x=15,y=15);
            oi("holeM6",x=15,y=-15);
            //oi("holeM6",x=-15,y=0);
            oi("holeM6",x=-15,y=15);
            //oi("holeM6",x=-15,y=-15);
            //oi("holeM6",x=0,y=15);
            //oi("holeM6",x=0,y=-15);
            //wiring hole
            // wiring
                rotate([0,0,45]){
                    oi("cube",width=wiringWidth+space,height=wiringDepth+space,depth=wiringHeight+space,x=-10-space/2,y=-21.5/2-wiringDepth/2-space/2,z=0);
                }
            }
        }
    if(extra=="NONE" || extra=="WIRINGBLOCK"){
            
        //wiring block
        translate([50,0,0]){
            difference(){
                oi("cube",width=wiringWidth,height=wiringHeight,depth=wiringDepth);
               oi("ooebWIMOT",x=-wiringWidth/2,y=1.4,z=0,rotZ=0);
                    //wire route
                oi("cube",width=30,height=1.5,depth=2,x=-3,y=-5.75,z=0);
                oi("cube",width=3,height=8,depth=2,x=10.5,y=-2,z=0);
                }
        }
    }
}

module HL_RC_03_03(width,height){
    depth=12;
    echo("Building HL-RC-03-03");
    difference(){
        union(){
            translate([0,0,-3]){
                WI_BP_03_03_BA(width,height);
            }
            WI_BP_03_03_BA(width,height);
            
            oi("oobbBase",x=0,y=-10,z=2.25,width=3,height=1.25,depth=4,rotX=90);
        }
       oi("holeM8",x=0,y=8);
       oi("RC-RECEIVER",rotX=90,z=25);

    }
}

module HL_CN_03_03(width,height){
    depth=12;
    echo("Building HL-CN-03-03");
    difference(){
        oi("oobbBase",width=width,height=height,depth=12);
        oi("nutM3",y=0,x=gv("OS1"),z=-(depth-gv("NUTM3HEIGHT")),depth=gv("NUTM3HEIGHT"));
        oi("nutM3",y=0,x=-gv("OS1"),z=-(depth-gv("NUTM3HEIGHT")),depth=gv("NUTM3HEIGHT"));
        //central hole
        oi("cube",width=24,height=24,depth=9);
        oi("DCJP-21D-X-THTH-01",x=0,y=14.1,z=0,rotZ=90,rotX=180);
        oi("ooebWIMOThole",x=-7.5,y=-15.805+3,z=0);
        oi("ooebWIMOThole",x=-7.5,y=-15.805,z=-gv("I011"));
        oi("ooebWIMOThole",x=7.5,y=-15.805+3,z=0);
        oi("ooebWIMOThole",x=7.5,y=-15.805,z=-gv("I011"));
        WI_holes();
    }
}