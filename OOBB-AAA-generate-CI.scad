module CI_03_GM1(width){
    echo("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW");
    extr=21;
    difference(){
        union(){
            OOBBCI3D(w,6) ;           
            oi("cylinder",rad=17.1/2,depth=extr,z=extr);
        }
        oi("gearMotor1Shaft",x=0,y=0,z=extr,rad=0.175,depth=extr,ex=extr);
        //oi("gearMotor1Shaft",x=0,y=0,rad=0.15,ex=0,rotX=180);
    }
    
}