from OPSC import *
import OOBB

def makeBPs(overwrite):
    makeBP(3,3,12,"606",overwrite)
    makeBP(5,3,12,"6805",overwrite)
    makeBP(5,5,12,"6808",overwrite)
    makeBP(5,5,12,"6810",overwrite)
    makeBP(7,5,12,"6810",overwrite)

def makeBP(width,height,thickness,bearing,overwrite):
    makeBPAll(mode="3DPR",width=width,height=height,thickness=thickness,bearing=bearing,overwrite=overwrite)
    makeBPAll(mode="TRUE",width=width,height=height,thickness=thickness,bearing=bearing,overwrite=overwrite)

def makeBPAll(width,height,thickness,bearing,overwrite=False,mode="3DPR"):
    totalWidth=OOBB.getOOBBdimension(width)
    totalHeight=OOBB.getOOBBdimension(height)
    typ = "BP"
    extra = bearing
    print("Making: " + OOBB.getFileName(typ,width=width,height=height,depth=thickness,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.OOBB.getPlate(width=width,height=height,depth=thickness,z=thickness/2))
    #mountingHoles
    ###### Outer holes
    if True:
        bearingRadius = d["BEARINGS"][bearing]["BIG"] + 5
        for x in range(0,width):
            for y in range(0,height):
                oobbX = OOBB.getOOBBCoord(x,width)
                oobbY = OOBB.getOOBBCoord(y,height)
                if (oobbX * oobbX) + (oobbY * oobbY) > (bearingRadius * bearingRadius)  :
                    part.addNeg(OOBB.getHole(x+1,y+1,width,height,m=""))
        
    ###### inner holes
    if True:
        if bearing != "6805":
            innerRadius = d["BEARINGS"][bearing]["INSIDE"] - 4
            for x in range(0,width):
                for y in range(0,height):
                    oobbX = OOBB.getOOBBCoord(x,width)
                    oobbY = OOBB.getOOBBCoord(y,height)
                    if (oobbX * oobbX) + (oobbY * oobbY) < (innerRadius * innerRadius)  :
                        part.addNeg(OOBB.getHole(x+1,y+1,width,height,m=""))
        else:
            offset = d["BEARINGS"][bearing]["BPHOLES"][1]
            part.addNeg(insert("holeM6",x=offset,y=-offset,m=""))
            part.addNeg(insert("holeM6",x=-offset,y=offset,m=""))

    #joiningScrews
    for bp in d["BEARINGS"][bearing]["BPHOLES"]:        
        x=bp
        y=bp
        if(bearing == "6805") and bp < 10:
            OOBB.addScrew(part,x,y,thickness,rotZ=180,m="")
            OOBB.addScrew(part,-x,-y,thickness)            
        else:
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

