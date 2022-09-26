from OPSC import *
import OOBB

obs = 15
######  Process
    ## Add to makeHLs
    ## Copy Latest HL
    ## Rename routines

#################################################
######  HLs

def makeHLs(overwrite=False):
    makeOOBB_HL_SM(overwrite=overwrite)
    makeHL_ENDO(overwrite=overwrite)
    makeHL_T100(overwrite=overwrite)
    makeHL_BREB400(overwrite=overwrite)
    makeHL_BREB170(overwrite)

    ###### HL_ENDO
def makeHL_ENDO(overwrite=False):
    makeHL_ENDOall(mode="3DPR",overwrite=overwrite)
    makeHL_ENDOall(mode="TRUE",overwrite=overwrite)

def makeHL_ENDOall(mode="3DPR",overwrite=False):
    ######  To Fix
        #bottom nut a bit close to the perimeter
        #extra clamping bolt
    width = 4
    height = 2
    totalWidth=width*obs
    totalHeight=height*obs
    thickness = 12
    typ = "HL"
    extra = "ENDO"
    print("Making: " + OOBB.getFileName(typ,width=width,height=height,depth=thickness,extra=extra))   
    part = item()

    part.addPos(OOBB.getPlate(width=width,height=height,depth=thickness,z=thickness/2))

    #mountingHoles
    part.addNeg(OOBB.getHole(1,2,width,height))
    part.addNeg(OOBB.getHole(2,2,width,height))
    part.addNeg(OOBB.getHole(3,2,width,height))
    part.addNeg(OOBB.getHole(4,2,width,height))

    #joining holes
    x=15
    y=5
    OOBB.addScrew(part,x,y,thickness,m="")
    x=x-15
    y=y-15
    OOBB.addScrew(part,x,y,thickness,m="")
    x=0
    y=-2.5
    #endoscope
    part.addNeg(insert("holeM6",x=x,y=y,rotY=90))
    depth=45
    x=totalWidth/2-3
    y=-2.5
    
    #endoscope
    part.addNeg(insert("cylinder",x=x,y=y,depth=depth,rad=4.25,rotY=90))

    OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=6,splitDepth=6,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)

###################################
###################################
    ###### HL-BREB-400
def makeHL_BREB400(overwrite=False):
    makeHL_BREB400all(mode="3DPR",overwrite=overwrite)
    makeHL_BREB400all(mode="TRUE",overwrite=overwrite)

