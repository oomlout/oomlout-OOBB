//######  OOBB OpenSCAD Generation  ######
//########################################
    include <OOBB-Polygon.scad>;
    
    /*
    w=5;
    h=1;
    m="CI3D";
    s="3DPR";
    */
    include <OOBB-generate-DIMENSIONS.scad>;
    
    
    
    echo("#########################################");
    echo("######  OOBB Open SCAD Generation  ######");
    echo("");
    echo("     .:Generating:.");
    echo("            Mode; ", m, " Width: ", w, " Height: ", h, " Style: ", s);
    echo("");
//GLOBAL DIMENSIONS
    
if(m=="PL2D"){
    OOBBPL2D(w,h);
}else if(m=="PL3D"){
    OOBBPL3D(w,h,3);
}else if(m=="JA2D"){
    OOBBJA2D(w,h);
}else if(m=="JA3D"){
    OOBBJA3D(w,h,12);
}else if(m=="CI2D"){
    OOBBCI2D(w);
}else if(m=="CI3D"){
    OOBBCI3D(w,3);
}

module OOBBPL3D(OOWidth,OOHeight,OOExtrude){
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,OOExtrude);
        OOBBHolesFor3D(OOWidth,OOHeight);
    }

}


module OOBBPL2D(OOWidth,OOHeight   ){
    difference(){
        OOBBPLOutline(OOWidth, OOHeight);
        OOBBHolesFor(OOWidth, OOHeight);    
    }
}

module OOBBCI3D(OOWidth,OOExtrude){
    difference(){
        OOBBCIOutline3D(OOWidth,OOExtrude);
        OOBBHolesForCI3D(OOWidth);
    }

}

module OOBBCI2D(OOWidth){
    difference(){
        OOBBCIOutline(OOWidth);
        OOBBHolesForCI2D(OOWidth);
    }

}

module OOBBJA2D(OOWidth,OOHeight){
    OOBBJA2DBase(OOWidth,OOHeight);
}

module OOBBJA3D(OOWidth,OOHeight,OODepth){
    union(){
        difference(){
            linear_extrude(OODepth){
                OOBBJAOutline(OOWidth, OOHeight);
            }
            OOBBHolesFor3D(OOWidth,OOHeight);
            
            //all holes have nut2
            for(width = [1:OOWidth]){
                    OOBBJANut3D(width,12);
            }
        }
    }
}

module OOBBJA2DBase(OOWidth,OOHeight){
    difference(){
        OOBBJAOutline(OOWidth, OOHeight);
        OOBBHolesFor(OOWidth, OOHeight); 
        OOBBHolesForJA(OOWidth, OOHeight);        
    }   
}


module OOBBPLOutline3D(OOWidth,OOHeight,OODepth){
    linear_extrude(OODepth){
        OOBBPLOutline(OOWidth, OOHeight);
    }
}

module OOBBCIOutline3D(OOWidth,OODepth){
    linear_extrude(OODepth){
        OOBBCIOutline(OOWidth);
    }
}



module OOBBPLOutline3DComplete(wid3,hei3,OODepth){
    linear_extrude(OODepth){
        OOBBPLOutlineComplete(wid3, hei3);
    }
}

module OOBBHolesForJA(OOWidth, OOHeight){
    for(width = [2:OOWidth-1]){
            OOBBHoleBolt(width);
    }
}


module OOBBHolesFor(OOWidth, OOHeight){
    for(width = [1:OOWidth]){
        for(height = [1:OOHeight]){
            OOBBInsertItemCoord("OOBBHole",width,height);
        }
    }
}

module OOBBHolesFor3D(OOWidth, OOHeight){
            for(width = [1:OOWidth]){
                for(height = [1:OOHeight]){
                    OOBBHole3D(width,height);
                }
            }
}

module OOBBHolesForCI3D(OOWidth){
    
    if(OOWidth == 3){
        rotate([0,0,45]){
            OOBBHole3D(0,1);
            OOBBHole3D(0,-1);
            OOBBHole3D(-1,0);
            OOBBHole3D(1,0);
        }
    }
    
    echo("#####################################################");
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
                        
                       OOBBHole3D(width,height);                   
                        }    
                        
                    }
                    
                }
            }
            
            
            
            
            
}

module OOBBHolesForCI2D(OOWidth){
    //echo("#####################################################");
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
                        
                       OOBBInsertItemCoord("OOBBHole",width,height);                   
                        }    
                        
                    }
                    
                }
            }
}


module OOBBHole3D(OOx,OOy){
    height=50;    
    z=height-10;
    rad=OOBBHole;
    OOBBHole3DRadiusComplete(OOx*OOBBSpacing,OOy*OOBBSpacing,rad,height,z);
}





