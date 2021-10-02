
OOBBSpacing = 15;



include <OPSC-base.scad>

$fn = 25;
//$fn = 50;
//$fn = 100;

include <OOBB-AAA-generate-BP.scad>
include <OOBB-AAA-generate-CI.scad>
include <OOBB-AAA-generate-CN.scad>
include <OOBB-AAA-generate-GE.scad>
include <OOBB-AAA-generate-HL.scad>
include <OOBB-AAA-generate-JA.scad>
include <OOBB-AAA-generate-TEST.scad>
include <OOBB-AAA-generate-PL.scad>
include <OOBB-AAA-generate-SP.scad>
include <OOBB-AAA-generate-WH.scad>
include <OOBB-AAA-generate-WI.scad>

include <OOBB-AAA-insert.scad>

if(o=="LAZE"){
    projection(){
        oi(m,width=w,height=h);
    }
}else if(o=="3DPR"){
    //inset first layer
    layerHeight=0.4;
    layerInset=0.35;
    union(){
        //firstLayer
        translate([0,0,0]){
            linear_extrude(layerHeight){
                offset(-layerInset){
                    projection(){
                        intersection(){
                            oi(m,width=w,height=h);
                            oi("cube",width=1000,height=1000,depth=layerHeight);
                        }
                    }
                }
            }
        }
        //rest with firstlayer removed
            difference(){
                oi(m,width=w,height=h);
                oi("cube",width=1000,height=1000,depth=layerHeight,z=layerHeight);
            }
        }            
}else{     
     oi(m,width=w,height=h);
 }
