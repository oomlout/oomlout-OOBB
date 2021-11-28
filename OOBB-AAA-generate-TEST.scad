module CA_03_01(){
    depth = 3;
    dia=25;
    hei= 25;
    difference(){
        union(){
            oi("oobbBase",width=03,height=01,depth=depth,z=depth);

            oi("cylinder",rad=dia/2,depth=hei-hei/2,z=hei-hei/2);
            oi("sphere",rad=dia/2,z=hei/2);
            
        }
        oi("holeM6",x=gv("OS1"),y=0);
        oi("holeM6",x=-gv("OS1"),y=0);
        oi("holeM12",x=-gv("OS1"),y=0,depth=hei,z=3+hei);
        oi("holeM12",x=gv("OS1"),y=0,depth=hei,z=3+hei);
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

module TEST_N20SHAFT_05_05(width,height){
    //bottom
    
    echo("Building TEST-GM1SHAFT-05-05");
    base=3;
    bump=6;
    difference(){
        union(){
            oi("oobbBase",width=width,height=height,depth=base,z=0);
            oi("cylinder",rad=10/2,x=-20,y=-20,depth=6,z=6);
            oi("cylinder",rad=10/2,x=-20,y=0,depth=6,z=6);
            oi("cylinder",rad=10/2,x=-20,y=20,depth=6,z=6);
            oi("cylinder",rad=10/2,x=20,y=-20,depth=6,z=6);
            oi("cylinder",rad=10/2,x=20,y=0,depth=6,z=6);
            oi("cylinder",rad=10/2,x=20,y=20,depth=6,z=6);
        }            
        oi("n20Shaft",x=-20,y=-20,z=12,rad=0);
        oi("n20Shaft",x=-20,y=0,z=12,rad=0.1);
        oi("n20Shaft",x=-20,y=20,z=12,rad=0.2);
        oi("n20Shaft",x=20,y=-20,z=12,rad=0.3);
        oi("n20Shaft",x=20,y=0,z=12,rad=-0.4);
        oi("n20Shaft",x=20,y=20,z=12,rad=0.5);
    }
}


