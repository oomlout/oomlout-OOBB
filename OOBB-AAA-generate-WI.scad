module WI_M2_03_03(width,height){
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-M2",x=0,y=-21,depth=100,rotZ=90,z=0.4);
    }
}

module WI_BA_03_03(width,height){
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-BA",x=0,y=-21,depth=100,rotZ=90,z=0.4);
    }
}

module WI_HV_03_03(width,height){
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-HV",x=0,y=-21,depth=100,rotZ=90,z=0.4);
    }
}

module WI_SM_03_03(width,height){
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-SM",x=0,y=-21,depth=100,rotZ=90,z=0.4);
    }
}

module WI_BP_03_03_CS(width,height){
    difference(){
        WI_XX_03_03(width,height,hole=false);
        oi("countersunkM3",x=gv("OS1"),y=0);
        oi("countersunkM3",x=-gv("OS1"),y=0);
    }
}


module WI_BP_03_03_NU(width,height){
    difference(){
        WI_XX_03_03(width,height,hole=false);
        oi("nutM3",x=gv("OS1"),y=0,depth=2,z=0.4-3+2);
        oi("nutM3",x=-gv("OS1"),y=0,depth=2,z=0.4-3+2);
    }
}


module WI_BP_03_03(width,height){
    difference(){
        WI_XX_03_03(width,height,hole=false);
    }
}

module WI_BP_03_03_HO(width,height){
    difference(){
       WI_BP_03_03_BA(width,height);
       oi("holeM8",x=0,y=8);
    } 
}

module WI_XX_03_03(width,height,hole=true){
    translate([0,0,0.4]){
        depth=3;
        difference(){
            oi("oobbBase",width=width,height=height,depth=depth);
            if(hole){
                oi("holeM8",x=0,y=8);
            }
            WI_holes();
            }    
        }
}

module WI_holes(){
    oi("holeM3",x=gv("OS1"),y=0);
    oi("holeM3",x=-gv("OS1"),y=0);
    oi("holeM6",x=gv("OS1"),y=-gv("OS1"));
    oi("holeM6",x=-gv("OS1"),y=-gv("OS1"));
    oi("holeM6",x=gv("OS1"),y=gv("OS1"));
    oi("holeM6",x=-gv("OS1"),y=gv("OS1"));
}