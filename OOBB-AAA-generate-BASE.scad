
OOBBSpacing = 15;

include <OPSC-base.scad>


include <OOBB-AAA-generate-BP.scad>
include <OOBB-AAA-generate-CI.scad>
include <OOBB-AAA-generate-CN.scad>
include <OOBB-AAA-generate-GE.scad>
include <OOBB-AAA-generate-HL.scad>
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
}
 else{
     oi(m,width=w,height=h);
 }
