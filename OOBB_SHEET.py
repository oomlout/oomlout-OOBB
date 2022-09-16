from OPSC import *
import OOBB

def makeSheets(overwrite):
    makeSheet(getSheetList(3,3),overwrite)
    makeSheet(getSheetList(5,5),overwrite)

def getSheetList(mainWid,mainHei):
    #[width,height,xCoord,yCoord,extra]
    rv = []
    extra = str(mainWid).zfill(2) + "-" + str(mainHei).zfill(2)
    wid=mainWid
    hei=mainHei
    xRan = int(13/wid)
    yRan = int(19/hei)
    for x in range(0,xRan):
        for y in range(0,yRan):
            rv.append([wid,hei,1+x*wid,1+y*hei,extra])
    return(rv)


    

def makeSheet(parts,overwrite=False):
    mainWidth = 210
    mainHeight = 297
    thickness = 3
    modeList = ["3DPR","TRUE"]
    for mode in modeList:
        part = item()
        #sheet
        part.addPos(insert("cubeRounded",width=mainWidth,height=mainHeight,depth=thickness))
        for p in parts:
            typ = "SHEET-PL"
            extra = p[4]

            

            #parts
            part.addNeg(OOBB.getPLOOBBCoordA4(width=p[0],height=p[1],depth=3,x=p[2],y=p[3]))
        print("Making: " + OOBB.getFileName(typ,depth=thickness,extra=extra))               
        OOBB.saveSheet(typ,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)