module OOBBHole3DRadius(x,y,rad){
    height=50;    
    z=height-10;
    OOBBHole3DRadiusComplete(x,y,rad,height,z);
}

module OOBBHole3DRadiusComplete(x,y,rad,height,z){    
   translate([x,y,z-height]){
       linear_extrude(height){
           circle(rad);
       }
   }
}

module OOBBCube3DComplete(x,y,wid,hei,height,z){    
   translate([x,y,z-height]){
       linear_extrude(height){
           square([wid,hei],true);
       }
   }
}

module OOBBCountersinkM33DComplete(x,y,z){    
    top = OOBBm3CounterSinkTopHole;
    bot = OOBBm3Hole;
    height = 1.75;
    OOBBCountersink3DComplete(x,y,top,bot,height,z);
}

module OOBBCountersink3DComplete(x,y,top,bot,height,z){    
   translate([x,y,z-height]){
       cylinder(h=height,r1=bot,r2=top);
   }
}


module OOBBPolygon3DComplete(sides,x,y,rad,height,z){    
   translate([x,y,z-height]){
       linear_extrude(height){
           Polygon(N=sides,R=rad,h=0);
       }
   }
}

module OOBBPolygon3DComplete90Deg(sides,x,y,rad,height,z){    
   translate([x,y,z-height]){
       linear_extrude(height){
           rotate([0,0,90]){
            Polygon(N=sides,R=rad,h=0);
           }
       }
   }
}
module OOBBPolygon3DComplete90DegSide(sides,x,y,rad,height,z){    
   translate([x,y-height,z]){
       rotate([0,90,90]){
           linear_extrude(height){
             Polygon(N=sides,R=rad,h=0);
           }
       }
   }
}



module OOBBHole(OOx,OOy){
     OOBBInsertItemCoord("OOBBHole",OOx,OOy);
}



module OOBBHoleBolt(OOx){
    translate([OOBBSpacing * OOx, 5.25]){
        translate([0, 1]){
            square([OOBBNutM6Width,OOBBNutM6Height],true);
        }
        if(m=="JA2D"){
            translate([0, -2.75]){
                square([OOBBHole*2,2],true);
            }
        }
    }
}



module OOBBJANut3D(OOx,OODepth){
    
    OOboltLength = 15;
    OOholeLength = OOboltLength-3 + 1; //bolt length, minus material thickness plus safrt
    
    //hole from bottom
    translate([OOBBSpacing * OOx, 1.5 + OOholeLength]){//bolt length minus the 3mm thickness from below 
        translate([0, 0, OODepth/2]){
            rotate([90,0,0]){
                linear_extrude(OOholeLength){ //bolt length minus the 3mm thickness from below
                    circle(OOBBHole);
                }
            }
        }       
    }
    OOBBPolygon3DComplete90DegSide(6,OOx*OS,1.5+OOBBNutM6Height+2,OOBBNutM6Width/2,OOBBNutM6Height,OODepth/2);
    

    
    
    
}

module OOBBHoleBolt3D(OOx,OODepth){
    translate([OOBBSpacing * OOx, 3.5]){
        translate([0, 0, OODepth/2]){
            rotate([90,0,0]){
                linear_extrude(2){
                    circle(OOBBHole);
                }
            }
        }       
    }
    translate([OOBBSpacing * OOx, 5.25]){
        translate([0, 1]){
            linear_extrude(OODepth){
                square([OOBBNutM6WidthShort,OOBBNutM6Height],true);
            }
        }
    }
    
    
}



module OOBBJAOutline(OOWidth,OOHeight){
    //Top Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset-1.5, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    //Top Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset + 1.5, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    
    //Bottom Square
    width4 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 + 3;
    height4 = 14.5;//(OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,8.75]){
       square([width4,height4],true);
    }

    //TallSquare
    width3 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2 + 3;
    height3 = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width3,height3],true);
    } 
 
    //WideSquare
    width5 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2  + 3;
    height5 = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2- OOBBRadius*2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width5,height5],true);
    }    
}

module OOBBCIOutline(OOWidth){
    circle((OOWidth * OOBBSpacing - 3 )/2);    
}

module OOBBPLOutline(OOWidth,OOHeight){
    //Bottom Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset, OOBBSpacing * 1-OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    //Bottom Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset, OOBBSpacing * 1-OOBBRadiusOffset]){
        circle(OOBBRadius);
    }    
    //Top Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    //Top Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset, OOBBSpacing * OOHeight+OOBBRadiusOffset]){
        circle(OOBBRadius);
    }
    
    //WideSquare
    width = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    height = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width,height],true);
    }

    //TallSquare
    width2 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2;
    height2 = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width2,height2],true);
    }    
    
    
    
}

