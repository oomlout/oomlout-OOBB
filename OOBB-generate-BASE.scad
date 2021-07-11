//######  OOBB OpenSCAD Generation  ######
//########################################
    
    
    include <OOBB-Polygon.scad>;
    include <OOBB-Insert.scad>;
    include <OPSC-base.scad>

    
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
}else if(m=="PL3DT"){
    OOBBPL3D(w,h,t);
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
    //OOBBHole3DRadiusComplete(OOx*OOBBSpacing,OOy*OOBBSpacing,rad,height,z);
    oi("holeM6",x=OOx*OOBBSpacing,y=OOy*OOBBSpacing);
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
 }

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

