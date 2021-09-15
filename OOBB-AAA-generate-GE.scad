use <MCAD/involute_gears.scad>



module GE_LI(width,height){
    difference(){
        union(){
            oi("oobbBase",width=width-.2,height=height+0.2,depth=6);
            oi("cylinder",rad=holeM6Minus,x=15,depth=5,z=-6);
            oi("cylinder",rad=holeM6Minus,x=-15,depth=5,z=-6);
        }
    oi("nutM6",depth=0,z=2);
    oi("holeM6",z=0);
    }
    //oi("GE-03",z=-12);
}

module GE_GM1(width){
    extr=21-6;
    difference(){
        union(){
            GE(width=width,depth=6);
            oi("cylinder",rad=17.1/2,depth=extr,z=extr+6);
        
            }
        oi("gearMotor1Shaft",x=0,y=0,z=extr+6,rad=0.175,depth=extr,ex=extr);
        //oi("gearMotor1Shaft",x=0,y=0,rad=0.15,ex=0,rotX=180);
    }
    
}

module GE(width,depth=3){
    numTeeth = width * 8;
    circularPitch = 337.5;
    
    
    //numTeeth*pitch = circumfrence
    //180
    // 45 * 2pi =  282.6
    // 45 * 180 =  8100
    // https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/MCAD#bevel_gear()
    
    difference(){
        linear_extrude(depth){
            gear(number_of_teeth=numTeeth,circular_pitch=circularPitch,bore_diameter=0,flat=true);
        }
        oi("oobbHolesCircle",width=width);
    }
    
    //#oi("cylinder",rad=width*15/2,depth=10,z=6);
    
}