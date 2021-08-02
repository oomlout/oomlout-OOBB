if(m=="WH-03-GM1"){
    WH_03_GM1(w);
}

module WH_03_GM1(width){
    difference(){
        union(){
            OOBB_WH_SOLID(width);
            extr=15;
            oi("cylinder",rad=17/2,depth=extr,z=extr);
        }
        oi("gearMotor1Shaft",x=0,y=0,rad=-0.1);
    }
}