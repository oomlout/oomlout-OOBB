from OPSC import *
from OOBB_BP import *
from OOBB_HL import *
from OOBB_SHEET import *
import os

scadOnly = False

oobbSpacing = 15
obs = oobbSpacing

def makeAll(overwrite=False):
    makePLs(overwrite)
    makeCIs(overwrite)
    makeBPs(overwrite)    
    makeHLs(overwrite)
    makeJAs(overwrite)
    makeSheets(overwrite)
##############################################
######  CI bits
def makeCIs(overwrite=False):

    plates=[]

    plates.append([3,3])    
    plates.append([5,3])    
    plates.append([7,3])    
    plates.append([9,3])    
    plates.append([11,3])    
    plates.append([13,3])    
    plates.append([15,3])    
    plates.append([17,3])    
    plates.append([19,3])    
    plates.append([21,3])    

    for plate in plates:
        makeCI(plate[0],plate[1],overwrite=overwrite)    

def makeCI(diameter,depth,overwrite=False):
    makeCIfull(diameter,depth,mode="3DPR",overwrite=overwrite)
    makeCIfull(diameter,depth,mode="TRUE",overwrite=overwrite)

def makeCIfull(diameter,depth,mode="3DPR",overwrite=False):
    changeMode(mode)
    print("Making: " + getFileName("CI",width=diameter,height=0,depth=depth))   
    part = item()

    part.addPos(getCircle(dia=diameter,depth=depth))

    side = getOOBBdimension(diameter)
    fullWidth = diameter * obs

    ###### Holes
    for x in range(0,diameter):
        for y in range(0,diameter):
            xx= (-fullWidth/2 + obs/2) + (x*obs)
            yy= (-fullWidth/2 + obs/2) + (y*obs)
            inside = (xx * xx) + (yy * yy) < (side/2 * side/2)
            if inside:
                part.addNeg(insert("holeM6", x=xx,y=yy))
    ###### extra holes for PL-03
    if diameter == 3:
        xx = 10.607
        yy = 10.607
        part.addNeg(insert("holeM6", x=xx,y=yy))
        part.addNeg(insert("holeM6", x=xx,y=-yy))
        part.addNeg(insert("holeM6", x=-xx,y=yy))
        part.addNeg(insert("holeM6", x=-xx,y=-yy))



    savePart("CI",width=diameter,depth=depth,part=part,mode=mode,overwrite=overwrite,justScad = scadOnly)


##############################################
######  JA bits
def makeJAs(overwrite=False):

    plates=[]

    plates.append([1])    
    plates.append([2]) 
    plates.append([3])
    plates.append([5])
    plates.append([7])
    
    for plate in plates:
        makeJA(plate[0],overwrite=overwrite)    

def makeJA(width,overwrite=False):
    makeJAfull(width=width,mode="3DPR",overwrite=overwrite)
    makeJAfull(width=width,mode="TRUE",overwrite=overwrite)

