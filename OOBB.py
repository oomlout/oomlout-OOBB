from OPSC import *

oobbSpacing = 15
os = oobbSpacing

def getFileName(typ,width,height,depth=3):
    rv = ""
    rv = "parts/" + typ + "/" + typ + "-" + str(str(width).zfill(2)) + "-" + str(str(height).zfill(2))
    if depth != 3:
        rv = rv + "D" + str(depth).zfill(2)
    return rv

def makePL(width,height,depth):    
    part = item()

    part.addPos(insert("cubeRounded",width=(os * width)-3,height=(os * height)-3, depth=depth))


    savePart(type,width,height,depth,part)

def savePart(type,width,height,depth,part):
    filename = getFileName(type,width,height,depth) + ".scad"
    saveToScad(filename,part)
    saveToDxf(filename,part)
    saveToPng(filename,part)
    saveToStl(filename,part)