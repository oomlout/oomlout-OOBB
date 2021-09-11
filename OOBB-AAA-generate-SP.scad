module SP_GM1(extr){
    difference(){
        union(){
            oi("cylinder",rad=17/2,depth=extr,z=extr);
        }
        echo(max(10,extr));
        oi("gearMotor1Shaft",x=0,y=0,z=extr,rad=0.175,depth=extr,ex=extr);
    }
    
}
