from OPSC import *
import OOBB

def makeBPs(overwrite):
    makeBP(3,3,12,"606",overwrite)

def makeBP(width,height,thickness,bearing,overwrite):
    makeBPAll(mode="3DPR",width=width,height=height,thickness=thickness,bearing=bearing,overwrite=overwrite)
    makeBPAll(mode="TRUE",width=width,height=height,thickness=thickness,bearing=bearing,overwrite=overwrite)

def makeBPAll(width,height,thickness,bearing,overwrite=False,mode="3DPR"):
    totalWidth=OOBB.getOOBBdimension(width)
    totalHeight=OOBB.getOOBBdimension(width)
    typ = "BP"
    extra = bearing
    print("Making: " + OOBB.getFileName(typ,width=width,height=height,depth=thickness,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.OOBB.getPlate(width=width,height=height,depth=thickness,z=thickness/2))
    #mountingHoles
    for x in range(1,width+1):
        for y in range(1,height+1):
            if x == width or x == 1 or y == height or y == 1  :
                part.addNeg(OOBB.getHole(x,y,width,height,m=""))
    #joiningScrews
    x=9.445
    y=9.445
    OOBB.addScrew(part,x,y,thickness,m="")
    OOBB.addScrew(part,-x,y,thickness,rotZ=180,m="")
    OOBB.addScrew(part,x,-y,thickness,rotZ=180)
    OOBB.addScrew(part,-x,-y,thickness)
    #############################################################################
    #############################################################################
    part.addNeg(insert("bearing606",m=""))

    ##################################################################################
    ##################################################################################

    ###### File Output
    start=thickness/2
    splitDif=thickness/2
    
    OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)


    ###### HL-T100
def makeHL_T100(overwrite=False):
    makeHL_T100all(mode="3DPR",overwrite=overwrite)
    makeHL_T100all(mode="TRUE",overwrite=overwrite)

def makeHL_T100all(mode="3DPR",overwrite=False):
    ######  To Fix
        # Add extra hole for grounding screw (slide up to encompass?)
    width = 3
    height = 3
    totalWidth=width*obs
    totalHeight=height*obs
    thickness = 21
    typ = "HL"
    extra = "T100"
    print("Making: " + OOBB.getFileName(typ,width=width,height=height,depth=thickness,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.getPlate(width=width,height=height,depth=thickness,z=thickness/2))
    #mountingHoles
    part.addNeg(OOBB.getHole(1,3,width,height))
    part.addNeg(OOBB.getHole(2,3,width,height))
    part.addNeg(OOBB.getHole(3,3,width,height))
    part.addNeg(OOBB.getHole(1,1,width,height))
    part.addNeg(OOBB.getHole(2,1,width,height))
    part.addNeg(OOBB.getHole(3,1,width,height))
    #joiningScrews
    x=7.5
    y=12.5
    OOBB.addScrew(part,x,y,thickness)
    OOBB.addScrew(part,-x,y,thickness)
    OOBB.addScrew(part,x,-y,thickness)
    OOBB.addScrew(part,-x,-y,thickness)
    #############################################################################
    #############################################################################
    #SolderingIronBlank
    debug=""
    x=250
    y=0
    z=-1.5
    rad=13/2
    depth=500
    rotY=90
    part.addNeg(insert("cylinder",x=x,y=y,z=z,rad=rad,depth=depth,rotY=rotY,m=debug))
    wid=11.5
    hei=13
    z=z+4.25
    part.addNeg(insert("cube",x=x,y=y,z=z,width=wid,height=hei,depth=depth,rotY=rotY,m=debug))
    #screen
    x=0
    y=0
    z=thickness/2
    depth=6  
    wid=22
    hei=6  
    part.addNeg(insert("cube",x=x,y=y,z=z,width=wid,height=hei,depth=depth))    
    ##################################################################################
    ##################################################################################

    ###### File Output
    start=thickness/2
    splitDif=thickness/2
    
    OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)

