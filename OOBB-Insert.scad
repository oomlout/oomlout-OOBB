
//#########################################################################################
//#########################################################################################
//#########          INSERT ROUTINES


module OOBBinsert(item,x=0,y=0,z=0,height=0,width=0,length=0,rot=0,rotY=0,rotX=0,ex=0){
    //OOBBInsertItemMMRotate(item,ooX,ooY,ooZ=0,height=0,rot=0,ex=0)
    OOBBInsertItemMMRotate(item,ooX=x,ooY=y,ooZ=z,height=height,rot=rot,rotX=rotX,rotY=rotY,ex=ex,length=length);
}



/////////////////////////////////////////// OLD VERSIONS



module OOBBInsertItemCoord(item,ooX,ooY,ooZ=0,height=0,ex=0){
    OOBBInsertItemMM(item,ooX*OOBBSpacing,ooY*OOBBSpacing,ooZ=ooZ,height=height,ex=ex);    
}

module OOBBInsertItemCoord180(item,ooX,ooY,ooZ=0,height=0,ex=0){
    translate([ooX*OOBBSpacing,ooY*OOBBSpacing,0]){
        rotate([0,0,180]){    
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height,ex=ex);    
        }
    }
}



module OOBBInsertItemCoord90(item,ooX,ooY,ooZ=0,height=0,ex=0){
    translate([ooX*OOBBSpacing,ooY*OOBBSpacing,0]){
        rotate([0,0,90]){    
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height,ex=ex);    
        }
    }
}


module OOBBInsertItemCoordRotate(item,ooX,ooY,ooZ=0,height=0,rot=0,ex=0){
    translate([ooX*OOBBSpacing,ooY*OOBBSpacing,0]){
        rotate([0,0,rot]){    
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height,ex=ex);    
        }
    }
}



module OOBBInsertItemMM180(item,ooX,ooY,ooZ=0,height=0,ex=0){
    translate([ooX,ooY,0]){
        rotate([0,0,180]){
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height,ex=ex);    
        }
    }
}

module OOBBInsertItemMM90(item,ooX,ooY,ooZ=0,height=0,ex=0){
    translate([ooX,ooY,0]){
        rotate([0,0,90]){
            OOBBInsertItemCoord(item,0,0,ooZ=ooZ,height=height,ex=ex);    
        }
    }
}

module OOBBInsertItemMMRotate(item,ooX,ooY,ooZ=0,height=0,rot=0,ex=0,length=0,rotX=0,rotY=0){
    translate([ooX,ooY,0]){
        rotate([rotX,rotY,rot]){
            OOBBInsertItemMM(item,0,0,ooZ=ooZ,height=height,ex=ex,length=length);
            }
    }
}

