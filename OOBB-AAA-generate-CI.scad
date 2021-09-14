module CI(width,depth=3){
    difference(){
        oi("oobbCircle",width=width,depth=depth,z=depth);
        oi("oobbHolesCircle",width=width);
    }
}




module CI_03_GM1(width){
    extr=21;
    difference(){
        union(){
            CI(width=width,depth=6);
            oi("cylinder",rad=17.1/2,depth=extr,z=extr);
        
            }
        oi("gearMotor1Shaft",x=0,y=0,z=extr,rad=0.175,depth=extr,ex=extr);
        //oi("gearMotor1Shaft",x=0,y=0,rad=0.15,ex=0,rotX=180);
    }
    
}