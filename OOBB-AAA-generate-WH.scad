module WH_03_GM1(width){
    extr=21;
    difference(){
        union(){
            //OOBB_WH_SOLID(width);
            WH(width=3.33,depth=9); //to fit o-rings I have
            oi("cylinder",rad=17.1/2,depth=extr,z=extr);
        }
        oi("gearMotor1Shaft",x=0,y=0,z=extr,rad=0.175,depth=extr,ex=extr);
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

module WH(width,depth){
    oringCrossSection = 5.33/2;
    oringGrooveDepth = 2;
    wheelThickness = 9;
    
    extrudeRadius = (((width * 15 - 3) + oringCrossSection*2)-oringGrooveDepth*2)  / 2;
    
    difference(){
        CI(width=width,depth=depth);
        rotate_extrude(convexity = 10){
            translate([extrudeRadius, wheelThickness/2, 0]){
            circle(r = oringCrossSection);
            }
        }
        
    }
    
}