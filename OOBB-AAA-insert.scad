

// For inserting TAXA items
// ex used for items with mounting screws to control height of countersunk screw heads
// rad used for extra clearance around items
module OOBBInsert(item,x=0,y=0,z=0,ex=0,length=0,rotX=0,rotY=0,rotZ=0,width=0,height=0,depth=100,rad=0,color="gray",alpha=1,OOwidth=0,OOheight=0,holes=true,negative=true){
    if(item == "hexIDHoles" || item=="led100wHoles"){
        holeSpacing = 34;
        oi("holeM3",x=-holeSpacing/2,y=-holeSpacing/2);
        oi("holeM3",x=holeSpacing/2,y=holeSpacing/2);
        oi("holeM3",x=-holeSpacing/2,y=holeSpacing/2);
        oi("holeM3",x=holeSpacing/2,y=-holeSpacing/2);
    } 
    else if(item=="oobbBase"){
            oi("cubeRounded",width=(width*15)-3,height=(height*15)-3,depth=depth,rad=5);
    } 
    else if(item=="oobbCircle"){
            oi("cylinder",rad=((width*15)-3)/2,depth=depth);
    } 
    else if(item=="oobbHole"){
        OPSCInsert("hole",rad=holeM6,x=-(OOwidth*15/2)+((width-1)*15)+15/2,y=-(OOheight*15/2)+((height-1)*15)+15/2);
    } 
    else if(item=="oobbHolesCircle"){
        oobbHolesCircle(OOWidth=width);
    }
    else if(item=="oobbHoles"){
        oi("holeArray",rad=holeM6,width=width,height=height,ex=15);
    } 
    else if(item=="oobbHoleClearance"){
        OPSCInsert("hole",rad=12/2,x=((width-1)*15)+15/2,y=((height-1)*15)+15/2);
    }
    else if(item == "hexIDHole" || item=="pocketMagnifierHole"){
        oi("cube",width=80,height=43,depth=100,z=50);
    }
    else if(item == "hexIDN20" || item=="n20Motor"){
        //motor
        oi("cube",width=12+2,height=10+2,depth=30,z=0);
//        //shaft
        oi("cylinder",rad=5/2,depth=10,z=10);
        //screw holes
        oi("cylinder",rad=holeM16D,x=4.5,z=10,depth=10);
        oi("cylinder",rad=holeM16D,x=-4.5,z=10,depth=10);
        
    }
    else if(item == "hexIDGearMotor2" || item=="gearMotor2" || item=="GMOT-01"){
        //motor
        oi("cube",x=-21.5,width=65+rad,height=22.5+rad,depth=21,z=0);
        oi("cube",x=13.5,width=5+rad,height=6+rad,depth=3+rad,z=-11+rad/2);
        //shaft (7 diameter)
        //shaft clearance
        oi("cylinder",rad=20/2,depth=33,z=6);
        //extra clearance hole a few shifted to get it smoother
        oi("cylinder",x=-11,rad=5/2,depth=33,z=3);
        oi("cylinder",x=-11+1,rad=5/2,depth=33,z=3);
        oi("cylinder",x=-11+2,rad=5/2,depth=33,z=3);
        oi("cylinder",x=-11+3,rad=5/2,depth=33,z=3);
        oi("cylinder",x=-11+4,rad=5/2,depth=33,z=3);
        
        oi("holeM3",x=13.5,y=0);
        oi("holeM3",x=-20,y=9);
        oi("holeM3",x=-20,y=-9);
        if(ex != 0){
            oi("countersunkM25D",x=13.5,y=0,z=ex);
            oi("countersunkM25D",x=-20,y=9,z=ex);
            oi("countersunkM25D",x=-20,y=-9,z=ex);
        }
        //shaft
    }
    else if(item == "hexIDGearMotor1" || item=="gearMotor1" || item=="GMOT-02"){
        //motor
        oi("cube",x=-21,width=OOBBgv("GMOT-01-WIDTH")+rad,height=OOBBgv("GMOT-01-HEIGHT")+rad,depth=OOBBgv("GMOT-01-DEPTH"),z=0);
        oi("cube",x=14,width=5+rad,height=5+rad,depth=3+rad,z=-9+rad/2);
        //shaft (7 diameter)
        //shaft clearance
        oi("cylinder",rad=20/2,depth=100,z=50);
        //extra clearance hole a few shifted to get it smoother
        oi("cylinder",x=-11.25,rad=5/2,depth=100,z=50);
        oi("cylinder",x=-11.25+1,rad=5/2,depth=100,z=50);
        oi("cylinder",x=-11.25+2,rad=5/2,depth=100,z=50);
        oi("cylinder",x=-11.25+3,rad=5/2,depth=100,z=50);
        oi("cylinder",x=-11.25+4,rad=5/2,depth=100,z=50);
        oi("holeM3",x=13.5,y=0,depth=500,z=250-12);
        oi("holeM3",x=-20,y=9);
        oi("holeM3",x=-20,y=-9);
        if(ex != 0){
            oi("countersunkM3",x=13.5,y=0,z=ex);
            oi("countersunkM3",x=-20,y=9,z=ex);
            oi("countersunkM3",x=-20,y=-9,z=ex);
        }
        //shaft
    }
    else if(item == "hexIDGearMotor1Shaft" || item=="gearMotor1Shaft"){
        //shaft
        chamfer=1;
        union(){
            default = 0;
            //shaft
            //difference(){
                od=5.5+rad+default;                
                cutout=1;
                difference(){
                    //main Shaft
                    
                    union(){
                        oi("cylinder",rad=(od)/2,depth=depth);
                        //cone for bezel (chamfer)
                         if(ex > 4){
                            oi("cone",rad=od/2,rad2=od/2+chamfer/2,depth=chamfer);
                            oi("cone",rad2=od/2,rad=od/2+chamfer/2,depth=chamfer,z=-depth+chamfer);
                        }
                    }
                    //flat sides
                    union(){
                        //get the long side of the triangle for the cutout
                        cutoutSide=sqrt((chamfer)*(chamfer)+(chamfer)*(chamfer));
                        difference(){
                            //flat side positive
                            oi("cube",width=cutout*2,height=od,x=od/2,depth=depth);
                            //wedge cutout
                            oi("cube",x=1.75,y=-od/2,width=cutoutSide,height=cutoutSide,depth=od,rotX=90,rotY=45);
                            oi("cube",x=1.75,y=-od/2,width=cutoutSide,height=cutoutSide,depth=od,rotX=90,rotY=45,z=-depth);
                        }
                        difference(){
                            //flat side positive
                            oi("cube",width=cutout*2,height=od,x=-od/2,depth=depth);
                            //wedge cutout
                            oi("cube",x=-1.75,y=-od/2,width=cutoutSide,height=cutoutSide,depth=od,rotX=90,rotY=45);
                            oi("cube",x=-1.75,y=-od/2,width=cutoutSide,height=cutoutSide,depth=od,rotX=90,rotY=45,z=-depth);
                        }
                    }
                }
                //
                /*
                difference(){
                    union(){
                        
                        }
                    //main flat side
                    //top chamfer
                    intersection(){
                        oi("cone",rad=od/2,rad2=od/2+chamfer/2,depth=chamfer);
                        }
                    intersection(){
                        oi("cone",rad=od/2,rad2=od/2+chamfer/2,depth=chamfer);
                        oi("cube",x=-1.75,y=-od/2,width=2.828,height=2.828,depth=od,rotX=90,rotY=45);
                    }
                }
                */
            //}
            //cutout square
            oi("cube",width=6,height=1.5,x=2.75,depth=depth);
            //oi("cube",width=7.5,height=1.5,x=3.75,depth=depth);
            //clearance hoop
            difference(){
                bigOD = 12;
                //big cyulinder
                oi("cylinder",rad=bigOD/2,depth=depth);
                //little cylinder
                
                //trying smaller
                oi("cylinder",rad=11/2,depth=depth);
                oi("cube",width=7,height=20,depth=depth,x=-5.9);
            }
            
        }
        
        
    }else if(item == "hexIDGearMotor2Shaft" || item=="gearMotor2Shaft"){
        //shaft
        union(){
            default = 0;
            //shaft
            difference(){
                oi("cylinder",rad=(7+rad+default)/2,depth=100,z=50);
                oi("cube",width=2.1,height=7,x=3.45+rad+default,depth=100,z=50);
                oi("cube",width=2.1,height=7,x=-3.45-rad-default,depth=100,z=50);
            }
            //cutout square
            oi("cube",width=7.5,height=1.5,x=3.75,depth=100,z=50);
            //clearance hoop
            difference(){
                //big cyulinder
                oi("cylinder",rad=17/2,depth=100,z=50);
                //little cylinder
                //oi("cylinder",rad=13/2,depth=100,z=50);
                //trying smaller
                oi("cylinder",rad=11/2,depth=100,z=50);
                oi("cube",width=7,height=20,depth=100,z=50,x=-5.9);
            }
        }
        
        
    }
    else if(item == "hexIDN20Shaft" || item=="n20Shaft"){
        //shaft
        union(){
            default = 0;
            //shaft
            shaftOD = 3;
            //flat offset
            flatOffset= 0.5;
            //cutout
            cutout = 1;
            difference(){
                oi("cylinder",rad=(shaftOD+rad+default)/2,depth=100,z=50);
                oi("cube",width=2,height=3,x=shaftOD/2+1-flatOffset,depth=100,z=50);                
            }
            //cutout square
            oi("cube",width=shaftOD+3,height=cutout,x=2,depth=100,z=50);
            //clearance hoop
            difference(){
                //big cylinder
                oi("cylinder",rad=(shaftOD+7)/2,depth=100,z=50);
                //little cylinder
                //oi("cylinder",rad=13/2,depth=100,z=50);
                //trying smaller
                oi("cylinder",rad=(shaftOD+5)/2,depth=100,z=50);
                oi("cube",width=7,height=20,depth=100,z=50,x=-5.9);
            }
        }
        
        
    }
    else if(item == "hexIDbuttonM7" || item=="buttonM7"){
        oi("cylinder",rad=holeM7,depth=11,z=11);
        oi("cylinder",rad=holeM10+rad,depth=18,z=0);
    }
    else if(item == "hexIDbatteryAAASINGTH" || item=="batteryAAASINGTH"){
        oi("cube",width=51+rad,height=13+rad,depth=13+rad);
        oi("holeM2",x=22.5);
        oi("holeM2",x=-22.5);
        
    }
    else if(item == "ooebWIMOT" ||  item == "WI-M2"){
        //ex = extra padding around
        //rad = extra height
        if(ex == 0 && rad == 0){
            //dep=2.54+ 0.06;
            dep=3;
            ext=0.2;
            union(){
                oi("cube",x=11.27,y=0,width=22.54+ext,height=5.08+ext,depth=dep);
                oi("cube",x=7.27,y=0,width=2.54+ext,height=10.16+ext,depth=dep);
                oi("cube",x=25.77,y=0,width=6.46+ext,height=3.08+ext,depth=dep);
            }
        }else{
            dep=2.54+ rad;
            ext=ex;
            echo("TEST");
            union(){
                oi("cube",x=11.27,y=0,width=22.54+ext,height=5.08+ext,depth=dep);
                oi("cube",x=7.27,y=0,width=2.54+ext,height=10.16+ext,depth=dep);
                oi("cube",x=25.77,y=0,width=6.46+ext,height=3.08+ext,depth=dep);
            }
        }
    }else if(item == "ooebWIMOThole"){
            oi("cube",width=gv("I012")+0.5,height=10.5,depth=gv("I011")+0.5);
    }else if(item == "WI-SM"){
        dep=3;
        ext=0.1;
        union(){
            oi("cube",x=11.27,y=0,width=22.54+ext,height=gv("I014")+ext,depth=dep); // main square
            oi("cube",x=7.27,y=0,width=gv("I011")+ext,height=gv("I016")+ext,depth=dep); // header holder 
            oi("cube",x=25.77,y=0,width=6.46+ext,height=gv("I014")-2+ext,depth=dep); //wire gap
                }
            }else if(item == "WI-HV"){
        dep=3;
        ext=0.1;
        union(){
            oi("cube",x=15.54,y=0,width=14+ext,height=gv("I012")+ext,depth=dep); // main square inside
            oi("cube",x=3,y=-gv("I011")/2,width=6+ext,height=gv("I013")+ext,depth=dep); // main square outside
            oi("cube",x=7.27,y=-gv("I011")/2,width=gv("I011")+ext,height=gv("I015")+ext,depth=dep); // header holder 
            oi("cube",x=25.77,y=0,width=6.46+ext,height=gv("I012")-2+ext,depth=dep); //wire gap
                }
            }else if(item == "WI-BA"){
        dep=3;
        ext=0.1;
        union(){
            oi("cube",x=15.54,y=0,width=14+ext,height=gv("I013")+ext,depth=dep); // main square inside
            oi("cube",x=3,y=-gv("I011")/2,width=6+ext,height=gv("I014")+ext,depth=dep); // main square outside
            oi("cube",x=7.27,y=-gv("I011")/2,width=gv("I011")+ext,height=gv("I016")+ext,depth=dep); // header holder 
            oi("cube",x=25.77,y=0,width=6.46+ext,height=gv("I013")-2+ext,depth=dep); //wire gap
                }
            }
        else if(item == "ooebWIMOT" ||  item == "WI-M2"){
        //ex = extra padding around
        //rad = extra height
        if(ex == 0 && rad == 0){
            //dep=2.54+ 0.06;
            dep=3;
            ext=0.1;
            union(){
                oi("cube",x=11.27,y=0,width=22.54+ext,height=5.08+ext,depth=dep);
                oi("cube",x=7.27,y=0,width=2.54+ext,height=10.16+ext,depth=dep);
                oi("cube",x=25.77,y=0,width=6.46+ext,height=3.08+ext,depth=dep);
            }
        }else{
            dep=2.54+ rad;
            ext=ex;
            echo("TEST");
            union(){
                oi("cube",x=11.27,y=0,width=22.54+ext,height=5.08+ext,depth=dep);
                oi("cube",x=7.27,y=0,width=2.54+ext,height=10.16+ext,depth=dep);
                oi("cube",x=25.77,y=0,width=6.46+ext,height=3.08+ext,depth=dep);
            }
        }
    }else if(item == "WI-SM"){
        dep=3;
        ext=0.1;
        union(){
            oi("cube",x=11.27,y=0,width=22.54+ext,height=gv("I014")+ext,depth=dep); // main square
            oi("cube",x=7.27,y=0,width=gv("I011")+ext,height=gv("I016")+ext,depth=dep); // header holder 
            oi("cube",x=25.77,y=0,width=6.46+ext,height=gv("I014")-2+ext,depth=dep); //wire gap
                }
            }else if(item == "WI-HV"){
        dep=3;
        ext=0.1;
        union(){
                oi("cube",x=15.54,y=0,width=14+ext,height=gv("I012")+ext,depth=dep); // main square inside
                oi("cube",x=3,y=-gv("I011")/2,width=6+ext,height=gv("I013")+ext,depth=dep); // main square outside
                oi("cube",x=7.27,y=-gv("I011")/2,width=gv("I011")+ext,height=gv("I015")+ext,depth=dep); // header holder 
                oi("cube",x=25.77,y=0,width=6.46+ext,height=gv("I012")-2+ext,depth=dep); //wire gap
                }
            }else if(item == "WI-BA"){
            dep=3;
            ext=0.1;
            union(){
                oi("cube",x=15.54,y=0,width=14+ext,height=gv("I013")+ext,depth=dep); // main square inside
                oi("cube",x=3,y=-gv("I011")/2,width=6+ext,height=gv("I014")+ext,depth=dep); // main square outside
                oi("cube",x=7.27,y=-gv("I011")/2,width=gv("I011")+ext,height=gv("I016")+ext,depth=dep); // header holder 
                oi("cube",x=25.77,y=0,width=6.46+ext,height=gv("I013")-2+ext,depth=dep); //wire gap
                }
            }else if(item == "RC-RECEIVER"){
                rcSpacingX=22;
                rcSpacingY=36;
                oi("holeM25D",x=rcSpacingX/2,y=-rcSpacingY/2,color=color);
                oi("holeM25D",x=-rcSpacingX/2,y=-rcSpacingY/2,color=color);
                oi("cube",width=27,height=42-12,depth=100,z=50);
                oi("cube",width=27-12,height=42,depth=100,z=50);
            }else if(item == "DCJA" || item == "DCJP-21D-X-THTH-01"){
                oi("cube",width=14,height=9,depth=11,z=11);
                oi("cube",width=11,height=15,depth=6,z=-5+11,x=-1.5);
            ///////////////
            // OOBB PARTS    

                ///////////////
                // BP PARTS 
            }else if(item == "BP-606-03-03"){
                OOBB_BP_606_03_03(); 
            }else if(item == "BP-6806-04-04"){
                BP_6806_04_04();    
            }else if(item == "BP-6810-05-05"){
                BP_6810_05_05();    
    
                
                ///////////////
                // CI PARTS 
            }else if(item == "CI-03-GM1"){
                CI_03_GM1(w); //needs to be before filter                
            }else if(item[0] == "C" && item[1] == "I" && item[2] == "-"){
                CI(w,3);
                //OOBBCI3D(w,3);

                
                ///////////////
                // CN PARTS 
            }else if(item == "CN-BAS2-05-05"){
                CN_BAS2_05_05(w,h);
            
            
                ///////////////
                // GE PARTS 
            }else if(item == "GE-01-GM1"){
                GE_GM1(w); //needs to be before filter   
            }else if(item == "GE-03-GM1"){
                GE_GM1(w); //needs to be before filter   
            }else if(item == "GE-03-01-LI"){
                GE_LI(w,h); //needs to be before filter   
            }else if(item[0] == "G" && item[1] == "E" && item[2] == "-"){
                GE(w,6);                
            

                ///////////////
                // HL PARTS 
            }else if(item == "HL-N20-03-03"){
                HL_N20_03_03(w,h);
            }else if(item == "HL-GM1-03-03"){
                HL_GM1_03_03(w,h);
            }else if(item == "HL-GM1-03-03-BP6803"){
                HL_GM1_03_03_BP6803(w,h);
            }else if(item == "HL-GM1-04-03"){
                HL_GM1_03_03(w,h);
            }else if(item == "HL-RC-03-03"){
                HL_RC_03_03(w,h);
            }else if(item == "HL-CN-03-03"){
                HL_CN_03_03(w,h);

                ///////////////
                // JA PARTS 
            }else if(item[0] == "J" && item[1] == "A" && item[2] == "-"){
                OOBBJA3D(w,h,12);

                ///////////////
                // PL PARTS 
            }else if(item[0] == "P" && item[1] == "L" && item[2] == "-"){
                PL(w,h,3);
                //OOBBPL3D(w,h,3);
           

                ///////////////
                // SP PARTS                 
            }else if(item == "SP-GM1-03"){
                SP_GM1(extr=3);
            }else if(item == "SP-GM1-06"){
                SP_GM1(extr=6);




                ///////////////
                // TEST PARTS                 
            }else if(item == "TEST-OOEBWIMOT-05-05"){
                TEST_OOEBWIMOT_05_05(w,h);
            }else if(item == "TEST-GM1SHAFT-05-05"){
                TEST_GM1SHAFT_05_05(w,h);
            }else if(item == "TEST-N20SHAFT-05-05"){
                TEST_N20SHAFT_05_05(w,h);
                          

                ///////////////
                // WH PARTS                 
            }else if(item == "WH-03-GM1"){
                WH_03_GM1(width);
            }else if(item == "WH-03-N20"){
                WH_03_N20(width);                
            
                ///////////////
                // WI PARTS                             
            }else if(item == "WI-M2-03-03"){
                WI_M2_03_03(w,h);
            }else if(item == "WI-BA-03-03"){
                WI_BA_03_03(w,h);
            }else if(item == "WI-HV-03-03"){
                WI_HV_03_03(w,h);
            }else if(item == "WI-SM-03-03"){
                WI_SM_03_03(w,h);
            }else if(item == "WI-BP-03-03-CS"){
                WI_BP_03_03_CS(w,h);
            }else if(item == "WI-BP-03-03-NU"){
                WI_BP_03_03_NU(w,h);
            }else if(item == "WI-BP-03-03-BA"){
                WI_BP_03_03_BA(w,h);
            }else if(item == "WI-BP-03-03-BAH"){
                WI_BP_03_03_BAH(w,h);
            }else if(item == "WI-BP-03-03-BAN"){
                WI_BP_03_03_BAN(w,h);
            }            
            
            
            
            
            
            
            
            
            else{
                echo("NO OOBB ITEM");
            }
        }


