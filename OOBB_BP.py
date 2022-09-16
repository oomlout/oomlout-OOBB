from OPSC import *
import OOBB

def makeBPs(overwrite):
    makeBP(3,3,12,"606",overwrite)
    makeBP(5,5,12,"6810",overwrite)
    makeBP(7,5,12,"6810",overwrite)

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
    ###### Outer holes
    if True:
        if bearing != "6810":
            for x in range(1,width+1):
                for y in range(1,height+1):
                    if x == width or x == 1 or y == height or y == 1  :
                        part.addNeg(OOBB.getHole(x,y,width,height,m=""))
        else:
            part.addNeg(OOBB.getHole(1,1,width,height,m=""))
            part.addNeg(OOBB.getHole(1,height,width,height,m=""))
            part.addNeg(OOBB.getHole(width,1,width,height,m=""))
            part.addNeg(OOBB.getHole(width,height,width,height,m=""))
            if width == 7:
                part.addNeg(OOBB.getHole(1,1,width,height,m=""))
                part.addNeg(OOBB.getHole(1,2,width,height,m=""))
                part.addNeg(OOBB.getHole(1,3,width,height,m=""))
                part.addNeg(OOBB.getHole(1,4,width,height,m=""))
                part.addNeg(OOBB.getHole(1,5,width,height,m=""))
                part.addNeg(OOBB.getHole(7,1,width,height,m=""))
                part.addNeg(OOBB.getHole(7,2,width,height,m=""))
                part.addNeg(OOBB.getHole(7,3,width,height,m=""))
                part.addNeg(OOBB.getHole(7,4,width,height,m=""))
                part.addNeg(OOBB.getHole(7,5,width,height,m=""))
    ###### inner holes
    if True:
        innerRadius = bearings[bearing]["INSIDE"] - 5
        for x in range(0,width):
            for y in range(0,height):
                oobbX = OOBB.getOOBBCoord(x,width)
                oobbY = OOBB.getOOBBCoord(y,height)
                if (oobbX * oobbX) + (oobbY * oobbY) < (innerRadius * innerRadius)  :
                    part.addNeg(OOBB.getHole(x+1,y+1,width,height,m=""))
    #joiningScrews
    for bp in bearings[bearing]["BPHOLES"]:        
        x=bp
        y=bp
        OOBB.addScrew(part,x,y,thickness,m="")
        OOBB.addScrew(part,-x,y,thickness,rotZ=180,m="")
        OOBB.addScrew(part,x,-y,thickness,rotZ=180)
        OOBB.addScrew(part,-x,-y,thickness)
    #############################################################################
    #############################################################################
    part.addNeg(insert("bearing" + bearing,m=""))

    ##################################################################################
    ##################################################################################

    ###### File Output
    start=thickness/2
    splitDif=thickness/2
    
    OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)

