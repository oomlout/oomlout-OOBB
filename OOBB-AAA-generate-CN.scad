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