module OOBBInsertItemMM(item,ooX,ooY,ooZ=0,height=0,ex=0,length=0){
    translate([ooX,ooY,ooZ]){
        if(item=="OOBBHole"){
            height=100;    
            z=height-10;
            rad=OOBBHole;
            OOBBHole3DRadiusComplete(0,0,rad,height,z);
        }
        if(item=="OOBBHoleSlot"){
            OOBBinsert("OOBBHole");
            OOBBinsert("OOBBHole",x=-1,y=-1);
            OOBBinsert("OOBBHole",x=-2,y=-2);
            OOBBinsert("OOBBHole",x=-3,y=-3);
            OOBBinsert("OOBBHole",x=-4,y=-4);
            OOBBinsert("OOBBHole",x=-5,y=-5);
        }
        if(item=="OOBBHole2D"){
            height=50;    
            z=height-10;
            rad=OOBBHole;
            circle(rad);
        }
        if(item=="M2Rivet"){
            height=50;    
            z=height-10;
            rad=OOBBm2Hole;
            rad2=5.2/2;
            OOBBHole3DRadiusComplete(0,0,rad,height,0);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M2RivetUpsideDown"){
            h=50;    
            z=h-10-height;
            rad=OOBBm2Hole;
            rad2=5.2/2;
            OOBBHole3DRadiusComplete(0,0,rad,h,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,0);
        }
        if(item=="M27Rivet"){
            height=50;    
            z=height-10;
            rad=OOBBm27Hole;
            rad2=5/2;
            OOBBHole3DRadiusComplete(0,0,rad,height,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,0);
        }
        if(item=="M27RivetUpsideDown"){
            height=50;    
            z=height-10;
            rad=OOBBm27Hole;
            rad2=OOBBm27RivetClearance;
            OOBBHole3DRadiusComplete(0,0,rad,height,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M3Rivet"){
            height=50;    
            z=height-10;
            rad=OOBBm3Hole;
            rad2=(7+0.2)/2;
            OOBBHole3DRadiusComplete(0,0,rad,height,0);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M3RivetUpsideDown"){
            h=50;    
            z=h-10-height;
            rad=OOBBm3Hole;
            rad2=(7+0.2)/2;
            OOBBHole3DRadiusComplete(0,0,rad,h,z);
            OOBBHole3DRadiusComplete(0,0,rad2,1.5,1.5);
        }
        if(item=="M3Countersink"){
            top = OOBBm3CounterSinkTopHole;
            bot = OOBBm3Hole;
            height = OOBBm3CounterSinkDepth;
            OOBBCountersink3DComplete(0,0,top,bot,height,height);
        }
        if(item=="M3CountersinkUpsideDown"){
            top = OOBBm3CounterSinkTopHole;
            bot = OOBBm3Hole;
            height = OOBBm3CounterSinkDepth;
            OOBBCountersink3DComplete(0,0,bot,top,height,height);
        }
        if(item=="M3SocketHead"){
            top = OOBBm3SocketHeadHole;
            bot = OOBBm3SocketHeadHole;
            h = OOBBm3SocketHeadDepth;
            translate([0,0,0]){
                OOBBCountersink3DComplete(0,0,top,bot,h,height);
            }
        }
        if(item=="M3SocketHeadFull"){
            OOBBinsert("M3SocketHead",z=OOBBm3SocketHeadDepth);
            OOBBinsert("M3HoleFull",z=0,height=height,length=length);
        }
        if(item=="M3SocketHeadFullNut"){
            OOBBinsert("M3SocketHeadFull",0,0,0,length=height);
            OOBBinsert("M3NutCaptiveSingle",0,0,z=-height+OOBBNutM3Height);
            
        }
        if(item=="M3SocketHeadUpsideDown"){
            top = OOBBm3SocketHeadHole;
            bot = OOBBm3SocketHeadHole;
            height = OOBBm3SocketHeadDepth;
            OOBBCountersink3DComplete(0,0,top,bot,height,height);
        }
        if(item=="M3Hole"){
               height=50;    
               z=height-10;
               rad=OOBBm3Hole;
               OOBBHole3DRadiusSimple(0,0,rad,height,z);

        }
        if(item=="M3HoleFull"){
               rad=OOBBm3Hole;
               OOBBHole3DRadiusSimple(0,0,rad,length,ooZ);
        }
        if(item=="M2Hole"){
               height=50;    
               z=height-10;
               rad=OOBBm2Hole;
               OOBBHole3DRadiusComplete(0,0,rad,height,z);

        }
        if(item=="M3HoleExtra"){    
               z=ooZ;
               rad=OOBBm3Hole;
               OOBBHole3DRadiusComplete(0,0,rad,height,0);

        }
        if(item=="M3HoleScrewTop"){
               height=50;    
               z=height-10;
               rad=OOBBm3SocketHeadHole;
               OOBBHole3DRadiusComplete(0,0,rad,height,z);

        }
        
        if(item=="M3Slot"){
               height=50;    
               z=height-10;
               rad=OOBBm3Hole;
               slotw = 6;
               holeRadius = OOBBm3Hole;
               //slot
            translate([0,0,-10]){
                linear_extrude(height){
                    translate([-slotw/2+holeRadius,0,0]){
                        
                        translate([0,0,0]){
                            circle(holeRadius);
                        }
                        translate([slotw-holeRadius*2,0,0]){
                            circle(holeRadius);
                        }
                        translate([slotw/2-holeRadius,0,0]){
                            square([slotw-holeRadius*2,holeRadius*2],true);
                        }
                    }
                }
            }
        }
        if(item=="M3NutCaptive"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM3Width/2,height,0);
        }
        if(item=="M3NutClearance"){  ///clearnce for an m3 nut
            translate([0,0,-height]){
                linear_extrude(height){
                    circle(6.2/2);
                }
            }
        }
        if(item=="M3NutClearanceSlide"){ //add an extra half mm
            OOBBInsertItemMM("M3NutClearance",0,0,ooZ=0,height=5);   
            OOBBInsertItemMM("M3NutClearance",0.5,0,ooZ=0,height=5);   
            OOBBInsertItemMM("M3NutClearance",-0.5,0,ooZ=0,height=5);   
 
        }
        if(item=="M3NutCaptiveSideInsert"){ 
           OOBBPolygon3DComplete(6,0,0,OOBBNutM3Width/2,height,0);
            OOBBInsertItemMM("M3NutCaptive",0,0,ooZ=0,height=height);   
            translate([0,0,-height]){
                linear_extrude(height){
                    translate([0,10,0]){
                        square([OOBBNutM3Width,20],true);
                    }
                }
            } 
        }
        if(item=="M3NutCaptiveSingle"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM3Width/2,OOBBNutM3Height,0);
        }
        if(item=="M6NutCaptiveSingle"){
           OOBBPolygon3DComplete(6,0,0,OOBBNutM6Width/2,OOBBNutM6Height,0);
        }
        if(item=="M6NutCaptiveSingleBig"){
           OOBBPolygon3DComplete(6,0,0,(OOBBNutM6Width+0.5)/2,OOBBNutM6Height+0.5,0);
        }
        if(item=="M6BoltClearance"){
                OOBBHole3DRadiusComplete(0,0,13/2,height,0);
        }
        if(item=="M6BoltClearanceCorner"){
                union(){
                OOBBHole3DRadiusSimple(0,0,13/2,height,0);
                translate([-0,-13/4,-height]){
                    linear_extrude(height){
                        square([13,13/2],true);
                    }
                }  
                translate([-13/4,0,-height]){
                    linear_extrude(height){
                        square([13/2,13],true);
                    }
                }
            }
        }
        if(item=="M6BoltClearanceSide"){
                union(){
                OOBBHole3DRadiusSimple(0,0,13/2,height,0);
                translate([-0,-13/4,-height]){
                    linear_extrude(height){
                        square([13,13/2],true);
                    }
                }  
                translate([-13/4,0,-height]){
                    linear_extrude(height){
                        //square([13/2,13],true);
                    }
                }
            }
        }
        if(item=="M6BoltClearanceMiddle"){
                union(){
                OOBBHole3DRadiusSimple(0,0,13/2,height,0);
                translate([-0,-13/4,-height]){
                    linear_extrude(height){
                        square([13,13/2],true);
                    }
                }  
                translate([-13/4,0,-height]){
                    linear_extrude(height){
                        square([13/2,13],true);
                    }
                }
            }
        }  
        if(item=="Bearing606"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing606Big,6,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing606Little,100,50);
        }
        if(item=="Bearing6806"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806Outside,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806Little,100,50);
        }
        if(item=="Bearing6808"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808Outside,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808Little,100,50);
        }
        if(item=="Bearing6810"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810Outside,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810Little,100,50);
        }
        if(item=="Bearing6806Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806OutsideHold,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6806Little,100,50);
        }
        if(item=="Bearing6808Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808OutsideHold,7,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6808Little,100,50);
        }
        if(item=="Bearing6810Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810OutsideHold,7,0);
            echo("6810 Hold Radius");
            echo(OOBBBearing6810OutsideHold * 2);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6810Little,100,50);
        }
        if(item=="Bearing6704"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Outside,4,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        if(item=="Bearing6704Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704OutsideHold,4,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        if(item=="Bearing6704ClearanceTube"){
                OOBBHole3DRadiusSimple(0,0,OOBBBearing6704OutsideHold+1,height,0);
        }
        
        if(item=="Bearing6704Little"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6704Little,100,50);
        }
        if(item=="Bearing6803Hold"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6803OutsideHold,5,0);
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6803Little,100,50);
        }
        if(item=="Bearing6803Little"){
                OOBBHole3DRadiusComplete(0,0,OOBBBearing6803Little,100,50);
        }
        
        
        if(item=="BearingJoiner0303"){
            OOBBInsertItemCoord("M3Hole",1.5,1);
            OOBBInsertItemCoord("M3CountersinkUpsideDown",1.5,1);
            OOBBInsertItemCoord("M3Hole",2.5,3);
            OOBBInsertItemCoord("M3CountersinkUpsideDown",2.5,3);
            
            OOBBInsertItemCoord("M3Hole",1,2.5);           
            OOBBInsertItemCoord("M3NutCaptive",1,2.5,2.4,2.4);
            OOBBInsertItemCoord("M3Hole",3,1.5);
            OOBBInsertItemCoord("M3NutCaptive",3,1.5,2.4,2.4);
        }
        if(item=="CouplerFlangeM5"){
            rotate([0,0,45]){
                OOBBInsertItemMM("M3Countersink",0,8,-1.75);
                OOBBInsertItemMM("M3Hole",0,8);
                OOBBInsertItemMM("M3Countersink",0,-8,-1.75);
                OOBBInsertItemMM("M3Hole",0,-8);
                OOBBInsertItemMM("M3Countersink",8,0,-1.75);
                OOBBInsertItemMM("M3Hole",8,0);
                OOBBInsertItemMM("M3Countersink",-8,0,-1.75);
                OOBBInsertItemMM("M3Hole",-8,0);
                OOBBHole3D(0,0);
            }
        }
        
        if(item=="NEMA17"){
            OOBBInsertItemMM("M3Hole",31/2,31/2);
            OOBBInsertItemMM("M3SocketHead",31/2,31/2,ooZ=0);
            OOBBInsertItemMM("M3Hole",-31/2,31/2);
            OOBBInsertItemMM("M3SocketHead",-31/2,31/2,ooZ=0);
            OOBBInsertItemMM("M3Hole",31/2,-31/2);
            OOBBInsertItemMM("M3SocketHead",31/2,-31/2,ooZ=0);
            OOBBInsertItemMM("M3Hole",-31/2,-31/2);
            OOBBInsertItemMM("M3SocketHead",-31/2,-31/2,ooZ=0);  
            
            /*
            OOBBCountersinkM33DComplete(31/2,31/2,z+10);
            OOBBHole3DRadius(31/2,31/2,OOBBm3Hole);
            OOBBCountersinkM33DComplete(-31/2,-31/2,z+10);
            OOBBHole3DRadius(-31/2,-31/2,OOBBm3Hole);
            OOBBCountersinkM33DComplete(31/2,-31/2,z+10);
            OOBBHole3DRadius(31/2,-31/2,OOBBm3Hole);
            OOBBCountersinkM33DComplete(-31/2,31/2,z+10);
            OOBBHole3DRadius(-31/2,31/2,OOBBm3Hole);
            */
        }
        if(item=="ServoWireClearance"){
           union(){ 
            translate([0,0,-1.5]){
                   linear_extrude(1.5){
                        square([15,4],true);
                   }
               }
            translate([1,0,-13]){
                linear_extrude(13){
                        square([4,4],true);
                   }
                }
           }
        }
        if(item=="ServoMicroHole"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            wid=36;
            hei=13.75;
            translate([-4,0,height]){
                OOBBCube3DComplete(0,0,wid,hei,height,0);
            }
        }if(item=="ServoHole"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            wid=56 + 2;
            hei=20+2;
            translate([11,0,height]){
                OOBBCube3DComplete(0,0,wid,hei,height,0);
            }
        }
        if(item=="ServoMicroHornHole"){
               //height=50;    
               //z=height-10;
               rad=7.4/2;
               OOBBHole3DRadiusComplete(0,0,rad,height,height);

        }
        if(item=="ServoMicroHornCatch"){
            translate([0,0,-1.5]){
                   extension = 0;
                    rad=7.4/2; 
                   linear_extrude(1.5){
                      square([15,5.25+extension],true);
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }translate([-7.5-(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
        }
        if(item=="ServoMicroHornCatchSingle"){
            translate([0,0,-1.5]){
                   extension = 0;
                   rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);

                    
                   linear_extrude(1.5){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }

            }
        }
        if(item=="ServoMicroHornCatchSingleContinuous"){
        translate([0,0,-4]){
        
              union(){
                
                rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,2]){
                   rad=7.4/2; 
                   linear_extrude(2){
                      
                      translate([4/2,0,0]){
                        square([4,7.1+extension],true);
                      }
                      
                      translate([5.5/2,0,0]){
                        square([8.5,6.1+extension],true);
                      }
                      
                      translate([8.5+(9/2),0,0]){
                        square([14,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
        }
    }
        if(item=="ServoMicroHornCatchSingleContinuousBottomInsertion"){
        translate([0,0,-4]){
              union(){
                extension = 0;
                rad=7.4/2;
                height=2;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,0]){
                   rad=7.4/2; 
                   linear_extrude(4.5){
                      
                      translate([4/2,0,0]){
                        square([4,7.1+extension],true);
                      }
                      
                      translate([5.5/2,0,0]){
                        square([8.5,6.1+extension],true);
                      }
                      
                      translate([8.5+(9/2),0,0]){
                        square([14,4.75+extension],true);
                      }
                      circle(rad);
                   }
                }
            }
               slotw = 3.5;
                            holeRadius = 0.75;
                            he=6;
                            //slot
                            translate([7/2+5/2,0,4]){ //move to middle of remaining piece
                                translate([-slotw/2+holeRadius,0,0]){
                                    linear_extrude(he){
                                        translate([0,0,0]){
                                            circle(holeRadius);
                                        }
                                        translate([slotw-holeRadius*2,0,0]){
                                            circle(holeRadius);
                                        }
                                        translate([slotw/2-holeRadius,0,0]){
                                            square([slotw-holeRadius*2,holeRadius*2],true);
                                        }
                                    }
                                }
                            }
        }
    }    if(item=="ServoFullHornCatchBottomInsertion"){
        translate([0,0,-5.75]){
              union(){
                extension = 0;
                rad=13.4/2; 
                height=2;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);
                translate([0,0,0]){
                   
                   linear_extrude(5.75){
                      union(){
                          translate([0,0,0]){
                           square([8.5,14+extension],true);
                          }
                          
                          translate([0,0,0]){
                           square([25,7.75+extension],true);
                          }
                          
                          circle(rad);
                      }
                   }
                }
            }
            
               slotw = 5.5;
                            holeRadius = 0.75;
                            he=6;
                            //slot
                            translate([7/2+5/2,0,5.75]){ //move to middle of remaining piece
                                translate([-slotw/2+holeRadius,0,0]){
                                    linear_extrude(he){
                                        translate([0,0,0]){
                                        circle(holeRadius);
                                        }
                                        translate([slotw-holeRadius*2,0,0]){
                                            circle(holeRadius);
                                        }
                                        translate([slotw/2-holeRadius,0,0]){
                                            square([slotw-holeRadius*2,holeRadius*2],true);
                                        }
                                    }
                                }
                            }
                            
                            //slot
                            translate([-(7/2+5/2),0,5.75]){ //move to middle of remaining piece
                                translate([-slotw/2+holeRadius,0,0]){
                                    linear_extrude(he){
                                        translate([0,0,0]){
                                            circle(holeRadius);
                                        }
                                        translate([slotw-holeRadius*2,0,0]){
                                            circle(holeRadius);
                                        }
                                        translate([slotw/2-holeRadius,0,0]){
                                            square([slotw-holeRadius*2,holeRadius*2],true);
                                        }
                                    }
                                }
                            }
            
        }
    }
        if(item=="ServoMicroHornCatchSingleBottomInsertion"){
            translate([0,0,-4]){
                   extension = 0;
                   rad=7.4/2;
                height=2.5;
                OOBBHole3DRadiusComplete(0,0,rad,height,height);

                    
                   linear_extrude(4){
                      translate([7.5/2,0,0]){
                        square([7.5,5.25+extension],true);
                      }
                      translate([7.5+(9/2),0,0]){
                        square([9,4.75+extension],true);
                      }
                      circle(rad);
                   }
                   
                   //SLOT
                            slotw = 3.5;
                            holeRadius = 0.75;
                            he=6;
                            //slot
                            translate([7/2+5/2,0,4]){ //move to middle of remaining piece
                                translate([-slotw/2+holeRadius,0,0]){
                                    linear_extrude(he){
                                        translate([0,0,0]){
                                            circle(holeRadius);
                                        }
                                        translate([slotw-holeRadius*2,0,0]){
                                            circle(holeRadius);
                                        }
                                        translate([slotw/2-holeRadius,0,0]){
                                            square([slotw-holeRadius*2,holeRadius*2],true);
                                        }
                                    }
                                }
                            }

            }
        }
        if(item=="ServoMicroMount"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            height=50;    
            z=height+10;
            
            translate([0,0,-10]){
                linear_extrude(height){
                    translate([-5.35,0,height]){
                        union(){
                            
                            //square
                            holeWidth = 25;
                            holeHeight = 13.75;
                            slotw = 31;
                            holeRadius = 0.75;
                            square([holeWidth,holeHeight],true);
                            
                            //slot
                            translate([-slotw/2+holeRadius,0,0]){
                                
                                translate([0,0,0]){
                                    circle(holeRadius);
                                }
                                translate([slotw-holeRadius*2,0,0]){
                                    circle(holeRadius);
                                }
                                translate([slotw/2-holeRadius,0,0]){
                                    square([slotw-holeRadius*2,holeRadius*2],true);
                                }
                            }
                        }
                    }
                }
            }
        }
        if(item=="B1X"){
            translate([0,0,-20.5]){
                eC=1;
                //OOBBCube3DComplete(x,y,wid,hei,height,z)
                OOBBCube3DComplete(0,0,100+eC,30+eC,1.5+eC,1.5+eC);//pcb
                OOBBCube3DComplete(4,0,78+eC,21+eC,18+eC,18+eC+1.5);//battery
                OOBBCube3DComplete(-37.5,13.5,9+eC,5+eC,3+eC,1.5+3+eC+eC);//switch
                OOBBCube3DComplete(-45.5,0,23+eC,15+eC,9+1.5+eC,9+eC+eC);//USB
                //solder tabs
                OOBBCube3DComplete(-37,0,7+eC,7+eC,2,1.5+2+eC);
                OOBBCube3DComplete(46.5,0,7+eC,7+eC,2,1.5+2+eC);
                
                
                
                //six header clearances
                xxx1 = -16.451;
                xxx2 = 5.46;
                xxx3 = 27.46;
                yyy1 = 12.5;
                yyy2 = -12.5;
                zzz1 = 1.5+eC+2.54;
                OOBBCube3DComplete(xxx1,yyy1,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx2,yyy1,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx3,yyy1,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx1,yyy2,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx2,yyy2,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                OOBBCube3DComplete(xxx3,yyy2,2.54*2+eC,2.54+eC,2.54+eC,zzz1);
                
                xx1 = -47.5;
                xx2 = 47.5;
                yy1 = 12.5;
                yy2 = -12.5;
                shH = 18+4.5; //needs adjusting for various thicknesses
                OOBBInsertItemMM("M3Hole",xx1,yy1);
                OOBBInsertItemMM("M3SocketHead",xx1,yy1,height=shH);
                OOBBInsertItemMM("M3Hole",xx1,yy2);
                OOBBInsertItemMM("M3SocketHead",xx1,yy2,height=shH);
                OOBBInsertItemMM("M3Hole",xx2,yy1);
                OOBBInsertItemMM("M3SocketHead",xx2,yy1,height=shH);
                OOBBInsertItemMM("M3Hole",xx2,yy2);
                OOBBInsertItemMM("M3SocketHead",xx2,yy2,height=shH);
               
              //bottom side components
                OOBBCube3DComplete(0,0,88,26,3+eC,0);//mainCavity
                OOBBCube3DComplete(40,11.5,9,7,2.5+eC,0);//usb micro
                OOBBCube3DComplete(-46,0,8,16,5+eC,0);//usbBig
                OOBBCube3DComplete(40.5,-11.5,9,5,2+eC,0);//littleChip
              //captive nuts
                OOBBInsertItemMM("M3NutCaptiveSingle",xx1,yy1,ooZ=-6.5+OOBBNutM3Height);
    OOBBInsertItemMM("M3NutCaptiveSingle",xx1,yy2,ooZ=-6.5+OOBBNutM3Height);
    OOBBInsertItemMM("M3NutCaptiveSingle",xx2,yy1,ooZ=-6.5+OOBBNutM3Height);
    OOBBInsertItemMM("M3NutCaptiveSingle",xx2,yy2,ooZ=-6.5+OOBBNutM3Height);
       
                
                
            }
            
        }
        if(item=="ServoFullMount"){
           //OOBBCube3DComplete(x,y,wid,hei,height,z)
            height=50;    
            z=height+10;
            x1 = 14;
            y1 = 5;
            x2 = -36;
            y2 = -5;
            
            translate([0,0,-10]){
                difference(){
                    union(){
                        
                        linear_extrude(height){
                            translate([-11,0,height]){
                                    //square
                                    holeWidth = 42 + 0.5;
                                    holeHeight = 21 + 0.5;
                                    holeRadius = 0.75;
                                    square([holeWidth,holeHeight],true);
                                    //holes
                                    x1 = 14;
                                    y1 = 5;
                                    x2 = -36;
                                    y2 = -5;
                            }                    
                        }
                        translate([-11,0,10+4]){
                            linear_extrude(2.5){
                                    //square
                                    holeWidth = 56 + 2;
                                    holeHeight = 21 + 2;
                                    holeRadius = 0.75;
                                    square([holeWidth,holeHeight],true);
                                    //holes
                                    x1 = 14;
                                    y1 = 5;
                                    x2 = -36;
                                    y2 = -5;
                            }                    
                        }
                    }
                
                h2= 4 + 2.5;
                //translate([0,0,10+h2]){
                //    OOBBInsertItemMM("M45Sock",x1,y1,height=h2);
                //    OOBBInsertItemMM("M45Sock",x1,y2,height=h2);
                //    OOBBInsertItemMM("M45Sock",x2,y1,height=h2);
                //    OOBBInsertItemMM("M45Sock",x2,y2,height=h2);
                //}
            }
            }
        
            
            OOBBInsertItemMM("M3Hole",x1,y1);
            OOBBInsertItemMM("M3SocketHead",x1,y1,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x1,y1,OOBBNutM3Height);
            OOBBInsertItemMM("M3Hole",x1,y2);
            OOBBInsertItemMM("M3SocketHead",x1,y2,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x1,y2,OOBBNutM3Height);
            OOBBInsertItemMM("M3Hole",x2,y1);
            OOBBInsertItemMM("M3SocketHead",x2,y1,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x2,y1,OOBBNutM3Height);
            OOBBInsertItemMM("M3Hole",x2,y2);
            OOBBInsertItemMM("M3SocketHead",x2,y2,height=6.5+OOBBm3SocketHeadDepth);
            OOBBInsertItemMM("M3NutCaptiveSingle",x2,y2,OOBBNutM3Height);
        }if(item=="ServoFullMountTop"){
            x1 = 14;
            y1 = 5;
            x2 = -36;
            y2 = -5;
            
            translate([0,0,3]){
                difference(){
                    union(){
                        servoHeight = 30;
                        //servoHole
                        translate([0,0,-servoHeight]){
                            linear_extrude(height+servoHeight){
                                translate([-11,0,0]){
                                        //square
                                        holeWidth = 42 + 2;
                                        holeHeight = 21 + 0.5;
                                        holeRadius = 0.75;
                                        square([holeWidth,holeHeight],true);
                                        //holes
                                        x1 = 14;
                                        y1 = 5;
                                        x2 = -36;
                                        y2 = -5;
                                }                    
                            }
                        }
                        
                        //servoBracketHolw
                        translate([-11,0,-3]){
                            linear_extrude(3+height){
                                    //square
                                    holeWidth = 56 + 2;
                                    holeHeight = 21 + 1;
                                    holeRadius = 0.75;
                                    square([holeWidth,holeHeight],true);
                                    //holes
                                    x1 = 14;
                                    y1 = 5;
                                    x2 = -36;
                                    y2 = -5;
                            }                    
                        }
                        
                    }
                }
            }
            screwLength=12;
            OOBBinsert("M3SocketHeadFullNut",x1,y1,height=6.5+OOBBm3SocketHeadDepth,length=screwLength);
            OOBBinsert("M3SocketHeadFullNut",x2,y1,height=6.5+OOBBm3SocketHeadDepth,length=screwLength);
            OOBBinsert("M3SocketHeadFullNut",x1,y2,height=6.5+OOBBm3SocketHeadDepth,length=screwLength);
            OOBBinsert("M3SocketHeadFullNut",x2,y2,height=6.5+OOBBm3SocketHeadDepth,length=screwLength);
        }
      if(item=="M45Sock"){
          cylinder(height,4.4/2,4.4/2,true);
      }  
      if(item=="SetScrewKeyway"){
          rotate([90,0,0]){
              height=50;    
              z=50;
              rad=5/2;
              OOBBHole3DRadiusComplete(0,0,rad,height,z);
          }
      }
      if(item=="PiCameraMount"){
          OOBBInsertItemMM("M2RivetUpsideDown",-10.5,10,0);
          OOBBInsertItemMM("M2RivetUpsideDown",-10.5,-2.5,0);
          OOBBInsertItemMM("M2RivetUpsideDown",10.5,10,0);
          OOBBInsertItemMM("M2RivetUpsideDown",10.5,-2.5,0);
          translate([0,2,-10]){
              linear_extrude(20){
                  square([12,25],true);
              }
          }
          translate([7,8,-ooZ]){
              linear_extrude(1.5){
                  square([5,4],true);
              }
          }
          translate([-10,3.5,-ooZ]){
              linear_extrude(1.5){
                  square([3,8],true);
              }
          }
      }
      if(item=="PiZeroMount"){
          OOBBInsertItemMM("M27Rivet",-29,11.5,0);
          OOBBInsertItemMM("M27Rivet",-29,-11.5,0);
          OOBBInsertItemMM("M27Rivet",29,11.5,0);
          OOBBInsertItemMM("M27Rivet",29,-11.5,0);
          translate([0,-11.5,3]){
              linear_extrude(3){
                  square([52,7],true);
              }
          }
      }
      if(item=="PiZeroMountUpsideDown"){
          OOBBInsertItemMM("M27RivetUpsideDown",-29,11.5,0);
          OOBBInsertItemMM("M27RivetUpsideDown",-29,-11.5,0);
          OOBBInsertItemMM("M27RivetUpsideDown",29,11.5,0);
          OOBBInsertItemMM("M27RivetUpsideDown",29,-11.5,0);
          translate([0,-11.5,0]){
              linear_extrude(3){
                  square([52,7],true);
              }
          }
        //extra cutout for rivet clearance
        translate([0,-11.5,0]){
            linear_extrude(1.5){
                square([58,OOBBm27RivetClearance*2],true);
            }
        }
      }
      if(item=="OOEBNormal"){
         OOEBNormalInsert(ex=ex);
      }
      if(item=="OOEBNormalUpsideDown"){
          
         OOEBNormalInsertUpsideDown(ex=ex);
          
      }
      
      if(item=="OOEBNormalCableUpsideDown"){
          if(ex==0){
            OOEBNormalCableInsertUpsideDown(0.5);
          }else{
            OOEBNormalCableInsertUpsideDown(ex);
          }
      }
      if(item=="OOEBNormalCable"){
       //needs shifting to be right
           ex=0.1;
          translate([0,0,0]){
          //top
            translate([0,0,0]){  
                linear_extrude(6.23){
                    square([2.54*4+ex,2.54+ex],true);
                }
            }  
          //bar
            translate([0,0,-2.54]){  
                linear_extrude(2.54+ex){
                    square([2.54*6+ex,2.54+ex],true);
                }
            }     
          //header
            translate([2.54/2,0,-2.54-14]){  
                linear_extrude(14){
                    square([2.54*3+ex,2.54+ex],true);
                }
            }
            //cable
            translate([2.54/2,0,-2.54-14-3]){  
                linear_extrude(3){
                    square([5.62+ex,2.54+ex],true);
                }
            }      
          }
          
      }
      if(item=="OOEBDual"){
          OOEBextra = 0.5;
          translate([2.54/2,0,-8.5]){
              union(){
                  OOBBcubeAngled(0,0,8.5,2.54*2+OOEBextra,2.54+OOEBextra,3,0.5);
                linear_extrude(8.5){
                    square([2.54*2+OOEBextra,2.54+OOEBextra],true);
                }
            }
        }
      }
      if(item=="OOEBARDCUpsideDown"){
          translate([0,0,-13]){
            ex = 1;
            //board
            translate([0,0,0]){  
                linear_extrude(10){
                    square([18+ex,45+ex],true);
                }
            }
            //usb
            translate([0,-18.574,-4.5+1.3]){
                linear_extrude(4.5){
                    square([8+ex,9+ex],true);
                }
            }
            //left pins
            translate([-7.62,-0.318,-7.5+8]){
                linear_extrude(12){
                    square([2.54+ex,2.54*15+ex],true);
                }
            }
            //left pins
            translate([7.62,-0.318,-6.5+8]){
                linear_extrude(12){
                    square([2.54+ex,2.54*15+ex],true);
                }
            }
        }
      }
      if(item=="OOEBDCJA"){
          translate([0,0,-14]){
            linear_extrude(14){
                square([9+2,14+1],true);
            }
        }
      }
      
      
      
        
    }   
}

module OOBBcylinder(height,radius1,radius2){
    union(){
        translate([0,0,OOBBfirstLayerLipDepth]){
            cylinder(height - OOBBfirstLayerLipDepth,radius1,radius2);
            
        }
       cylinder(OOBBfirstLayerLipDepth,radius1-OOBBfirstLayerLipOffset,radius2-OOBBfirstLayerLipOffset);            
        }
}

module OOBBcubeAngled(x,y,z,width,height,depth,extra){
   /*
    CubePoints = [
  [  0,  0,  0 ],  //0
  [ 10,  0,  0 ],  //1
  [ 10,  7,  0 ],  //2
  [  0,  7,  0 ],  //3
  [  0,  0,  5 ],  //4
  [ 10,  0,  5 ],  //5
  [ 10,  7,  5 ],  //6
  [  0,  7,  5 ]]; //7
  
CubeFaces = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left
  
polyhedron( CubePoints, CubeFaces );
    */
    CubePoints = [
                  [  0,  0,  0 ],  //0
                  [ width,  0,  0 ],  //1
                  [ width+2*extra,  -2*extra,  depth ],  //2
                  [  -2*extra,  -2*extra,  depth ],  //3
                  [  0,  height,  0 ],  //4
                  [ width,  height,  0 ],  //5
                  [ width+2*extra,  height+2*extra,  depth ],  //6
                  [  -2*extra,  height+2*extra,  depth ]]; //7
  
    CubeFaces = [
                  [0,1,2,3],  // bottom
                  [4,5,1,0],  // front
                  [7,6,5,4],  // top
                  [5,6,2,1],  // right
                  [6,7,3,2],  // back
                  [7,4,0,3]]; // left
    translate([-width/2,-height/2,z-height]){
        polyhedron( CubePoints, CubeFaces );
    }
    
}

module OOEBNormalInsert(ex){
    translate([3.81,0,-8.5]){
        //OOBBcubeAngled(x,y,z,width,height,depth,extra);
        union(){
            OOBBcubeAngled(0,0,8.5,2.54*4+ex,2.54+ex,3,0.5);
            linear_extrude(8.5){
                square([2.54*4+ex,2.54+ex],true);
            }
        }
    }
}

module OOEBNormalInsertUpsideDown(ex){
    translate([0,0,0]){
            //OOBBcubeAngled(x,y,z,width,height,depth,extra);
            union(){
                  OOBBcubeAngled(0,0,3.5,2.54*4+ex+0.5*2,2.54+ex+0.5*2,3,-0.5);
                  
                linear_extrude(8.5){
                    square([2.54*4+ex,2.54+ex],true);
                }
            }
        }
}

module OOEBNormalCableInsertUpsideDown(ex){
          OOBBInsertItemMM("OOEBNormalUpsideDown",0,0,0,ex=0);
          translate([0,0,0]){
          //top
            translate([0,0,0]){  
                linear_extrude(6){
                    square([2.54*4+ex,2.54+ex],true);
                }
            }  
          //bar
            translate([0,0,6]){  
                linear_extrude(2.54+ex){
                    square([2.54*6+ex,2.54+ex],true);
                }
            }     
          //header
            translate([2.54/2,0,6+2.54+ex]){  
                linear_extrude(14){
                    square([2.54*3+ex,2.54+ex],true);
                }
            }
            //cable
            translate([2.54/2,0,6+2.54+ex+14]){  
                linear_extrude(3){
                    square([5.62+ex,2.54+ex],true);
                }
            }      
          }
}
