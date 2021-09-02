    module WH_03_GM1(width){
    extr=15;
    difference(){
        union(){
            OOBB_WH_SOLID(width);
            
            oi("cylinder",rad=17/2,depth=extr,z=extr);
        }
        oi("gearMotor1Shaft",x=0,y=0,z=extr,rad=0.15,depth=15,ex=extr);
        //oi("gearMotor1Shaft",x=0,y=0,rad=0.15,ex=0,rotX=180);
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