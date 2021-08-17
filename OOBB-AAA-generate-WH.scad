if(m=="WH-03-GM1"){
    WH_03_GM1(w);
}
if(m=="WH-03-N20"){
    WH_03_N20(w);
}

module WH_03_GM1(width){
    difference(){
        union(){
            OOBB_WH_SOLID(width);
            extr=15;
            oi("cylinder",rad=17/2,depth=extr,z=extr);
        }
        oi("gearMotor1Shaft",x=0,y=0,rad=0.1);
    }
}


module WH_03_N20(width){
    difference(){
        union(){
            OOBB_WH_SOLID(width);
            extr=15;
            oi("cylinder",rad=10/2,depth=extr,z=extr);
        }
        oi("n20Shaft",x=0,y=0,rad=0.1);
    }
}