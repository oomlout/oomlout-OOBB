module BP_6806_04_04(){
     OOWidth = 4;
    OOHeight = 4;    
    OOCentre = 2.5;
    bearingHeight = 7;
    ooThickness=12;
    //OUTSIDE
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,12);
        //OOBB Holes
        OOBBHole3D(1,1);
        //OOBBSlotTall3D(1,1);
        //OOBBSlotWide3D(1,1);
        OOBBHole3D(1,OOHeight);
        
        OOBBHole3D(OOHeight,1);
        //OOBBSlotTall3D(3,1);
        
        OOBBHole3D(OOWidth,OOHeight);
        
        
        
        OOBBInsertItemCoord("Bearing6806",OOCentre,OOCentre,ooZ=ooThickness/2+(bearingHeight/2));
        
        
    }
    //INSIDE
    //inside
    translate([OOCentre*OOBBSpacing,OOCentre*OOBBSpacing,0]){
       difference(){
           union(){
               linear_extrude(ooThickness){
                   circle(OOBBBearing6806Inside);   
               } 
               translate([0,0,0]){
                   linear_extrude((ooThickness-bearingHeight)/2){
                       circle(OOBBBearing6806LittleInside);   
                   } 
               }
               translate([0,0,ooThickness-((ooThickness-bearingHeight)/2)]){
                   linear_extrude((ooThickness-bearingHeight)/2){
                       circle(OOBBBearing6806LittleInside);   
                   } 
               }
           }
        OOBBInsertItemCoord("OOBBHole",0.5,0.5);
        OOBBInsertItemCoord("OOBBHole",0.5,-0.5);
        OOBBInsertItemCoord("OOBBHole",-0.5,0.5);
        OOBBInsertItemCoord("OOBBHole",-0.5,-0.5);           
           
           
       }
    }
    

}

module BP_6810_05_05(){
     OOWidth = 5;
    OOHeight = 5;    
    bearingHeight = 7;
    ooThickness=12;
    //OUTSIDE
    difference(){
        OOBBPLOutline3D(OOWidth,OOHeight,12);
        //OOBB Holes
        OOBBHole3D(1,1);
        //OOBBSlotTall3D(1,1);
        //OOBBSlotWide3D(1,1);
        OOBBHole3D(1,5);
        
        OOBBHole3D(5,1);
        //OOBBSlotTall3D(3,1);
        
        OOBBHole3D(5,5);
        
        
        
        OOBBInsertItemCoord("Bearing6810",3,3,ooZ=ooThickness/2+(bearingHeight/2));
        
        
    }
    //INSIDE
    //inside
    translate([3*OOBBSpacing,3*OOBBSpacing,0]){
       difference(){
           union(){
               linear_extrude(ooThickness){
                   circle(OOBBBearing6810Inside);   
               } 
               translate([0,0,0]){
                   linear_extrude((ooThickness-bearingHeight)/2){
                       circle(OOBBBearing6810LittleInside);   
                   } 
               }
               translate([0,0,ooThickness-((ooThickness-bearingHeight)/2)]){
                   linear_extrude((ooThickness-bearingHeight)/2){
                       circle(OOBBBearing6810LittleInside);   
                   } 
               }
           }
        OOBBInsertItemCoord("OOBBHole",0,0);
        OOBBInsertItemCoord("OOBBHole",0,-1);
        OOBBInsertItemCoord("OOBBHole",0,1);
        OOBBInsertItemCoord("OOBBHole",1,0);
        OOBBInsertItemCoord("OOBBHole",-1,0);
        rotate([0,0,45]){
            OOBBInsertItemCoord("OOBBHole",0,0);
            OOBBInsertItemCoord("OOBBHole",0,-1);
            OOBBInsertItemCoord("OOBBHole",0,1);
            OOBBInsertItemCoord("OOBBHole",1,0);
            OOBBInsertItemCoord("OOBBHole",-1,0);
        }
       }
    }
    

}