module oobbHolesCircle(OOWidth, middle=true){
    if(OOWidth == 3){
        rotate([0,0,45]){
            oi("holeM6",x=0*OOBBSpacing,y=0*OOBBSpacing);
            oi("holeM6",x=0*OOBBSpacing,y=1*OOBBSpacing);
            oi("holeM6",x=0*OOBBSpacing,y=-1*OOBBSpacing);
            oi("holeM6",x=1*OOBBSpacing,y=0*OOBBSpacing);
            oi("holeM6",x=-1*OOBBSpacing,y=0*OOBBSpacing);
            
        }
    }
    
            for(height = [-(round(OOWidth/2)-1):round(OOWidth/2)-1]){
                for(width = [-(round(OOWidth/2)-1):round(OOWidth/2)-1]){
                    /*
                    //middle full rows
                    if(width == round(OOWidth/2) || height == round(OOWidth/2)){ 
                        OOBBHole3D(width,height);                        
                    }
                    */
                    CIcenter = 0;
                    CIradius = (OOWidth * OOBBSpacing - 3)/2;
                    CIheight = height * OOBBSpacing;
                    CIwidth = width * OOBBSpacing;
                    
                    buffer = 5.99;
                    rowHeight = -(round(OOWidth/2) * OOBBSpacing) + height * OOBBSpacing;
                    
                    CIwidthAtHeight = sqrt((CIradius*CIradius) - (CIheight * CIheight));
                    CIheightAtWidth = sqrt((CIradius*CIradius) - (CIwidth * CIwidth));
                    /*
                    echo();
                    echo();
                    echo();
                    echo("height  ",height);
                    echo("width  ",width);
                    echo("CIcente  ",CIcenter);
                    echo("CIradius  ",CIradius);
                    echo("CIheight  ",CIheight);
                    echo("CIwidthAtHeight  ",CIwidthAtHeight);
                    echo("CIheightAtWidth  ",CIheightAtWidth);
                    echo("width * OOBBSpacing  ",width * OOBBSpacing);
                    echo("rowHeight  ",rowHeight);
                    */
                    
                    if((CIwidthAtHeight - buffer) > abs(width * OOBBSpacing))  {
                        if((CIheightAtWidth - buffer) > abs(height * OOBBSpacing))  {
                            if(!middle && width == 0 && height == 0){
                                echo("SKIPPING MIDDLE HOLE");
                            }else{
                                oi("holeM6",x=width*OOBBSpacing,y=height*OOBBSpacing);
            
                                //echo("ADDING HOLE", middle, width, height);              
                            }
                        }    
                        
                    }
                    
                }
            }
            
            
            
            
            
}
    
        
function OOBBgv(name) =  
  //GMOT-01
    name=="GMOT-01-WIDTH"      ? 65 :
    name=="GMOT-01-HEIGHT"     ? 22.5 :
    name=="GMOT-01-DEPTH"      ? 19 + 0.5 :
    name=="GMOT-01-HOLE1X"     ? 13.5 :
    name=="GMOT-01-HOLE1Y"     ? 0 :
    name=="GMOT-01-HOLE2X"     ? -20 :
    name=="GMOT-01-HOLE2Y"     ? 9 :
    name=="GMOT-01-HOLE3X"     ? -20 :
    name=="GMOT-01-HOLE3Y"     ? -9 :
    "ERROR";