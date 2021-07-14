

if(m=="HL-N20-03-03"){
    HL_N20_03_03(w,h);
}if(m=="HL-GM1-03-03"){
    HL_GM1_03_03(w,h);
}if(m=="CN-BAS2-05-05"){
    CN_BAS2_05_05(w,h);
}if(m=="TEST-OOEBWIMOT-05-05"){
    TEST_OOEBWIMOT_05_05(w,h);
}

module HL_N20_03_03(width,height){
    depth=12;
    echo("Building HL-N20-03-03");
    difference(){
        oi("oobbBase",width=width,height=height,depth=depth);
        oi("n20Motor",x=0,y=0,z=-2,rotZ=90);
        //nut cutouts for clearance
        oi("cube",x=-15,width=15,height=100,depth=6);
        oi("cube",x=15,width=15,height=100,depth=6);
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

module HL_GM1_03_03(width,height){
    depth=18;
    echo("Building HL-GM1-03-03");
    difference(){
        union(){
            shift = 4;
            oi("oobbBase",width=width,height=height,depth=depth,z=3);
            oi("oobbBase",x=-shift,width=width,height=height,depth=depth,z=3);
            oi("oobbBase",y=-shift,width=width,height=height,depth=depth,z=3);
            oi("oobbBase",x=-shift,y=-shift,width=width,height=height,depth=depth,z=3);
        }
        
        oi("gearMotor1",ex=3,rad=2,rotZ=45);
        oi("gearMotor1",rad=2,rotZ=45,z=-2);
        oi("gearMotor1",rad=2,rotZ=45,z=-4);
        //oobb holes
        //oi("holeM6",x=15,y=0);
        oi("holeM6",x=15,y=15);
        oi("holeM6",x=15,y=-15);
        //oi("holeM6",x=-15,y=0);
        oi("holeM6",x=-15,y=15);
        //oi("holeM6",x=-15,y=-15);
        //oi("holeM6",x=0,y=15);
        //oi("holeM6",x=0,y=-15);
    }
}

module CN_BAS2_05_05(width,height){
    //bottom
    
    echo("Building CN-BA2-05-05");
    if(extra == "BOTTOM"){
        depth=6;
        difference(){
            oi("oobbBase",width=width,height=height,depth=depth);
            plateThick=2;
            oi("buttonM7",x=-15,y=-25,z=-plateThick,rad=1);
            oi("buttonM7",x=15,y=-25,z=-plateThick,rad=1);
            oi("ooebWIMOT",x=-36,y=-15,rotZ=0);
            oi("ooebWIMOT",x=36,y=-15,rotZ=180);
            //wiring hole
            oi("holeM10",x=0,y=-15);
            oi("batteryAAASINGTH",x=0,y=0,z=-plateThick,rad=2);
            oi("batteryAAASINGTH",x=0,y=15,z=-plateThick,rad=2);
            oi("batteryAAASINGTH",x=0,y=30,z=-plateThick,rad=2);
            //oobb holes
            oi("holeM6",y=30,x=-30);
            oi("holeM6",y=15,x=-30);
            oi("holeM6",y=0,x=-30);
            //oi("holeM6",y=-15,x=-30);
            oi("holeM6",y=-30,x=-30);
            oi("holeM6",y=30,x=30);
            oi("holeM6",y=15,x=30);
            oi("holeM6",y=0,x=30);
            //oi("holeM6",y=-15,x=30);
            oi("holeM6",y=-30,x=30);
        }
    }
    //top
    if(extra == "TOP"){
        difference(){
            depth=2;
            oi("oobbBase",width=width,height=height,depth=depth);
            oi("holeM7",x=-15,y=-25);
            oi("holeM7",x=15,y=-25);
            //oi("ooebWIMOT",x=-36,y=-15,rotZ=0);
            //oi("ooebWIMOT",x=36,y=-15,rotZ=180);
            //wiring hole
            oi("holeM10",x=0,y=-15);
            oi("batteryAAASINGTH",x=0,y=0,z=-100);
            oi("batteryAAASINGTH",x=0,y=15,z=-100);
            oi("batteryAAASINGTH",x=0,y=30,z=-100);
            //oobb holes
            oi("holeM6",y=30,x=-30);
            oi("holeM6",y=15,x=-30);
            oi("holeM6",y=0,x=-30);
            //oi("holeM6",y=-15,x=-30);
            oi("holeM6",y=-30,x=-30);
            oi("holeM6",y=30,x=30);
            oi("holeM6",y=15,x=30);
            oi("holeM6",y=0,x=30);
            //oi("holeM6",y=-15,x=30);
            oi("holeM6",y=-30,x=30);
        }
    }    
}

module TEST_OOEBWIMOT_05_05(width,height){
    //bottom
    
    echo("Building TEST-OOEBWIMO-05-05");
        depth=6;
        difference(){
            union(){
            oi("oobbBase",width=width,height=height,depth=depth);
            oi("oobbBase",y=5,width=width,height=height,depth=depth);
            oi("oobbBase",y=-5,width=width,height=height,depth=depth);
            }
            //clearance
            oi("ooebWIMOT",x=-36,y=30,width=width,height=height,depth=depth,ex=0.1,rad=0);
            oi("ooebWIMOT",x=-36,y=15,width=width,height=height,depth=depth,ex=0.2,rad=0);
            oi("ooebWIMOT",x=-36,y=0,width=width,height=height,depth=depth,ex=0.3,rad=0);
            oi("ooebWIMOT",x=-36,y=-15,width=width,height=height,depth=depth,ex=0.4,rad=0);
            oi("ooebWIMOT",x=-36,y=-30,width=width,height=height,depth=depth,ex=0.5,rad=0);
            //height
            stan = 0.2;
            oi("ooebWIMOT",x=36,y=30,width=width,height=height,depth=depth,ex=stan,rad=0.1,rotZ=180);
            oi("ooebWIMOT",x=36,y=15,width=width,height=height,depth=depth,ex=stan,rad=0.2,rotZ=180);
            oi("ooebWIMOT",x=36,y=0,width=width,height=height,depth=depth,ex=stan,rad=0.3,rotZ=180);
            oi("ooebWIMOT",x=36,y=-15,width=width,height=height,depth=depth,ex=stan,rad=0.4,rotZ=180);
            oi("ooebWIMOT",x=36,y=-30,width=width,height=height,depth=depth,ex=stan,rad=0.5,rotZ=180);
        }
    
}