def makeJAfull(width,mode="3DPR",overwrite=False):
    #totalWidth=width*obs
    #totalHeight=height*obs
    thickness = 12
    typ = "JA"
    extra = ""
    print("Making: " + OOBB.getFileName(typ,width=width,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.OOBB.getPlate(width=width,height=1,depth=thickness,z=thickness/2))
    part.addPos(OOBB.OOBB.getPlate(x=1.5,width=width,height=1,depth=thickness,z=thickness/2))
    part.addPos(OOBB.OOBB.getPlate(x=-1.5,width=width,height=1,depth=thickness,z=thickness/2))
    
    #mountingHoles
    for x in range(1,width+1):
        part.addNeg(OOBB.getHole(x,1,width,1,m=""))
        part.addNeg(OOBB.getHole(x,1,width,1,rotX=90,depth=13.5,m=""))
    #joiningScrews
    x=7.5
    y=12.5
    #OOBB.addScrew(part,x,y,thickness)
    #############################################################################
    #############################################################################
    ######  Bottom Block
    x=0
    y=-6.75
    wid = width*obs
    hei = 13.5
    part.addPos(insert("cube",width=wid,height=hei,x=x,y=y,z=thickness/2,depth=thickness))
    ###### Nut Holes
    for x in range(0,width):
        x=getOOBBCoord(x,width)
        y=-8
        wid = nuts["M6"]["WIDTH"]
        hei = nuts["M6"]["DEPTH"]
        depth = thickness
        m=""
        part.addNeg(insert("cube",x=x,y=y,z=depth/2,width=wid,height=hei,depth=depth,m=m))


    ##################################################################################
    ##################################################################################

    ###### File Output
    start=thickness/2
    splitDif=thickness/2
    
    #OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)



########################################################
######  PL bits

def makePLs(overwrite=False):

    plates=[]

    for wid in range(1,7):
        for hei in range(1,7):
            if wid >= hei:
                plates.append([wid,hei,3])
    
    plates.append([1,1,6])    
    plates.append([1,1,9])    
    plates.append([1,1,12])   

    plates.append([7,1,3])    
    plates.append([8,1,3])    
    plates.append([9,1,3])    
    plates.append([10,1,3])    
    plates.append([11,1,3])    
    plates.append([14,1,3])    
    plates.append([15,1,3])    
    plates.append([20,1,3])    
    plates.append([25,1,3])    
    
    plates.append([7,3,3])    
    plates.append([8,3,3])    
    plates.append([9,3,3])    
    
    plates.append([7,5,3])    
    plates.append([8,5,3])    
    plates.append([9,5,3])    


    plates.append([12,12,3])    
    plates.append([14,14,3])   
    plates.append([15,15,3])     
    plates.append([20,20,3])    

    for plate in plates:
        makePL(plate[0],plate[1],plate[2],overwrite=overwrite)


def makePL(width,height,depth,overwrite=False):
    makePLfull(width,height,depth,mode="3DPR",overwrite=overwrite)
    makePLfull(width,height,depth,mode="TRUE",overwrite=overwrite)

def makePLfull(width,height,depth,mode="3DPR",overwrite=False):
    changeMode(mode)
    print("Making: " + getFileName("PL",width,height,depth))   
    part = item()


    part.addPos(getPL(width=width,height=height,depth=depth))

    savePart("PL",width=width,height=height,depth=depth,part=part,mode=mode,overwrite=overwrite,justScad = scadOnly)


def getPLOOBBCoordA4(width,height,depth,x=0,y=0,z=0):
    x = getOOBBCoord(x,13)
    y = getOOBBCoord(y,19)
    return getPL(width=width,height=height,depth=depth,x=x,y=y)


def getPL(width,height,depth,x=0,y=0,z=0):
    part = item()
    part.addPos(getPlate(width,height,depth))

    fullWidth = width * obs
    fullHeight = height * obs

    ###### Holes
    for xx in range(0,width):
        for yy in range(0,height):
            xxx= getOOBBCoord(xx,width)
            yyy= getOOBBCoord(yy,height)
            part.addNeg(insert("holeM6", x=xxx,y=yyy,m=""))

    rv = part.getPart()
    rv = translate([x,y,z])(rv)

    return rv



##################################################
######  Shape Helpers

def addScrew(part,x,y,thickness,rotZ=0,m=""):
    #m="#"
    if rotZ == 0:
        part.addNeg(insert("holeM3",x=x,y=y,m=m))
        part.addNeg(insert("countersunkM3",x=x,y=y,z=thickness/2,m=m))
        part.addNeg(insert("nutM3",x=x,y=y,z=-thickness/2,rotY=180,m=m))
        part.addNeg(insert("nutM3",x=x,y=y,z=-thickness/2+0.5,rotY=180,m=m))
    else:
        part.addNeg(insert("holeM3",x=x,y=y,m=m))
        part.addNeg(insert("countersunkM3",x=x,y=y,z=-thickness/2,rotY=180,m=m))
        part.addNeg(insert("nutM3",x=x,y=y,z=thickness/2,m=m))
        part.addNeg(insert("nutM3",x=x,y=y,z=thickness/2-0.5,m=m))

def getOOBBdimension(oobbSize):
    spacing = 3    
    return (obs * oobbSize)-spacing

def getCircle(dia,depth):
    spacing = 3    
    diameter = (obs * dia)-spacing
    x = 0
    y = 0

    return insert("cylinder",x=x,y=y,rad=diameter/2,depth=depth)

def getPlate(width,height,depth,x=0,y=0,z=0):
    spacing = 3    
    wid = (obs * width)-spacing
    hei = (obs * height)-spacing

    return insert("cubeRounded",x=x,y=y,z=z,width=wid,height=hei, depth=depth)

def getHole(x,y,width,height,depth=0,rotX=0,rotY=0,rotZ=0,m=""):
    fullWidth = width * obs
    fullHeight = height * obs
    xx= (-fullWidth/2 + obs/2) + ((x-1)*obs)
    yy= (-fullHeight/2 + obs/2) + ((y-1)*obs)
    return insert("holeM6", x=xx,y=yy,rotX=rotX,rotY=rotY,rotZ=rotZ,depth=depth,m=m)


##################################################
######  General Helpers

def getOOBBCoord(x,wid):
    fullWidth = wid * obs
    rv = (-fullWidth/2 + obs/2) + (x*obs)
    return rv

def getOOBBCoordCenter(x,wid):
    fullWidth = wid * obs
    rv = (-fullWidth/2 + obs/2) + (x*obs)
    return rv

def savePartSplit(typ,part,width=0,height=0,depth=3,mode="TRUE",extra="",start=0,splitDepth=6,tileDif=200,overwrite=False,justScad=False):
    if mode == "3DPR":
        ext = ""
        ext= "-" + "SPLIT"
        filename = getFileName(typ,width,height,depth, extra = extra) + ext + ".scad"
        print("    Saving Part Split: " + filename)    
        if overwrite or not os.path.exists(filename):
            saveToScad(filename,part.getSplit(start=start,depth=splitDepth,rotY=180,tileDif=tileDif))
        if (overwrite or  not os.path.exists(filename.replace(".scad",".png"))) and not justScad:    
            saveToPng(filename)
        if (overwrite or  not os.path.exists(filename.replace(".scad",".stl"))) and not justScad:            
            saveToStl(filename)    

def savePart(typ,part,width=0,height=0,depth=3,mode="TRUE",extra="",overwrite=False,justScad=False):
    
    ext = ""
    ext= "-" + mode.upper()
    filename = getFileName(typ,width,height,depth, extra = extra) + ext + ".scad"
    print("    Saving Part: " + filename)
    filenameFlat = getFileName(typ,width,height,depth, extra=extra) + ext + "-FLAT.scad"
    if overwrite or not os.path.exists(filename):
        saveToScad(filename,part.getPart())
    if (overwrite or  not os.path.exists(filename.replace(".scad",".png"))) and not justScad:    
        saveToPng(filename)
    if (overwrite or  not os.path.exists(filename.replace(".scad",".stl"))) and not justScad:        
        saveToStl(filename)    
    if overwrite or  not os.path.exists(filenameFlat):    
        saveToScad(filenameFlat,part.getLaser())
    if (overwrite or  not os.path.exists(filename.replace(".scad",".dxf"))) and not justScad:    
        saveToDxf(filenameFlat,filename.replace(".scad",".dxf"))
    if (overwrite or  not os.path.exists(filename.replace(".scad",".svg"))) and not justScad:        
        saveToDxf(filenameFlat,filename.replace(".scad",".svg"))

def saveSheet(typ,part,width=0,height=0,depth=3,mode="TRUE",extra="",overwrite=False,justScad=False):
    ext = ""
    ext= "-" + mode.upper()
    filenameFlat = getFileName(typ,width,height,depth, extra=extra) + ext + "-FLAT.scad"
    filename = getFileName(typ,width,height,depth, extra=extra) + ext + ".scad"

    print("    Saving Part: " + filenameFlat)
    
    if overwrite or  not os.path.exists(filenameFlat):    
        saveToScad(filenameFlat,part.getLaser())
    if (overwrite or  not os.path.exists(filename.replace(".scad",".dxf"))) and not justScad:    
        saveToDxf(filenameFlat,filename.replace(".scad",".dxf"))
    if (overwrite or  not os.path.exists(filename.replace(".scad",".svg"))) and not justScad:        
        saveToDxf(filenameFlat,filename.replace(".scad",".svg"))


def getFileName(typ,width=0,height=0,depth=3,extra=""):
    rv = ""    
    st = typ 
    if extra != "":
        st = st + "-" + extra

    if "SHEET" in typ:
        rv = "sheets/" + st + "/" + st
    else: 
        if width != 0:
            st = st + "-" + str(str(width).zfill(2))
        
        if height != 0:
            st = st + "-" + str(str(height).zfill(2))
        
        if depth != 3:
            st = st + "-T" + str(depth).zfill(2)
        
        rv = "parts/" + typ + "/" + st + "/" + st
    return rv