module OOBBPLOutlineComplete(wid,hei){
    translate([-wid/2,-hei/2,0]){
       //Bottom Left
        translate([OOBBRadius, OOBBRadius, 0]){
            circle(OOBBRadius);
        }
        
        //Bottom Right
        translate([OOBBRadius, hei-OOBBRadius]){
            circle(OOBBRadius);
        }    
        //Top Left
        translate([wid-OOBBRadius, hei-OOBBRadius]){
            circle(OOBBRadius);
        }
        //Top Right
        translate([wid-OOBBRadius, OOBBRadius,0]){
            circle(OOBBRadius);
        }
        
        //WideSquare
        w = wid;
        h =hei-OOBBRadius*2;
        translate([wid/2,hei/2]){
            square([w,h],true);
        }

        //TallSquare
        w2 = wid-OOBBRadius*2;
        h2 = hei;
        translate([wid/2,hei/2]){
            square([w2,h2],true);
        }    
    }
    
    
}


module OOBBInsertItemCoord(item,ooX,ooY,ooZ=0,height=0,){
    OOBBInsertItemMM(item,ooX*OOBBSpacing,ooY*OOBBSpacing,ooZ=ooZ,height=height);    
}

module OOBBInsertItemMM(item,ooX,ooY,ooZ=0,height=0){
    translate([ooX,ooY,ooZ]){
        if(item=="OOBBHole"){
            circle(OOBBHole);
        }
        if(item=="M2Rivet"){
            height=50;    
            z=height-10;
            rad=OOBBm2Hole;
            rad2=5/2;
            OOBBHole3DRadiusComplete(0,0,rad,height,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,0);
        }
        if(item=="M27Rivet"){
            height=50;    
            z=height-10;
            rad=OOBBm27Hole;
            rad2=5/2;
            OOBBHole3DRadiusComplete(0,0,rad,height,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,0);
        }
        if(item=="M27RivetUpsideDown"){
            height=50;    
            z=height-10;
            rad=OOBBm27Hole;
            rad2=OOBBm27RivetClearance;
            OOBBHole3DRadiusComplete(0,0,rad,height,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M3Countersink"){
            top = OOBBm3CounterSinkTopHole;
            bot = OOBBm3Hole;
            height = 1.9;
            OOBBCountersink3DComplete(0,0,top,bot,height,height);
        }
        if(item=="M3CountersinkUpsideDown"){
            top = OOBBm3CounterSinkTopHole;
            bot = OOBBm3Hole;
            height = 1.9;
            OOBBCountersink3DComplete(0,0,bot,top,height,height);
        }
        if(item=="M3SocketHead"){
            top = OOBBm3SocketHeadHole;
            bot = OOBBm3SocketHeadHole;
            height = 3;
            OOBBCountersink3DComplete(0,0,top,bot,height,height);
        }
        if(item=="M3Hole"){
               height=50;    
               z=height-10;
               rad=OOBBm3Hole;
               OOBBHole3DRadiusComplete(0,0,rad,height,z);

        }
        if(item=="M3HoleScrewTop"){
               height=50;    
               z=height-10;
               rad=OOBBm3Hole+(3.5/2);
               OOBBHole3DRadiusComplete(0,0,rad,height,z);

        }
        
        if(item=="M3Slot"){
               height=50;    
               z=height-10;
               rad=OOBBm3Hole;
               slotw = 6;
               holeRadius = OOBBm3Hole;
               //slot
            translate([0,0,-10]){
                linear_extrude(height){
                    translate([-slotw/2+holeRadius,0,0]){
                        
                        translate([0,0,0]){
                            circle(holeRadius);
                        }
                        translate([slotw-holeRadius*2,0,0]){
                            circle(holeRadius);
                        }
                        translate([slotw/2-holeRadius,0,0]){
                            square([slotw-holeRadius*2,holeRadius*2],true);
                        }
                    }
                }
            }
        }
        if(item=="M3NutCaptive"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM3Width/2,height,0);
        }
        if(item=="M3NutCaptiveSingle"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM3Width/2,OOBBNutM3Height,0);
        }
        if(item=="M6NutCaptiveSingle"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM6Width/2,OOBBNutM6Height,0);
        }
        if(item=="M6BoltClearance"){
                OOBBHole3DRadiusComplete(0,0,13/2,height,0);
        }
        if(item=="Bearing606"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing606Big,6,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing606Little,100,50);
        }
        if(item=="Bearing6810"){
                OOBBHole3DRadiusComplete(0,0,65.6/2,7,0);
                OOBBHole3DRadiusComplete(0,0,54/2,100,50);
        }
        if(item=="Bearing6704"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Outside,4,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        if(item=="Bearing6704Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704OutsideHold,4,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        
        
        if(item=="BearingJoiner0303"){
            OOBBInsertItemCoord("M3Hole",1.5,1);
            OOBBInsertItemCoord("M3CountersinkUpsideDown",1.5,1);
            OOBBInsertItemCoord("M3Hole",2.5,3);
            OOBBInsertItemCoord("M3CountersinkUpsideDown",2.5,3);
            
            OOBBInsertItemCoord("M3Hole",1,2.5);           
            OOBBInsertItemCoord("M3NutCaptive",1,2.5,2.4,2.4);
            OOBBInsertItemCoord("M3Hole",3,1.5);
            OOBBInsertItemCoord("M3NutCaptive",3,1.5,2.4,2.4);
        }
        if(item=="CouplerFlangeM5"){
            rotate([0,0,45]){
                OOBBInsertItemMM("M3Countersink",0,8,-1.75);
                OOBBInsertItemMM("M3Hole",0,8);
                OOBBInsertItemMM("M3Countersink",0,-8,-1.75);
                OOBBInsertItemMM("M3Hole",0,-8);
                OOBBInsertItemMM("M3Countersink",8,0,-1.75);
                OOBBInsertItemMM("M3Hole",8,0);
                OOBBInsertItemMM("M3Countersink",-8,0,-1.75);
                OOBBInsertItemMM("M3Hole",-8,0);
                OOBBHole3D(0,0);
            }
        }
        if(item=="ServoWireClearance"){
           union(){ 
            translate([0,0,-1.5]){
                   linear_extrude(1.5){
                        square([15,4],true);
                   }
               }
            translate([1,0,-15]){
                linear_extrude(15){
                        square([4,4],true);
                   }
                }
           }
        }
        if(item=="ServoMicroHole"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            wid=35;
            hei=13.75;
            translate([-3.5,0,height]){
                OOBBCube3DComplete(0,0,wid,hei,height,0);
            }
        }
        if(item=="ServoMicroHornHole"){
               //height=50;    
               //z=height-10;
               rad=7.4/2;
               OOBBHole3DRadiusComplete(0,0,rad,height,height);

        }
        if(item=="ServoMicroHornCatch"){
            translate([0,0,-1.5]){
                   extension = 0;
                    rad=7.4/2; 
                   linear_extrude(1.5){
                      square([15,5.25+extension],true);
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }translate([-7.5-(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
        }
        if(item=="ServoMicroMount"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            height=50;    
            z=height+10;
            
            translate([0,0,-10]){
                linear_extrude(height){
                    translate([-5.35,0,height]){
                        union(){
                            
                            //square
                            holeWidth = 23.75;
                            holeHeight = 13.75;
                            slotw = 31;
                            holeRadius = 0.75;
                            square([holeWidth,holeHeight],true);
                            
                            //slot
                            translate([-slotw/2+holeRadius,0,0]){
                                
                                translate([0,0,0]){
                                    circle(holeRadius);
                                }
                                translate([slotw-holeRadius*2,0,0]){
                                    circle(holeRadius);
                                }
                                translate([slotw/2-holeRadius,0,0]){
                                    square([slotw-holeRadius*2,holeRadius*2],true);
                                }
                            }
                        }
                    }
                }
            }
        }
      if(item=="SetScrewKeyway"){
          rotate([90,0,0]){
              height=50;    
              z=50;
              rad=5/2;
              OOBBHole3DRadiusComplete(0,0,rad,height,z);
          }
      }
      if(item=="PiZeroMount"){
          OOBBInsertItemMM("M27Rivet",-29,11.5,0);
          OOBBInsertItemMM("M27Rivet",-29,-11.5,0);
          OOBBInsertItemMM("M27Rivet",29,11.5,0);
          OOBBInsertItemMM("M27Rivet",29,-11.5,0);
          translate([0,-11.5,3]){
              linear_extrude(3){
                  square([52,7],true);
              }
          }
      }
      if(item=="PiZeroMountUpsideDown"){
          OOBBInsertItemMM("M27RivetUpsideDown",-29,11.5,0);
          OOBBInsertItemMM("M27RivetUpsideDown",-29,-11.5,0);
          OOBBInsertItemMM("M27RivetUpsideDown",29,11.5,0);
          OOBBInsertItemMM("M27RivetUpsideDown",29,-11.5,0);
          translate([0,-11.5,0]){
              linear_extrude(3){
                  square([52,7],true);
              }
          }
      }
      
      
      
        
    }   
}

    