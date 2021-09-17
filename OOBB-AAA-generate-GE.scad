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

module GE_01_606(width,depth=6){
    difference(){
        union(){
            OOBBgear(width=width,depth=depth);    
            oi("cylinder",rad=20/2,depth=7,z=7);
        }
        oi("holeM6");
        oi("bearing606",z=7);
    }
}

module GE(width,depth=3){
        difference(){
            OOBBgear(width=width,depth=depth);
            oi("oobbHolesCircle",width=width);
            oi("bearing606");
        }
        
}


module OOBBgear(width,depth){

    
    /////////////////////// TEST SECTION
    //https://github.com/openscad/MCAD/blob/master/involute_gears.scad
    
    
    pressureAngle=14.5; 
    pressureAngle1=28.5; //default
    pressureAngle2=20; // to try
    pressureAngle3=14.5; // old fashion
    
    clearance=0.5;
    clearance1=1;
    clearance2=5;
    clearance3=10;
    
    backlash=0.75;
    backlash1=0;
    backlash2=1;
    backlash3=2;
    
    involute_facets = 0;
    involute_facets1 = 0;
    involute_facets2 = 1;
    involute_facets3 = 20;
    
    /*
    gear(   number_of_teeth=numTeeth,
            circular_pitch=circularPitch,
            bore_diameter=0,
            pressure_angle=pressureAngle,
            clearance=clearance,
            backlash=backlash,
            involute_facets = involute_facets,
            flat=true);
    translate([0,0,20]){
    gear(   number_of_teeth=numTeeth,
            circular_pitch=circularPitch,
            bore_diameter=0,
            pressure_angle=pressureAngle,
            clearance=clearance,
            backlash=backlash,
            involute_facets = involute_facets,
            flat=true);             
    }
    translate([0,0,40]){
    gear(   number_of_teeth=numTeeth,
            circular_pitch=circularPitch,
            bore_diameter=0,
            pressure_angle=pressureAngle,
            clearance=clearance,
            backlash=backlash,
            involute_facets = involute_facets,
            flat=true);             
    } 
 
    */
 
    //#oi("cylinder",rad=width*15/2,depth=10,z=6);
    
    numTeeth = width * 8;
    circularPitch = 337.5;
    
    
    //////////////////// END TEST SECTION
    
    //numTeeth*pitch = circumfrence
    //180
    // 45 * 2pi =  282.6
    // 45 * 180 =  8100
    // https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/MCAD#bevel_gear()
      
    
        translate([0,0,-depth]){
                    linear_extrude(depth){
                    gear(   number_of_teeth=numTeeth,
                        circular_pitch=circularPitch,
                        bore_diameter=0,
                        pressure_angle=pressureAngle,
                        clearance=clearance,
                        backlash=backlash,
                        involute_facets = involute_facets,
                        flat=true);             
                }
            }
    
    
}