from OPSC import *

oobbSpacing = 15
os = oobbSpacing

def getFileName(typ,width,height,depth=3):
    rv = ""
    st = typ + "-" + str(str(width).zfill(2)) + "-" + str(str(height).zfill(2))
    rv = "parts/" + typ + "/" + st + "/" + st
    if depth != 3:
        rv = rv + "-T" + str(depth).zfill(2)
    return rv

def getPlate(width,height,depth):
    spacing = 3
    wid = (os * width)-spacing
    hei = (os * height)-spacing
    return insert("cubeRounded",x=wid/2+spacing/2,y=hei/2+spacing/2,width=wid,height=hei, depth=depth)

def makePLs():

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
        makePL(plate[0],plate[1],plate[2])


def makePL(width,height,depth):
    makePLfull(width,height,depth,mode="3DPR")
    makePLfull(width,height,depth,mode="TRUE")

def makePLfull(width,height,depth,mode="3DPR"):
    changeMode(mode)
    print("Making: " + getFileName("PL",width,height,depth))   
    part = item()


    wid = (os * width)-3
    hei = (os * height)-3
    part.addPos(getPlate(width,height,depth))

    for x in range(0,width):
        for y in range(0,height):
            part.addNeg(insert("holeM6", x=(x*os)+os/2,y=(y*os)+os/2))


    savePart("PL",width,height,depth,part,mode)

def savePart(typ,width,height,depth,part,mode="TRUE"):
    extra = ""
    extra= "-" + mode.upper()
    filename = getFileName(typ,width,height,depth) + extra + ".scad"
    filenameFlat = getFileName(typ,width,height,depth) + extra + "-flat.scad"
    saveToScad(filename,part.getPart())
    saveToPng(filename)
    saveToStl(filename)
    
    saveToScad(filenameFlat,part.getLaser())
    saveToDxf(filenameFlat,filename.replace(".scad",".dxf"))
    saveToDxf(filenameFlat,filename.replace(".scad",".svg"))
    