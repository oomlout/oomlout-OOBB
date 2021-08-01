
//WI
if(m=="WI-M2-03-03"){
    WI_M2_03_03(w,h);
}
if(m=="WI-BA-03-03"){
    WI_BA_03_03(w,h);
}
if(m=="WI-HV-03-03"){
    WI_HV_03_03(w,h);
}
if(m=="WI-SM-03-03"){
    WI_SM_03_03(w,h);
}
if(m=="WI-BP-03-03"){
    WI_BP_03_03(w,h);
}

module WI_M2_03_03(width,height){
    echo("Building WI-M2-03-03");
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-M2",x=0,y=-21,z=00,depth=100,rotZ=90);
    }
}

module WI_BA_03_03(width,height){
    echo("Building WI-BA-03-03");
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-BA",x=0,y=-21,z=00,depth=100,rotZ=90);
    }
}

module WI_HV_03_03(width,height){
    echo("Building WI-HV-03-03");
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-HV",x=0,y=-21,z=00,depth=100,rotZ=90);
    }
}

module WI_SM_03_03(width,height){
    echo("Building WI-SM-03-03");
    difference(){
        WI_XX_03_03(width,height);
        oi("WI-SM",x=0,y=-21,z=00,depth=100,rotZ=90);
    }
}

module WI_BP_03_03(width,height){
    echo("Building WI-BP-03-03");
    difference(){
        WI_XX_03_03(width,height,hole=false);
        oi("countersunkM3",x=gv("OS1"),y=0);
        oi("countersunkM3",x=-gv("OS1"),y=0);
    }
}


module WI_XX_03_03(width,height,hole=true){
    depth=3;
    difference(){
        oi("oobbBase",width=width,height=height,depth=depth);
        if(hole){
            oi("holeM8",x=0,y=8);
        }
        oi("holeM3",x=gv("OS1"),y=0);
        oi("holeM3",x=-gv("OS1"),y=0);
        oi("holeM6",x=gv("OS1"),y=-gv("OS1"));
        oi("holeM6",x=-gv("OS1"),y=-gv("OS1"));
        oi("holeM6",x=gv("OS1"),y=gv("OS1"));
        oi("holeM6",x=-gv("OS1"),y=gv("OS1"));
    }    
}