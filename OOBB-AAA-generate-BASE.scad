
include <OOBB-AAA-generate-HL.scad>
include <OOBB-AAA-generate-WH.scad>
include <OOBB-AAA-generate-WI.scad>


if(m=="CN-BAS2-05-05"){
    CN_BAS2_05_05(w,h);
}if(m=="TEST-OOEBWIMOT-05-05"){
    TEST_OOEBWIMOT_05_05(w,h);
}
if(m=="TEST-GM1SHAFT-05-05"){
    TEST_GM1SHAFT_05_05(w,h);
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
            oi("holeM10",x=5,y=-15);
            oi("holeM10",x=-5,y=-15);
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
            oi("holeM10",x=5,y=-15);
            oi("holeM10",x=-5,y=-15);
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

module TEST_GM1SHAFT_05_05(width,height){
    //bottom
    
    echo("Building TEST-GM1SHAFT-05-05");
    base=3;
    bump=6;
    difference(){
        union(){
            oi("oobbBase",width=width,height=height,depth=base,z=0);
            oi("cylinder",rad=17/2,x=-20,y=-20,depth=6,z=6);
            oi("cylinder",rad=17/2,x=-20,y=0,depth=6,z=6);
            oi("cylinder",rad=17/2,x=-20,y=20,depth=6,z=6);
            oi("cylinder",rad=17/2,x=20,y=-20,depth=6,z=6);
            oi("cylinder",rad=17/2,x=20,y=0,depth=6,z=6);
            oi("cylinder",rad=17/2,x=20,y=20,depth=6,z=6);
        }            
        oi("gearMotor1Shaft",x=-20,y=-20,z=12,rad=-0.3);
        oi("gearMotor1Shaft",x=-20,y=0,z=12,rad=-0.2);
        oi("gearMotor1Shaft",x=-20,y=20,z=12,rad=-0.1);
        oi("gearMotor1Shaft",x=20,y=-20,z=12,rad=-0);
        oi("gearMotor1Shaft",x=20,y=0,z=12,rad=-0.1);
        oi("gearMotor1Shaft",x=20,y=20,z=12,rad=0.2);
    }
}


