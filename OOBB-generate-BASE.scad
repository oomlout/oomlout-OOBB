//######  OOBB OpenSCAD Generation  ######
//########################################
    
    
    include <OOBB-Polygon.scad>;
    
    /*    
    w=3;
    h=1;
    m="JA3D";
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
}else if(m=="CP3D"){
    OOBBCP3D(w,h,12);
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


module OOBBCP3D(OOWidth,OOHeight,OOExtrude){
    difference(){
        OOBBPLOutline3DBig(OOWidth,OOHeight,OOExtrude);
        
        OOBBHolesForCP3D(OOWidth,OOHeight,9);
        
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
    
    if(s=="3DPR"){
        translate([0,0,OOBBfirstLayerLipDepth]){
            linear_extrude(OODepth-OOBBfirstLayerLipDepth){
                OOBBPLOutline(OOWidth, OOHeight);
            }
        }
        linear_extrude(OOBBfirstLayerLipDepth){
            OOBBPLOutlineFirstLayer(OOWidth, OOHeight);
        }
        
    }else{
        linear_extrude(OODepth){
            OOBBPLOutline(OOWidth, OOHeight);
        }
    }
    
}

module OOBBPLOutline3DBig(OOWidth,OOHeight,OODepth){
    extra=5;
    if(s=="3DPR"){
        translate([0,0,OOBBfirstLayerLipDepth]){
            linear_extrude(OODepth-OOBBfirstLayerLipDepth){
                OOBBPLOutlineBig(OOWidth, OOHeight,extra);
            }
        }
        linear_extrude(OOBBfirstLayerLipDepth){
            OOBBPLOutlineBigFirstLayer(OOWidth, OOHeight,extra);
        }
        
    }else{
        linear_extrude(OODepth){
            OOBBPLOutlineBig(OOWidth, OOHeight);
        }
    }
    
}


module OOBBCIOutline3D(OOWidth,OODepth){
    if(s=="3DPR"){
        translate([0,0,OOBBfirstLayerLipDepth]){
            linear_extrude(OODepth-OOBBfirstLayerLipDepth){
                OOBBCIOutline(OOWidth);
            }
        }
        linear_extrude(OOBBfirstLayerLipDepth){
            OOBBCIOutlineFirstLayer(OOWidth);
        }
        
    }else{
        linear_extrude(OODepth){
            OOBBCIOutline(OOWidth);
        }
    }
}

module OOBBCIOutline3DOLD(OOWidth,OODepth){
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
            OOBBInsertItemCoord("OOBBHole2D",width,height);
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


module OOBBHolesForCP3D(OOWidth, OOHeight, level){
            for(width = [1:OOWidth]){
                for(height = [1:OOHeight]){
                    OOBBHole3DBig(width,height);
                            OOBBInsertItemCoord("M6NutCaptiveSingleBig",width,height,ooZ=level);
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

module OOBBHole3DBig(OOx,OOy){
    height=50;    
    z=height-10;
    rad=OOBBHole+0.5;
    OOBBHole3DRadiusComplete(OOx*OOBBSpacing,OOy*OOBBSpacing,rad,height,z);
}





module OOBBHole3DRadius(x,y,rad){
    height=50;    
    z=height-10;
    OOBBHole3DRadiusComplete(x,y,rad,height,z);
}

module OOBBHole3DRadiusComplete(x,y,rad,height,z){    
   translate([x,y,z-height]){
       if(s=="3DPR"){
           union(){
                linear_extrude(height){
                    circle(rad);
                }
                translate([0,0,10]){
                    linear_extrude(OOBBfirstLayerLipOffset){
                        circle(rad+OOBBfirstLayerLipDepth);
                    }
                }
            }
        }
       else{
           linear_extrude(height){
               circle(rad);
           }
       }
   }
   
module OOBBHole3DRadiusComplete(x,y,rad,height,z){    
   translate([x,y,z-height]){
       if(s=="3DPR"){
           union(){
                linear_extrude(height){
                    circle(rad);
                }
                translate([0,0,10]){
                    linear_extrude(OOBBfirstLayerLipOffset){
                        circle(rad+OOBBfirstLayerLipDepth);
                    }
                }
            }
        }
       else{
           linear_extrude(height){
               circle(rad);
           }
       }
   }
}}

module OOBBHole3DRadiusSimple(x,y,rad,height,z){    
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
    {
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
}}



module OOBBCIOutlineBig(OOWidth,extra){
        circle((OOWidth * OOBBSpacing - 3)/2 + extra);   
}


module OOBBCIOutline(OOWidth){
    OOBBCIOutlineBig(OOWidth,0);
}

module OOBBCIOutlineFirstLayer(OOWidth){
    OOBBCIOutlineBig(OOWidth,-OOBBfirstLayerLipOffset);
}



module OOBBPLOutlineBig(OOWidth,OOHeight,extra){
    //Bottom Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset-extra, OOBBSpacing * 1-OOBBRadiusOffset-extra]){
        circle(OOBBRadius);
    }
    //Bottom Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset+extra, OOBBSpacing * 1-OOBBRadiusOffset-extra]){
        circle(OOBBRadius);
    }    
    //Top Left
    translate([OOBBSpacing * 1-OOBBRadiusOffset-extra, OOBBSpacing * OOHeight+OOBBRadiusOffset+extra]){
        circle(OOBBRadius);
    }
    //Top Right
    translate([OOBBSpacing * OOWidth+OOBBRadiusOffset+extra, OOBBSpacing * OOHeight+OOBBRadiusOffset+extra]){
        circle(OOBBRadius);
    }
    
    //WideSquare
    width = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 + extra*2;
    height = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2+extra*2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width,height],true);
    }

    //TallSquare
    width2 = (OOWidth-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2 - OOBBRadius*2+extra*2;
    height2 = (OOHeight-1) * OOBBSpacing + OOBBRadius * 2 + OOBBRadiusOffset * 2+extra*2;
    translate([(OOBBSpacing + OOWidth * OOBBSpacing)/2,(OOBBSpacing + OOHeight * OOBBSpacing)/2]){
        square([width2,height2],true);
    }    
    
    
    
}

module OOBBPLOutline(OOWidth,OOHeight){
    OOBBPLOutlineBig(OOWidth,OOHeight,0);    
}

module OOBBPLOutlineFirstLayer(OOWidth,OOHeight){
    OOBBPLOutlineBig(OOWidth,OOHeight,-OOBBfirstLayerLipOffset);
}


module OOBBPLOutlineBigFirstLayer(OOWidth,OOHeight,extra){
    OOBBPLOutlineBig(OOWidth,OOHeight,-OOBBfirstLayerLipOffset + extra);
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

module OOBBInsertItemCoord180(item,ooX,ooY,ooZ=0,height=0,){
    translate([ooX*OOBBSpacing,ooY*OOBBSpacing,0]){
        rotate([0,0,180]){    
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height);    
        }
    }
}



module OOBBInsertItemCoord90(item,ooX,ooY,ooZ=0,height=0,){
    translate([ooX*OOBBSpacing,ooY*OOBBSpacing,0]){
        rotate([0,0,90]){    
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height);    
        }
    }
}


module OOBBInsertItemCoordRotate(item,ooX,ooY,ooZ=0,height=0,rot=0){
    translate([ooX*OOBBSpacing,ooY*OOBBSpacing,0]){
        rotate([0,0,rot]){    
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height);    
        }
    }
}



module OOBBInsertItemMM180(item,ooX,ooY,ooZ=0,height=0,){
    translate([ooX,ooY,0]){
        rotate([0,0,180]){
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height);    
        }
    }
}

module OOBBInsertItemMM90(item,ooX,ooY,ooZ=0,height=0,){
    translate([ooX,ooY,0]){
        rotate([0,0,90]){
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height);    
        }
    }
}

module OOBBInsertItemMMRotate(item,ooX,ooY,ooZ=0,height=0,rot=0){
    translate([ooX,ooY,0]){
        rotate([0,0,rot]){
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height);    
        }
    }
}

module OOBBInsertItemMM(item,ooX,ooY,ooZ=0,height=0){
    translate([ooX,ooY,ooZ]){
        if(item=="OOBBHole"){
            height=50;    
            z=height-10;
            rad=OOBBHole;
            OOBBHole3DRadiusComplete(0,0,rad,height,z);
        }
        if(item=="OOBBHole2D"){
            height=50;    
            z=height-10;
            rad=OOBBHole;
            circle(rad);
        }
        if(item=="M2Rivet"){
            height=50;    
            z=height-10;
            rad=OOBBm2Hole;
            rad2=5.2/2;
            OOBBHole3DRadiusComplete(0,0,rad,height,0);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M2RivetUpsideDown"){
            h=50;    
            z=h-10-height;
            rad=OOBBm2Hole;
            rad2=5.2/2;
            OOBBHole3DRadiusComplete(0,0,rad,h,z);
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
        if(item=="M3Rivet"){
            height=50;    
            z=height-10;
            rad=OOBBm3Hole;
            rad2=(7+0.2)/2;
            OOBBHole3DRadiusComplete(0,0,rad,height,0);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M3RivetUpsideDown"){
            h=50;    
            z=h-10-height;
            rad=OOBBm3Hole;
            rad2=(7+0.2)/2;
            OOBBHole3DRadiusComplete(0,0,rad,h,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M3Countersink"){
            top = OOBBm3CounterSinkTopHole;
            bot = OOBBm3Hole;
            height = OOBBm3CounterSinkDepth;
            OOBBCountersink3DComplete(0,0,top,bot,height,height);
        }
        if(item=="M3CountersinkUpsideDown"){
            top = OOBBm3CounterSinkTopHole;
            bot = OOBBm3Hole;
            height = OOBBm3CounterSinkDepth;
            OOBBCountersink3DComplete(0,0,bot,top,height,height);
        }
        if(item=="M3SocketHead"){
            top = OOBBm3SocketHeadHole;
            bot = OOBBm3SocketHeadHole;
            h = OOBBm3SocketHeadDepth;
            translate([0,0,0]){
                OOBBCountersink3DComplete(0,0,top,bot,h,height);
            }
        }
        if(item=="M3SocketHeadUpsideDown"){
            top = OOBBm3SocketHeadHole;
            bot = OOBBm3SocketHeadHole;
            height = OOBBm3SocketHeadDepth;
            OOBBCountersink3DComplete(0,0,top,bot,height,height);
        }
        if(item=="M3Hole"){
               height=50;    
               z=height-10;
               rad=OOBBm3Hole;
               OOBBHole3DRadiusComplete(0,0,rad,height,z);

        }
        if(item=="M2Hole"){
               height=50;    
               z=height-10;
               rad=OOBBm2Hole;
               OOBBHole3DRadiusComplete(0,0,rad,height,z);

        }
        if(item=="M3HoleExtra"){    
               z=ooZ;
               rad=OOBBm3Hole;
               OOBBHole3DRadiusComplete(0,0,rad,height,0);

        }
        if(item=="M3HoleScrewTop"){
               height=50;    
               z=height-10;
               rad=OOBBm3SocketHeadHole;
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
        if(item=="M3NutClearance"){  ///clearnce for an m3 nut
            translate([0,0,-height]){
                linear_extrude(height){
                    circle(6.2/2);
                }
            }
        }
        if(item=="M3NutClearanceSlide"){ //add an extra half mm
            OOBBInsertItemMM("M3NutClearance",0,0,ooZ=0,height=5);   
            OOBBInsertItemMM("M3NutClearance",0.5,0,ooZ=0,height=5);   
            OOBBInsertItemMM("M3NutClearance",-0.5,0,ooZ=0,height=5);   
 
        }
        if(item=="M3NutCaptiveSideInsert"){ 
           OOBBPolygon3DComplete(6,0,0,OOBBNutM3Width/2,height,0);
            OOBBInsertItemMM("M3NutCaptive",0,0,ooZ=0,height=height);   
            translate([0,0,-height]){
                linear_extrude(height){
                    translate([0,10,0]){
                        square([OOBBNutM3Width,20],true);
                    }
                }
            } 
        }
        if(item=="M3NutCaptiveSingle"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM3Width/2,OOBBNutM3Height,0);
        }
        if(item=="M6NutCaptiveSingle"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM6Width/2,OOBBNutM6Height,0);
        }
        if(item=="M6NutCaptiveSingleBig"){
           OOBBPolygon3DComplete(6,0,0,(OOBBNutM6Width+0.5)/2,OOBBNutM6Height+0.5,0);
        }
        if(item=="M6BoltClearance"){
                OOBBHole3DRadiusComplete(0,0,13/2,height,0);
        }
        if(item=="M6BoltClearanceCorner"){
                union(){
                OOBBHole3DRadiusSimple(0,0,13/2,height,0);
                translate([-0,-13/4,-height]){
                    linear_extrude(height){
                        square([13,13/2],true);
                    }
                }  
                translate([-13/4,0,-height]){
                    linear_extrude(height){
                        square([13/2,13],true);
                    }
                }
            }
        }  
        if(item=="Bearing606"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing606Big,6,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing606Little,100,50);
        }
        if(item=="Bearing6806"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806Outside,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806Little,100,50);
        }
        if(item=="Bearing6808"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808Outside,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808Little,100,50);
        }
        if(item=="Bearing6810"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810Outside,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810Little,100,50);
        }
        if(item=="Bearing6806Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806OutsideHold,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806Little,100,50);
        }
        if(item=="Bearing6808Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808OutsideHold,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808Little,100,50);
        }
        if(item=="Bearing6810Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810OutsideHold,7,0);
            echo("6810 Hold Radius");
            echo(OOBBBearing6810OutsideHold * 2);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810Little,100,50);
        }
        if(item=="Bearing6704"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Outside,4,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        if(item=="Bearing6704Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704OutsideHold,4,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        
        if(item=="Bearing6704Little"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        if(item=="Bearing6803Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6803OutsideHold,5,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6803Little,100,50);
        }
        if(item=="Bearing6803Little"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6803Little,100,50);
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
        
        if(item=="NEMA17"){
            OOBBInsertItemMM("M3Hole",31/2,31/2);
            OOBBInsertItemMM("M3SocketHead",31/2,31/2,ooZ=0);
            OOBBInsertItemMM("M3Hole",-31/2,31/2);
            OOBBInsertItemMM("M3SocketHead",-31/2,31/2,ooZ=0);
            OOBBInsertItemMM("M3Hole",31/2,-31/2);
            OOBBInsertItemMM("M3SocketHead",31/2,-31/2,ooZ=0);
            OOBBInsertItemMM("M3Hole",-31/2,-31/2);
            OOBBInsertItemMM("M3SocketHead",-31/2,-31/2,ooZ=0);  
            
            /*
            OOBBCountersinkM33DComplete(31/2,31/2,z+10);
            OOBBHole3DRadius(31/2,31/2,OOBBm3Hole);
            OOBBCountersinkM33DComplete(-31/2,-31/2,z+10);
            OOBBHole3DRadius(-31/2,-31/2,OOBBm3Hole);
            OOBBCountersinkM33DComplete(31/2,-31/2,z+10);
            OOBBHole3DRadius(31/2,-31/2,OOBBm3Hole);
            OOBBCountersinkM33DComplete(-31/2,31/2,z+10);
            OOBBHole3DRadius(-31/2,31/2,OOBBm3Hole);
            */
        }
        if(item=="ServoWireClearance"){
           union(){ 
            translate([0,0,-1.5]){
                   linear_extrude(1.5){
                        square([15,4],true);
                   }
               }
            translate([1,0,-13]){
                linear_extrude(13){
                        square([4,4],true);
                   }
                }
           }
        }
        if(item=="ServoMicroHole"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            wid=36;
            hei=13.75;
            translate([-4,0,height]){
                OOBBCube3DComplete(0,0,wid,hei,height,0);
            }
        }if(item=="ServoHole"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            wid=56 + 2;
            hei=20+2;
            translate([11,0,height]){
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
        if(item=="ServoMicroHornCatchSingle"){
            translate([0,0,-1.5]){
                   extension = 0;
                   rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);

                    
                   linear_extrude(1.5){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }

            }
        }
        if(item=="ServoMicroHornCatchSingleContinuous"){
        translate([0,0,-4]){
        
              union(){
                
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2]){
                   rad=7.4/2; 
                   linear_extrude(2){
                      
                      translate([4/2,0,0]){
                        square([4,7.1+extension],true);
                      }
                      
                      translate([5.5/2,0,0]){
                        square([8.5,6.1+extension],true);
                      }
                      
                      translate([8.5+(9/2),0,0]){
                        square([14,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
    }
        if(item=="ServoMicroHornCatchSingleContinuousBottomInsertion"){
        translate([0,0,-4]){
              union(){
                extension = 0;
                rad=7.4/2;
                height=2;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,0]){
                   rad=7.4/2; 
                   linear_extrude(4.5){
                      
                      translate([4/2,0,0]){
                        square([4,7.1+extension],true);
                      }
                      
                      translate([5.5/2,0,0]){
                        square([8.5,6.1+extension],true);
                      }
                      
                      translate([8.5+(9/2),0,0]){
                        square([14,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
               slotw = 3.5;
                            holeRadius = 0.75;
                            he=6;
                            //slot
                            translate([7/2+5/2,0,4]){ //move to middle of remaining piece
                                translate([-slotw/2+holeRadius,0,0]){
                                    linear_extrude(he){
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
    }    if(item=="ServoFullHornCatchBottomInsertion"){
        translate([0,0,-5.75]){
              union(){
                extension = 0;
                rad=13.4/2; 
                height=2;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,0]){
                   
                   linear_extrude(5.75){
                      union(){
                          translate([0,0,0]){
                           square([8.5,14+extension],true);
                          }
                          
                          translate([0,0,0]){
                           square([25,7.75+extension],true);
                          }
                          
                          circle(rad);
                      }
                   }
                }
            }
            
               slotw = 5.5;
                            holeRadius = 0.75;
                            he=6;
                            //slot
                            translate([7/2+5/2,0,5.75]){ //move to middle of remaining piece
                                translate([-slotw/2+holeRadius,0,0]){
                                    linear_extrude(he){
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
        if(item=="ServoMicroHornCatchSingleBottomInsertion"){
            translate([0,0,-4]){
                   extension = 0;
                   rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);

                    
                   linear_extrude(4){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                   
                   //SLOT
                            slotw = 3.5;
                            holeRadius = 0.75;
                            he=6;
                            //slot
                            translate([7/2+5/2,0,4]){ //move to middle of remaining piece
                                translate([-slotw/2+holeRadius,0,0]){
                                    linear_extrude(he){
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
        if(item=="ServoMicroMount"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            height=50;    
            z=height+10;
            
            translate([0,0,-10]){
                linear_extrude(height){
                    translate([-5.35,0,height]){
                        union(){
                            
                            //square
                            holeWidth = 25;
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
        if(item=="B1X"){
            translate([0,0,-20.5]){
                eC=1;
                //OOBBCube3DComplete(x,y,wid,hei,height,z)
                OOBBCube3DComplete(0,0,100+eC,30+eC,1.5+eC,1.5+eC);//pcb
                OOBBCube3DComplete(5.5,0,78+eC,21+eC,18+eC,18+eC+1.5);//battery
                OOBBCube3DComplete(-37.5,13.5,9+eC,5+eC,3+eC,1.5+3+eC+eC);//switch
                OOBBCube3DComplete(-48,0,15+eC,15+eC,7+1.5+eC,7+eC+eC);//USB
                //solder tabs
                OOBBCube3DComplete(-37,0,7+eC,7+eC,2,1.5+2+eC);
                OOBBCube3DComplete(46.5,0,7+eC,7+eC,2,1.5+2+eC);
                
                
                
                //six header clearances
                xxx1 = -16.451;
                xxx2 = 5.46;
                xxx3 = 27.46;
                yyy1 = 12.5;
                yyy2 = -12.5;
                zzz1 = 1.5+eC+2.54;
                OOBBCube3DComplete(xxx1,yyy1,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx2,yyy1,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx3,yyy1,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx1,yyy2,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx2,yyy2,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx3,yyy2,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                
                xx1 = -47.5;
                xx2 = 47.5;
                yy1 = 12;
                yy2 = -12;
                shH = 18+4.5; //needs adjusting for various thicknesses
                OOBBInsertItemMM("M3Hole",xx1,yy1);
                OOBBInsertItemMM("M3SocketHead",xx1,yy1,height=shH);
                OOBBInsertItemMM("M3Hole",xx1,yy2);
                OOBBInsertItemMM("M3SocketHead",xx1,yy2,height=shH);
                OOBBInsertItemMM("M3Hole",xx2,yy1);
                OOBBInsertItemMM("M3SocketHead",xx2,yy1,height=shH);
                OOBBInsertItemMM("M3Hole",xx2,yy2);
                OOBBInsertItemMM("M3SocketHead",xx2,yy2,height=shH); 
            }
            
        }
        if(item=="ServoFullMount"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            height=50;    
            z=height+10;
            x1 = 14;
            y1 = 5;
            x2 = -36;
            y2 = -5;
            
            translate([0,0,-10]){
                difference(){
                    union(){
                        
                        linear_extrude(height){
                            translate([-11,0,height]){
                                    //square
                                    holeWidth = 42 + 2;
                                    holeHeight = 21 + 2;
                                    holeRadius = 0.75;
                                    square([holeWidth,holeHeight],true);
                                    //holes
                                    x1 = 14;
                                    y1 = 5;
                                    x2 = -36;
                                    y2 = -5;
                            }                    
                        }
                        translate([-11,0,10+4]){
                            linear_extrude(2.5){
                                    //square
                                    holeWidth = 56 + 2;
                                    holeHeight = 21 + 2;
                                    holeRadius = 0.75;
                                    square([holeWidth,holeHeight],true);
                                    //holes
                                    x1 = 14;
                                    y1 = 5;
                                    x2 = -36;
                                    y2 = -5;
                            }                    
                        }
                    }
                
                h2= 4 + 2.5;
                //translate([0,0,10+h2]){
                //    OOBBInsertItemMM("M45Sock",x1,y1,height=h2);
                //    OOBBInsertItemMM("M45Sock",x1,y2,height=h2);
                //    OOBBInsertItemMM("M45Sock",x2,y1,height=h2);
                //    OOBBInsertItemMM("M45Sock",x2,y2,height=h2);
                //}
            }
            }
        
            
            OOBBInsertItemMM("M3Hole",x1,y1);
            OOBBInsertItemMM("M3SocketHead",x1,y1,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x1,y1,OOBBNutM3Height);
            OOBBInsertItemMM("M3Hole",x1,y2);
            OOBBInsertItemMM("M3SocketHead",x1,y2,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x1,y2,OOBBNutM3Height);
            OOBBInsertItemMM("M3Hole",x2,y1);
            OOBBInsertItemMM("M3SocketHead",x2,y1,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x2,y1,OOBBNutM3Height);
            OOBBInsertItemMM("M3Hole",x2,y2);
            OOBBInsertItemMM("M3SocketHead",x2,y2,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x2,y2,OOBBNutM3Height);
        }
      if(item=="M45Sock"){
          cylinder(height,4.4/2,4.4/2,true);
      }  
      if(item=="SetScrewKeyway"){
          rotate([90,0,0]){
              height=50;    
              z=50;
              rad=5/2;
              OOBBHole3DRadiusComplete(0,0,rad,height,z);
          }
      }
      if(item=="PiCameraMount"){
          OOBBInsertItemMM("M2RivetUpsideDown",-10.5,10,0);
          OOBBInsertItemMM("M2RivetUpsideDown",-10.5,-2.5,0);
          OOBBInsertItemMM("M2RivetUpsideDown",10.5,10,0);
          OOBBInsertItemMM("M2RivetUpsideDown",10.5,-2.5,0);
          translate([0,2,-10]){
              linear_extrude(20){
                  square([12,25],true);
              }
          }
          translate([7,8,-ooZ]){
              linear_extrude(1.5){
                  square([5,4],true);
              }
          }
          translate([-10,3.5,-ooZ]){
              linear_extrude(1.5){
                  square([3,8],true);
              }
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
        //extra cutout for rivet clearance
        translate([0,-11.5,0]){
            linear_extrude(1.5){
                square([58,OOBBm27RivetClearance*2],true);
            }
        }
      }
      
      
      
        
    }   
}

module OOBBcylinder(height,radius1,radius2){
    union(){
        translate([0,0,OOBBfirstLayerLipDepth]){
            cylinder(height - OOBBfirstLayerLipDepth,radius1,radius2);
            
        }
       cylinder(OOBBfirstLayerLipDepth,radius1-OOBBfirstLayerLipOffset,radius2-OOBBfirstLayerLipOffset);            
        }
}
