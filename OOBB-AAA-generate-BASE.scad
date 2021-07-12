

if(m=="HL-N20-03-03"){
    HL_N20_03_03(w,h);
}if(m=="HL-GM1-03-03"){
    HL_GM1_03_03(w,h);
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
    depth=15;
    echo("Building HL-GM1-03-03");
    difference(){
        union(){
            oi("oobbBase",width=width,height=height,depth=depth,z=3);
            oi("oobbBase",x=-3,width=width,height=height,depth=depth,z=3);
        }
        
        #oi("gearMotor1",ex=3);
        //oobb holes
        //oi("holeM6",x=15,y=0);
        oi("holeM6",x=15,y=15);
        oi("holeM6",x=15,y=-15);
        //oi("holeM6",x=-15,y=0);
        oi("holeM6",x=-15,y=15);
        oi("holeM6",x=-15,y=-15);
        oi("holeM6",x=0,y=15);
        oi("holeM6",x=0,y=-15);
    }
}