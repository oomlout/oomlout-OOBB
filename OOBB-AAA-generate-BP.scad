module BP(bearing,width,height){
    depth = extra=="HALF" ? 9 : 12;
    
    bearingDepth=gv(str("BEARING-",bearing,"-DEPTH"));
    if(extra=="HALF"){
        intersection(){
            BP_FULL(bearing,width,height,depth);
            oi("cube",width=1000,height=1000,depth=depth/2);
        }
    }else if(extra=="TOP"){
        translate([0,0,-(depth-bearingDepth)/2]){
            rotate([0,180,0]){
                intersection(){
                    BP_FULL(bearing,width,height,depth);
                    oi("cube",width=1000,height=1000,depth=(depth-bearingDepth)/2);
                }
            }
        }
    }else if(extra=="MIDDLE"){
        translate([0,0,(depth-bearingDepth)/2]){
            intersection(){
                BP_FULL(bearing,width,height,depth);
                //echo("BearingDepth=",bearingDepth);
                oi("cube",width=1000,height=1000,depth=bearingDepth,z=-(depth-bearingDepth)/2);
            }
        }
    }else{
        BP_FULL(bearing,width,height,depth);
    }

}



module BP_FULL(bearing,width,height,depth){
    
    w=3;
    h=3;
    difference(){
        oi("oobbBase",width=w,height=h,depth=depth);
        //OOBB Holes
        oi("holeM6",x=gv("OS1"),y=gv("OS1"));
        oi("holeM6",x=-gv("OS1"),y=gv("OS1"));
        oi("holeM6",x=gv("OS1"),y=-gv("OS1"));
        oi("holeM6",x=-gv("OS1"),y=-gv("OS1"));
        //joining Holes
        
        //top
        if(bearing[0]=="6" && bearing[1]=="0" &&bearing[2]=="6"){
            //extra holes for 606
            oi("holeM6",x=0,y=gv("OS1"));
            oi("holeM6",x=0,y=-gv("OS1"));
            oi("holeM6",x=gv("OS1"),y=0);
            oi("holeM6",x=-gv("OS1"),y=0);
            
            
            shift = 9.445;
            //606 bearings to keep all OOBB holes
            oi("holeM3",x=shift,y=-shift);
            oi("countersunkM3",x=shift,y=-shift,z=0);
            oi("nutM3",x=shift,y=-shift,z=-depth,depth=gv("NUT-M3-DEPTH"),rotY=180);
            
            oi("holeM3",x=-shift,y=shift);
            oi("countersunkM3",x=-shift,y=shift,z=0);
            oi("nutM3",x=-shift,y=shift,z=-depth,depth=gv("NUT-M3-DEPTH"),rotY=180);
                //bottom
            oi("holeM3",x=shift,y=shift);
            oi("countersunkM3",x=shift,y=shift,z=-depth,rotY=180);
            oi("nutM3",x=shift,y=shift,depth=gv("NUT-M3-DEPTH"),rotZ=90);
            
            oi("holeM3",x=-shift,y=-shift);
            oi("countersunkM3",x=-shift,y=-shift,z=-depth,rotY=180);
            oi("nutM3",x=-shift,y=-shift,depth=gv("NUT-M3-DEPTH"),rotZ=90);
        }else{
            //bearings other than 606
            oi("holeM3",x=0,y=-gv("OS")-2);
            oi("countersunkM3",x=0,y=-gv("OS")-2,z=0);
            oi("nutM3",x=0,y=-gv("OS1")-2,z=-depth,depth=gv("NUT-M3-DEPTH"),rotY=180);
            
            oi("holeM3",x=0,y=gv("OS1")+2);
            oi("countersunkM3",x=0,y=gv("OS1")+2,z=0);
            oi("nutM3",x=0,y=gv("OS1")+2,z=-depth,depth=gv("NUT-M3-DEPTH"),rotY=180);
                //bottom
            oi("holeM3",y=0,x=-gv("OS1")-2);
            oi("countersunkM3",y=0,x=-gv("OS1")-2,z=-depth,rotY=180);
            oi("nutM3",y=0,x=-gv("OS1")-2,depth=gv("NUT-M3-DEPTH"),rotZ=90);
            
            oi("holeM3",y=0,x=gv("OS1")+2);
            oi("countersunkM3",y=0,x=gv("OS1")+2,z=-depth,rotY=180);
            oi("nutM3",y=0,x=gv("OS1")+2,depth=gv("NUT-M3-DEPTH"),rotZ=90);
        }        
        //Bearing
        //echo(str("BEARING-",bearing,"-DEPTH"),gv(str("BEARING-",bearing,"-DEPTH")));
        oi(str("bearing",bearing),z=-(depth-gv(str("BEARING-",bearing,"-DEPTH")))/2);
        
    }
    
}





module BP_606_03_03(){
    echo("Making: BP-606-03-03");
    BP(bearing="606",width=3,height=3);
}


module BP_6803_03_03(){
    BP(bearing="6803",width=3,height=3);
}