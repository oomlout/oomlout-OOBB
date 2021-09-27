module BP(bearing,width,height){
    depth=12;
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
                echo("BearingDepth=",bearingDepth);
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
        oi("holeM3",x=0,y=-gv("OS1"));
        oi("countersunkM3",x=0,y=-gv("OS1"),z=0);
        oi("nutM3",x=0,y=-gv("OS1"),z=-depth,depth=gv("NUT-M3-DEPTH"),rotY=180);
        oi("holeM3",x=0,y=gv("OS1"));
        oi("countersunkM3",x=0,y=gv("OS1"),z=0);
        oi("nutM3",x=0,y=gv("OS1"),z=-depth,depth=gv("NUT-M3-DEPTH"),rotY=180);
            //bottom
        oi("holeM3",y=0,x=-gv("OS1"));
        oi("countersunkM3",y=0,x=-gv("OS1"),z=-depth,rotY=180);
        oi("nutM3",y=0,x=-gv("OS1"),depth=gv("NUT-M3-DEPTH"));
        oi("holeM3",y=0,x=gv("OS1"));
        oi("countersunkM3",y=0,x=gv("OS1"),z=-depth,rotY=180);
        oi("nutM3",y=0,x=gv("OS1"),depth=gv("NUT-M3-DEPTH"));
        //Bearing
        //echo(str("BEARING-",bearing,"-DEPTH"),gv(str("BEARING-",bearing,"-DEPTH")));
        oi(str("bearing",bearing),z=-(depth-gv(str("BEARING-",bearing,"-DEPTH")))/2);
        
    }
    
}





module BP_606_03_03(){
    BP(bearing="606",width=3,height=3);
}


module BP_6803_03_03(){
    BP(bearing="6803",width=3,height=3);
}