def makeHL_BREB400all(mode="3DPR",overwrite=False):
    width = 4
    height = 7
    totalWidth=width*obs
    totalHeight=height*obs
    thickness = 3
    typ = "HL"
    extra = "BREB-400"
    print("Making: " + OOBB.getFileName(typ,width=width,height=height,depth=thickness,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.OOBB.getPlate(width=width,height=height,depth=thickness,z=thickness/2))
    #mountingHoles
    part.addNeg(OOBB.getHole(1,7,width,height))
    part.addNeg(OOBB.getHole(2,7,width,height))
    part.addNeg(OOBB.getHole(3,7,width,height))
    part.addNeg(OOBB.getHole(4,7,width,height))
    #joiningScrews
    x=7.5
    y=12.5
    #OOBB.addScrew(part,x,y,thickness)
    #############################################################################
    #############################################################################


    ##################################################################################
    ##################################################################################

    ###### File Output
    start=thickness/2
    splitDif=thickness/2
    
    #OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)

###################################
###################################
    ###### HL-SM
def makeHL_SM(overwrite=False):
    makeHL_SMall(mode="3DPR",overwrite=overwrite)
    makeHL_SMall(mode="TRUE",overwrite=overwrite)

def makeHL_SMall(mode="3DPR",overwrite=False):

    width = 3
    height = 3
    totalWidth=width*obs-3
    totalHeight=height*obs +6
    thickness = 36    
    typ = "HL"
    extra = "SM"

    servoCutoutHeight = 7


    print("Making: " + OOBB.getFileName(typ,width=width,height=height,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.OOBB.getPlate(width=width,height=height,depth=thickness,z=0))    
    part.addPos(OOBB.OOBB.getPlate(y=3/2,width=width,height=height,depth=thickness,z=0))    
    part.addPos(OOBB.OOBB.getPlate(y=-3/2,width=width,height=height,depth=thickness,z=0))    
    #mountingHoles
    part.addNeg(OOBB.getHole(1,1,width,height))
    part.addNeg(OOBB.getHole(1,3,width,height))
    part.addNeg(OOBB.getHole(3,1,width,height))
    part.addNeg(OOBB.getHole(3,3,width,height))

    #############################################
    ######  Connecting Screws
    m=""
    holeServoTopA = {   "TYPE"  :   "holeM3","M"      :  m,
            "X"     :   obs * 1,     "Y"      :   10/2,      "Z"     :   -servoCutoutHeight-(thickness - servoCutoutHeight),
            "DEPTH" :   thickness - servoCutoutHeight
        }        
    part.addNeg(insert(dict=holeServoTopA))
    holeServoTopB = holeServoTopA.copy()
    holeServoTopB["Y"] = -holeServoTopA["Y"]
    part.addNeg(insert(dict=holeServoTopB))
    
    holeServoBottomA = holeServoTopA.copy()
    holeServoBottomA["X"] = -holeServoTopA["X"]
    part.addNeg(insert(dict=holeServoBottomA))
    holeServoBottomB = holeServoBottomA.copy()
    holeServoBottomB["Y"] = -holeServoBottomA["Y"]
    #holeServoBottomB["M"] = "#"
    part.addNeg(insert(dict=holeServoBottomB))

    jHoles = [holeServoTopA,holeServoTopB,holeServoBottomA,holeServoBottomB]
    count = 0
    jRot = [90,90,270,270]
    for j in jHoles:
        jj = j.copy()
        jj["TYPE"] = "NutSideInsertM3"
        jj["DEPTH"] = 3
        jj["ROTZ"] = jRot[count]
        jj["Z"] = -servoCutoutHeight
        #jj["Y"] = jj["Y"] + 100
        jj["EX"] = 0.5
        part.addNeg(insert(dict=jj))
        count = count +1


    #joiningScrews
    x=7.5
    y=12.5
    #OOBB.addScrew(part,x,y,thickness)
    #############################################################################
    #############################################################################
    
    #######
    #######  TOP
    
    ###### Bearing
    bear = "6704"
    m=""
    e = {"TYPE"  :   "bearing" + bear ,"M"      :  m,
        "X"     :   0,     "Y"      :   0,      "Z"     :   -d["BEARINGS"][bear]["DEPTH"]/2,
        "WIDTH" :   0,     "HEIGHT" :   0,      "DEPTH" :   0,
        "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
        "RAD"   :   0,     "RAD2"   :   0,      "EX"    :   "SOLID",    "RAD2"   : 32         
    }
    part.addNeg(insert(dict=e))
    ###### Bolt Clearances
    m=""
    e = {"TYPE"  :   "roundedClearance",        "M"      :  m,
        "X"     :   getOOBBCoord(1,3),     "Y"      :   getOOBBCoord(1,3),      "Z"     :   0,
        "WIDTH" :   0,     "HEIGHT" :   0,      "DEPTH" :   6,
        "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
        "RAD"   :   0,     "RAD2"   :   0,      "EX"    :   "SOLID"            
    }    
    part.addNeg(insert(dict=e))
    e["X"] = getOOBBCoord(3,3)
    e["Y"] = getOOBBCoord(1,3)
    e["ROTZ"] = 90
    part.addNeg(insert(dict=e))
    e["X"] = getOOBBCoord(3,3)
    e["Y"] = getOOBBCoord(3,3)
    e["ROTZ"] = 180
    part.addNeg(insert(dict=e))
    e["X"] = getOOBBCoord(1,3)
    e["Y"] = getOOBBCoord(3,3)
    e["ROTZ"] = 270
    part.addNeg(insert(dict=e))

    #########################################################
    ######  MIDDLE

    ######  Servo Cutout
    ######  Big Piece
    m=""
    e = {   "TYPE"  :   "cube","M"      :  m,
            "X"     :   0,     "Y"      :   5.375,      "Z"     :   -servoCutoutHeight,
            "WIDTH" :   14,     "HEIGHT" :   28,      "DEPTH" :   thickness-servoCutoutHeight,
            "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
            "RAD"   :   0,     "RAD2"   :   0            
        }
    part.addNeg(insert(dict=e))
    e["DEPTH"] = 8
    e["HEIGHT"] = 34.5
    e["Z"] = -thickness/2+4
    part.addNeg(insert(dict=e))
    
    #############################################################################
    ######  Servo Holder
    part2 = item()
    
    shShiftX = 0
    shShiftY = 50    
    holderThick = 4
    shShiftZ = 0
    ###### Main
    
    m=""
    e = {   "TYPE"  :   "cube","M"      :  m,
            "X"     :   0,     "Y"      :   5.35,      "Z"     :   0,
            "WIDTH" :   20,     "HEIGHT" :   33,      "DEPTH" :   holderThick,
            "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
            "RAD"   :   0,     "RAD2"   :   0            
        }
    part2.addPos(insert(dict=e))
    ######  Cross piece
    e = {   "TYPE"  :   "cube","M"      :  m,
            "X"     :    0,     "Y"      :   -10/2,      "Z"     :   0,
            "WIDTH" :   42,     "HEIGHT" :   10,      "DEPTH" :   holderThick,
            "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
            "RAD"   :   0,     "RAD2"   :   0            
        } 
    crossPiece = e.copy()       
    part2.addPos(insert(dict=e))
    


    
    #############################################
    ######  SERVO SCREWS
    m=""
    e = {   "TYPE"  :   "holeSlottedM1","M"      :  m,
            "X"     :   0,     "Y"      :   -8.25+1,      "Z"     :   0,
            "EX"    :   2.5,      "ROTZ"  :   90
        }
    part2.addNeg(insert(dict=e))
    e["Y"] = 19-1
    ######  SERVO CUTOUT
    part2.addNeg(insert(dict=e))
    e = {   "TYPE"  :   "cube","M"      :  m,
            "X"     :   0,     "Y"      :   5.375,      "Z"     :   0,
            "WIDTH" :   14,     "HEIGHT" :   24,      "DEPTH" :   holderThick,
        }
    part2.addNeg(insert(dict=e))
    e = holeServoTopB.copy()
    e["TYPE"] = "holeSlottedM3"
    e["EX"] = 3
    e["DEPTH"] = 0
    #e["M"] = "#"
    e["ROTZ"] = 90
    part2.addNeg(insert(dict=e))
    e["X"] = -e["X"]
    part2.addNeg(insert(dict=e))

    #part2.appNeg()

    part.addPos(translate([shShiftX,shShiftY,shShiftZ])(part2.getPart()))   


    #######################################################################
    ######  Bottom

    ######  Servo bracket clearance
    e = crossPiece
    e["HEIGHT"] = e["HEIGHT"] + 2
    e["WIDTH"] = e["WIDTH"] + 2
    e["Z"] = -thickness/2
    e["M"] = ""
    part.addNeg(insert(dict=e))
    ######  servo bracket screw clearance
    f = holeServoTopB.copy()
    f["TYPE"] = "holeSlottedM5"
    f["EX"] = 3
    f["DEPTH"] = 4
    f["Z"] = e["Z"] - e["DEPTH"] - 4
    f["M"] = ""
    f["ROTZ"] = 90
    part.addNeg(insert(dict=f))
    f["X"] = -f["X"]
    part.addNeg(insert(dict=f))
    ###### Bottom Screw clearance
    f = holeServoTopA.copy()
    f["TYPE"] = "socketCapM3"
    f["Z"] = -thickness
    f["ROTX"] = 180
    f["M"] = ""
    part.addNeg(insert(dict=f))
    f["X"] = -f["X"]
    part.addNeg(insert(dict=f))
    ######  Wire escape
    #############################################
    ######  Little Piece
    m=""
    e = {   "TYPE"  :   "cube","M"      :  "#",
            "X"     :   0,     "Y"      :   -12.5,      "Z"     :   -thickness/2,
            "WIDTH" :   4,     "HEIGHT" :   20,      "DEPTH" :   2,
            "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
            "RAD"   :   0,     "RAD2"   :   0            
        }  
    part.addNeg(insert(dict=e))
    e["Y"] = -10.5
    e["DEPTH"] = 10
    e["HEIGHT"] = 8

    part.addNeg(insert(dict=e))



    ##################################################################################
    ##################################################################################

    ###### File Output
    start=0
    splitDif=thickness/2
    
    OOBB.savePartSplit(typ,width=width,height=height,z=-thickness,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)

###################################
###################################
    ###### HL-BREB-170
def makeHL_BREB170(overwrite=False):
    makeHL_BREB170all(mode="3DPR",overwrite=overwrite)
    makeHL_BREB170all(mode="TRUE",overwrite=overwrite)

def makeHL_BREB170all(mode="3DPR",overwrite=False):
    width = 3
    height = 4
    totalWidth=width*obs
    totalHeight=height*obs
    thickness = 3
    typ = "HL"
    extra = "BREB-170"
    print("Making: " + OOBB.getFileName(typ,width=width,height=height,depth=thickness,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.OOBB.getPlate(width=width,height=height,depth=thickness,z=thickness/2))
    part.addPos(OOBB.OOBB.getPlate(y=-3,width=width,height=height,depth=thickness,z=thickness/2))
    #mountingHoles
    part.addNeg(OOBB.getHole(1,4,width,height))
    part.addNeg(OOBB.getHole(2,4,width,height))
    part.addNeg(OOBB.getHole(3,4,width,height))
    #joiningScrews
    x=7.5
    y=12.5
    #OOBB.addScrew(part,x,y,thickness)
    #############################################################################
    #############################################################################


    ##################################################################################
    ##################################################################################

    ###### File Output
    start=thickness/2
    splitDif=thickness/2
    
    #OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

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
