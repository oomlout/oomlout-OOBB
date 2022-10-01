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
    makeHL_BREB170(overwrite)
    makeHL_BREB400(overwrite=overwrite)
    makeHL_ENDO(overwrite=overwrite)
    makeHL_PICO(overwrite)
    makeHL_SE(overwrite)
    makeHL_SM(overwrite)
    makeHL_T100(overwrite=overwrite)

    

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
    ###### HL-PICO
def makeHL_PICO(overwrite=False):
    makeHL_PICOall(mode="3DPR",overwrite=overwrite)
    makeHL_PICOall(mode="TRUE",overwrite=overwrite)
def makeHL_PICOall(mode="3DPR",overwrite=False):
    width = 5
    height = 2
    totalWidth=width*obs
    totalHeight=height*obs
    thickness = 4.5
    typ = "HL"
    extra = "PICO"
    print("Making: " + OOBB.getFileName(typ,width=width,height=height,depth=thickness,extra=extra))   
    part = item()
    #mainPiece
    part.addPos(OOBB.OOBB.getPlate(width=width,height=height,depth=thickness,z=0))
    #mountingHoles
    part.addNeg(OOBB.getHole(1,1,width,height))
    part.addNeg(OOBB.getHole(1,2,width,height))


    ##################################################################################
    ##################################################################################
    #pico mounting holes
    m=""
    priv = False
    if mode == "3DPR":
        priv = True
    part.addNeg(getPICO(pos=[7.5,0,0],rot=[0,0,90],priv=priv,depth=thickness,m=m))
    ###### File Output
    start=thickness/2
    splitDif=thickness/2
    
    #OOBB.savePartSplit(typ,width=width,height=height,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

    OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)

    ###################################
    ###### HL-SE
def makeHL_SE(overwrite=False):
    makeHL_SEall(mode="3DPR",overwrite=overwrite)
    makeHL_SEall(mode="TRUE",overwrite=overwrite)
def makeHL_SEall(mode="3DPR",overwrite=False):

    width = 5
    height = 3
    totalWidth=width*obs-3
    totalHeight=height*obs +6
    mainThickness = 19
    thickness = mainThickness    
    typ = "HL"
    extra = "SE"

    


    print("Making: " + OOBB.getFileName(typ,width=width,height=height,extra=extra))   
    part = item()
    #############################################
    
    if True:    #mainPiece
        topExtra = thickness-3
        part.addPos(OOBB.OOBB.getPlate(x=15,width=width,height=height,depth=thickness-topExtra,z=-topExtra))    
        
        part.addPos(OOBB.OOBB.getPlate(x=0,width=width-2,height=height,depth=thickness,z=0))    

        #mountingHoles
        part.addNeg(OOBB.getHole(1,1,width-2,height))
        part.addNeg(OOBB.getHole(1,3,width-2,height))
        part.addNeg(OOBB.getHole(3,1,width-2,height))
        part.addNeg(OOBB.getHole(3,3,width-2,height))
        part.addNeg(OOBB.getHole(4,1,width-2,height))
        part.addNeg(OOBB.getHole(4,3,width-2,height))        
        part.addNeg(OOBB.getHole(5,1,width-2,height))        
        part.addNeg(OOBB.getHole(5,2,width-2,height))
        part.addNeg(OOBB.getHole(5,3,width-2,height))
        m=""
        part.addNeg(getRoundedClearanceCorners(width=3,height=3,m=m))

    #############################################
    if True:    #SERVO HOLE
        part.addNeg(getServoHole(pos=[0,0,-thickness],m=""))

#############################################
    if True:    ######  Connecting Screws
        servoCutoutHeight = 7
        part.addNeg(getServoConnectingScrews(pos=[0,0,0],rot=[0,0,90],m="",servoCutoutHeight = servoCutoutHeight,thickness=thickness,ex=5))
        

    #############################################
    if True:#######  TOP
        
        ###### Bearing
        bear = "6704"
        m=""
        e = {"TYPE"  :   "bearing" + bear ,"M"      :  m,
            "X"     :   0,     "Y"      :   0,      "Z"     :   -d["BEARINGS"][bear]["DEPTH"]/2,
            "WIDTH" :   0,     "HEIGHT" :   0,      "DEPTH" :   0,
            "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
            "RAD"   :   0,     "RAD2"   :   0,      "EX"    :   "SOLID",    "RAD2"   : 40         
        }
        part.addNeg(insert(dict=e))
        ###### Bolt Clearances
        """
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
        """

    #################################################
    if False:    ######  MIDDLE

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
        
    #################################################
    if False:    ######  Servo Holder
        part2 = item()
        
        shShiftX = 60
        shShiftY = 0    
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
        holderMainPiece = e.copy()
        part2.addPos(insert(dict=e))
        ######  Cross piece
        e = {   "TYPE"  :   "cube","M"      :  m,
                "X"     :    0,     "Y"      :   -10/2,      "Z"     :   0,
                "WIDTH" :   42,     "HEIGHT" :   10,      "DEPTH" :   holderThick,
                "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
                "RAD"   :   0,     "RAD2"   :   0            
            } 
        holderCrossPiece = e.copy()       
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

    #################################################
    if False:    ######  Bottom

        ######  Servo bracket clearance
        e = holderCrossPiece
        e["HEIGHT"] = e["HEIGHT"] + 2
        e["WIDTH"] = e["WIDTH"] + 2
        e["Z"] = -thickness/2
        e["M"] = ""
        part.addNeg(insert(dict=e))
        e = holderMainPiece
        e["HEIGHT"] = e["HEIGHT"] +2
        e["WIDTH"] = e["WIDTH"] + 1
        e["Z"] = -thickness/2
        e["M"] = ""
        part.addNeg(insert(dict=e))


        ######  servo bracket screw clearance
        f = holeServoTopB.copy()
        f["TYPE"] = "holeSlottedM6"
        f["EX"] = 3
        f["DEPTH"] = 6
        f["Z"] = e["Z"] - e["DEPTH"] - 6
        f["M"] = "#"
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
        e = {   "TYPE"  :   "cube","M"      :  m,
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


    #################################################
    if False: #######  SERVO HORN

        shShiftX = 50
        shShiftY = -50    
        shShiftZ = 0
        hornThick = 9
        bigRingThick = 1
        littleRingThick = 2.55
        shThick = hornThick+bigRingThick + littleRingThick


        part3 = item()

        part3.addPos(OOBB.OOBB.getPlate(width=3,height=1,depth=hornThick,z=0))    
        part3.addPos(OOBB.OOBB.getPlate(y=3,width=3,height=1,depth=hornThick,z=0))    
        part3.addPos(OOBB.OOBB.getPlate(y=6,width=3,height=1,depth=hornThick,z=0))    
        part3.addPos(OOBB.OOBB.getPlate(y=-3,width=3,height=1,depth=hornThick,z=0))       
        part3.addPos(OOBB.OOBB.getPlate(y=-6,width=3,height=1,depth=hornThick,z=0))    
        ######  Holes
        part3.addNeg(OOBB.getHole(1,1,3,1))
        part3.addNeg(OOBB.getHole(2,1,3,1))
        part3.addNeg(OOBB.getHole(3,1,3,1))
        part3.addNeg(insert("nutSideInsertM6",x=getOOBBCoord(1,3),z =-(3),depth=hornThick-3,rotZ=90,m=""))
        part3.addNeg(insert("nutSideInsertM6",x=getOOBBCoord(3,3),z =-(3),depth=hornThick-3,rotZ=270,m=""))

        #############################################
        ######  BIG Cylinder
        m= ""
        e = {   "TYPE"  :   "cylinder","M"      :  m,
                "X"     :   0,     "Y"      :   0,      "Z"     :   -hornThick,
                "WIDTH" :   0,     "HEIGHT" :   0,      "DEPTH" :   bigRingThick,
                "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
                "RAD"   :   d["BEARINGS"][bear]["INSIDEBIG"],     "RAD2"   :   0            
            }
        part3.addPos(insert(dict=e))
        e["RAD"] =  d["BEARINGS"][bear]["INSIDE"]
        e["Z"] = e["Z"] - e["DEPTH"]
        e["DEPTH"] = littleRingThick
        part3.addPos(insert(dict=e))
        ######  Servo Screws
        m= ""
        screwDepth = 10
        e = {   "TYPE"  :   "hole1.75","M"      :  m,
            "X"     :   13/2,     "Y"      :   0,      "Z"     :   -shThick,
            "DEPTH" :   screwDepth, "M" : m,
            "EX"    :   0,      "ROTZ"  :   90
        }
        part3.addNeg(insert(dict=e))
        e["X"] = -e["X"]    
        part3.addNeg(insert(dict=e))

        ######slotted ones
        e["Y"] = -e["X"]
        e["X"] = 0
        e["EX"] = 3
        e["TYPE"] = "holeSlotted1.75"
        part3.addNeg(insert(dict=e))
        e["Y"] = -e["Y"]
        part3.addNeg(insert(dict=e))

        part.addPos(translate([shShiftX,shShiftY,shShiftZ])(part3.getPart()))

    #################################################
    if True:    ###### File Output
        start=0
        splitDif=thickness/2
        
        #OOBB.savePartSplit(typ,width=width,height=height,z=-thickness,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

        OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)


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
    #############################################
    if True:    #mainPiece
        part.addPos(OOBB.OOBB.getPlate(width=width,height=height,depth=thickness,z=0))    
        part.addPos(OOBB.OOBB.getPlate(y=3/2,width=width,height=height,depth=thickness,z=0))    
        part.addPos(OOBB.OOBB.getPlate(y=-3/2,width=width,height=height,depth=thickness,z=0))    
        #mountingHoles
        part.addNeg(OOBB.getHole(1,1,width,height))
        part.addNeg(OOBB.getHole(1,3,width,height))
        part.addNeg(OOBB.getHole(3,1,width,height))
        part.addNeg(OOBB.getHole(3,3,width,height))

    #############################################
    if True:    ######  Connecting Screws
        part.addNeg(getServoConnectingScrews([0,0,0],m="",servoCutoutHeight = servoCutoutHeight,thickness=thickness))


    #############################################
    if True:#######  TOP
        
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
        part.addNeg(getRoundedClearanceCorners(width=3,height=3,m=m))

    #################################################
    if True:    ######  MIDDLE

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
        
    #################################################
    if True:    ######  Servo Holder
        part2 = item()
        
        shShiftX = 60
        shShiftY = 0    
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
        holderMainPiece = e.copy()
        part2.addPos(insert(dict=e))
        ######  Cross piece
        ex=3
        e = {   "TYPE"  :   "cube","M"      :  m,
                "X"     :    0,     "Y"      :   -15/2+ex,      "Z"     :   0,
                "WIDTH" :   42,     "HEIGHT" :   10+ex,      "DEPTH" :   holderThick,
                "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
                "RAD"   :   0,     "RAD2"   :   0            
            } 
        holderCrossPiece = e.copy()       
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
        extraScrewClearance = 2.5
        e =  {   "TYPE"  :   "holeM3","M"      :  m,
            "X"     :   obs * 1,     "Y"      :   -15/2,      "Z"     :   -servoCutoutHeight-(thickness - servoCutoutHeight)+extraScrewClearance,
            "DEPTH" :   thickness - servoCutoutHeight +extraScrewClearance
        } 
        e["TYPE"] = "holeSlottedM3"
        e["EX"] = 1
        e["DEPTH"] = 0
        #e["M"] = "#"
        e["ROTZ"] = 90
        part2.addNeg(insert(dict=e))
        e["X"] = -e["X"]
        part2.addNeg(insert(dict=e))

        #part2.appNeg()

        part.addPos(translate([shShiftX,shShiftY,shShiftZ])(part2.getPart()))   

    #################################################
    if True:    ######  Bottom

        ######  Servo bracket clearance
        e = holderCrossPiece
        e["HEIGHT"] = e["HEIGHT"] + 2
        e["WIDTH"] = e["WIDTH"] + 2
        e["Z"] = -thickness/2
        e["M"] = ""
        part.addNeg(insert(dict=e))
        e = holderMainPiece
        e["HEIGHT"] = e["HEIGHT"] +2
        e["WIDTH"] = e["WIDTH"] + 1
        e["Z"] = -thickness/2
        e["M"] = ""
        part.addNeg(insert(dict=e))


        ######  servo bracket screw clearance
        f =  {   "TYPE"  :   "holeM3","M"      :  m,
            "X"     :   obs * 1,     "Y"      :   -10/2,      "Z"     :   -servoCutoutHeight-(thickness - servoCutoutHeight)+extraScrewClearance,
            "DEPTH" :   thickness - servoCutoutHeight +extraScrewClearance
        } 
        f["TYPE"] = "holeSlottedM6"
        f["EX"] = 3
        f["DEPTH"] = 6
        f["Z"] = e["Z"] - e["DEPTH"] - 6
        f["M"] = ""
        f["ROTZ"] = 90
        part.addNeg(insert(dict=f))
        f["X"] = -f["X"]
        part.addNeg(insert(dict=f))
        ###### Bottom Screw clearance
        f = f.copy()
        f["Y"] = -f["Y"]
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
        e = {   "TYPE"  :   "cube","M"      :  m,
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


    #################################################
    if True: #######  SERVO HORN

        shShiftX = 50
        shShiftY = -50    
        shShiftZ = 0
        hornThick = 9
        bigRingThick = 1
        littleRingThick = 2.55
        shThick = hornThick+bigRingThick + littleRingThick


        part3 = item()

        part3.addPos(OOBB.OOBB.getPlate(width=3,height=1,depth=hornThick,z=0))    
        part3.addPos(OOBB.OOBB.getPlate(y=3,width=3,height=1,depth=hornThick,z=0))    
        part3.addPos(OOBB.OOBB.getPlate(y=6,width=3,height=1,depth=hornThick,z=0))    
        part3.addPos(OOBB.OOBB.getPlate(y=-3,width=3,height=1,depth=hornThick,z=0))       
        part3.addPos(OOBB.OOBB.getPlate(y=-6,width=3,height=1,depth=hornThick,z=0))    
        ######  Holes
        part3.addNeg(OOBB.getHole(1,1,3,1))
        part3.addNeg(OOBB.getHole(2,1,3,1))
        part3.addNeg(OOBB.getHole(3,1,3,1))
        part3.addNeg(insert("nutSideInsertM6",x=getOOBBCoord(1,3),z =-(3),depth=hornThick-3,rotZ=90,m=""))
        part3.addNeg(insert("nutSideInsertM6",x=getOOBBCoord(3,3),z =-(3),depth=hornThick-3,rotZ=270,m=""))

        #############################################
        ######  BIG Cylinder
        m= ""
        e = {   "TYPE"  :   "cylinder","M"      :  m,
                "X"     :   0,     "Y"      :   0,      "Z"     :   -hornThick,
                "WIDTH" :   0,     "HEIGHT" :   0,      "DEPTH" :   bigRingThick,
                "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
                "RAD"   :   d["BEARINGS"][bear]["INSIDEBIG"],     "RAD2"   :   0            
            }
        part3.addPos(insert(dict=e))
        e["RAD"] =  d["BEARINGS"][bear]["INSIDE"]
        e["Z"] = e["Z"] - e["DEPTH"]
        e["DEPTH"] = littleRingThick
        part3.addPos(insert(dict=e))
        ######  Servo Screws
        m= ""
        screwDepth = 10
        e = {   "TYPE"  :   "hole1.75","M"      :  m,
            "X"     :   13/2,     "Y"      :   0,      "Z"     :   -shThick,
            "DEPTH" :   screwDepth, "M" : m,
            "EX"    :   0,      "ROTZ"  :   90
        }
        part3.addNeg(insert(dict=e))
        e["X"] = -e["X"]    
        part3.addNeg(insert(dict=e))

        ######slotted ones
        e["Y"] = -e["X"]
        e["X"] = 0
        e["EX"] = 3
        e["TYPE"] = "holeSlotted1.75"
        part3.addNeg(insert(dict=e))
        e["Y"] = -e["Y"]
        part3.addNeg(insert(dict=e))

        part.addPos(translate([shShiftX,shShiftY,shShiftZ])(part3.getPart()))

    #################################################
    if True:    ###### File Output
        start=0
        splitDif=thickness/2
        
        OOBB.savePartSplit(typ,width=width,height=height,z=-thickness,part=part,mode=mode,extra=extra,start=start,splitDepth=splitDif,tileDif=totalHeight+3,overwrite=overwrite,justScad = OOBB.scadOnly)

        OOBB.savePart(typ,width=width,height=height,part=part,mode=mode,extra=extra,overwrite=overwrite,justScad = OOBB.scadOnly)

    ###################################
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

################################################################################
################################################################################
######  GET ROUTINES

def getPICO(pos = [0,0,0], rot=[0,0,0],priv="False",depth=3,m=""):
    part = item()
    if True:        ###### HOLES
        ######  MINI
        e = {   "TYPE"  :   "holeM2","M"      :  "",
                "X"     :   -5.7,     "Y"      :   23.5,      "Z"     :   0,
            }
        holeA = e.copy()
        part.addPos(insert(dict=e.copy()))
        e["X"] = -e["X"]
        holeB = e.copy()
        part.addPos(insert(dict=e.copy()))
        e["Y"] = -e["Y"]
        holeC = e.copy()
        part.addPos(insert(dict=e.copy()))       
        e["X"] = -e["X"]
        holeD = e.copy()
        part.addPos(insert(dict=e.copy()))
        holes = [holeA, holeB,holeC,holeD]
        for e in holes:
            e["TYPE"] = "plasticRivetM2"
            e["ROTX"] = 180
            e["Z"] = -depth
            e["M"] = ""
            part.addPos(insert(dict=e.copy()))
    
    if True:        ###### HEADER SPACES
        #############################################
        ######  NORMAL
        extraSpace = 1
        e = {   "TYPE"  :   "cube","M"      :  "",
                "X"     :   -8.89,     "Y"      :   0,      "Z"     :   0,
                "WIDTH" :   2.54+extraSpace,     "HEIGHT" :   50.8+extraSpace,      "DEPTH" :   2.5,
                "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
                "RAD"   :   0,     "RAD2"   :   0            
            }
        part.addPos(insert(dict=e.copy()))
        e["X"] = -e["X"]
        part.addPos(insert(dict=e.copy()))
        e = {   "TYPE"  :   "cube","M"      :  "",
                "X"     :   -0,     "Y"      :   24.13,      "Z"     :   0,
                "WIDTH" :   7.62+extraSpace,     "HEIGHT" :   2.54+extraSpace,      "DEPTH" :   2.5,
                "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
                "RAD"   :   0,     "RAD2"   :   0            
            }
        part.addPos(insert(dict=e.copy()))    
    
    

    return translate(pos)(rotate(rot)(part.getPart())).set_modifier(m)

def getRoundedClearanceCorners(pos=[0,0,0],rot=[0,0,0],m="",width=3,height=3):
    part = item()
    e = {"TYPE"  :   "roundedClearance",        "M"      :  m,
            "X"     :   getOOBBCoord(1,width),     "Y"      :   getOOBBCoord(1,height),      "Z"     :   0,
            "WIDTH" :   0,     "HEIGHT" :   0,      "DEPTH" :   6,
            "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
            "RAD"   :   0,     "RAD2"   :   0,      "EX"    :   "SOLID"            
        }    
    part.addNeg(insert(dict=e))
    e["X"] = getOOBBCoord(width,width)
    e["Y"] = getOOBBCoord(1,height)
    e["ROTZ"] = 90
    part.addNeg(insert(dict=e))
    e["X"] = getOOBBCoord(width,width)
    e["Y"] = getOOBBCoord(height,height)
    e["ROTZ"] = 180
    part.addNeg(insert(dict=e))
    e["X"] = getOOBBCoord(1,width)
    e["Y"] = getOOBBCoord(height,height)
    e["ROTZ"] = 270
    part.addNeg(insert(dict=e))

    return translate(pos)(rotate(rot)(part.getPart())).set_modifier(m)

def getServoConnectingScrews(pos=[0,0,0],rot=[0,0,0],m="",servoCutoutHeight=7,thickness=36,ex=0,):
    part=item()
    extraScrewClearance = 2.5
    # holeServoTopA = {   "TYPE"  :   "holeM3","M"      :  m,
    #         "X"     :   obs * 1,     "Y"      :   15/2,      "Z"     :   -servoCutoutHeight-(thickness - servoCutoutHeight)+extraScrewClearance-ex,
    #         "DEPTH" :   thickness - servoCutoutHeight +extraScrewClearance+ex
    #     }        
    holeServoTopA = {   "TYPE"  :   "holeM3","M"      :  m,
             "X"     :   obs * 1,     "Y"      :   15/2,      "Z"     :   0,
             "DEPTH" :   0
    }
    part.addPos(insert(dict=holeServoTopA))
    holeServoTopB = holeServoTopA.copy()
    holeServoTopB["Y"] = -holeServoTopA["Y"]
    part.addPos(insert(dict=holeServoTopB))
    
    holeServoBottomA = holeServoTopA.copy()
    holeServoBottomA["X"] = -holeServoTopA["X"]
    part.addPos(insert(dict=holeServoBottomA))
    holeServoBottomB = holeServoBottomA.copy()
    holeServoBottomB["Y"] = -holeServoBottomA["Y"]
    #holeServoBottomB["M"] = "#"
    part.addPos(insert(dict=holeServoBottomB))

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
        part.addPos(insert(dict=jj))
        count = count +1

    return translate(pos)(rotate(rot)(part.getPart())).set_modifier(m)


def getServoHole(pos=[0,0,0],rot=[0,0,0],m="",depth=18):
    part = item()
    # m="!"
    if True:  ###### Main Body
        e = {   "TYPE"  :   "cube","M"      :  m,
                "X"     :   11,     "Y"      :   0,      "Z"     :   0,
                "WIDTH" :   58+6,     "HEIGHT" :   22,      "DEPTH" :   6,
                "ROTX"  :   0,     "ROTY"   :   0,      "ROTZ"  :   0,
                "RAD"   :   0,     "RAD2"   :   0            
            }
        ######  BIG
        part.addNeg(insert(dict=e))
        e["WIDTH"] = 42
        e["DEPTH"] = 40
        e["Z"] = 10
        ######  SMALL
        part.addNeg(insert(dict=e))
        ######  CLEARANCE
        e["WIDTH"] = 52
        e["HEIGHT"] = 3
        e["DEPTH"] = 3
        e["Z"] = 3

    if True: ######  HOLES
        part.addNeg(insert(dict=e))
        dd = 9
        e = {   "TYPE"  :   "holeSlottedM3","M"      :  m,
            "X"     :   -14,     "Y"      :   5,      "Z"     :   0,
            "DEPTH" :   dd,      "EX"     :   3
        }
        holeA = e.copy()
        part.addNeg(insert(dict=e))
        e["Y"] = -e["Y"]
        holeB = e.copy()
        part.addNeg(insert(dict=e))
        e["X"] = 36
        holeC = e.copy()
        part.addNeg(insert(dict=e))
        e["Y"] = -e["Y"]
        holeD = e.copy()
        part.addNeg(insert(dict=e))
        ###### side insert nuts
        holes = [holeA, holeB, holeC, holeD]
        types = ["nutSideInsertM3","nutSideInsertM3","nutM3","nutM3"]
        rots = [90,90,90,90]
        count = 0
        for e in holes:    
            e["TYPE"] = types[count]
            e["EX"]  = 0
            e["DEPTH"] = 3
            e["Z"] = 3+3
            #e["M"] = "#"
            e["ROTZ"] = rots[count]
            part.addNeg(insert(dict=e))
            count = count + 1
        ###### socketCap Cutouts
        holes = [holeA, holeB, holeC, holeD]
        for e in holes:    
            #e["TYPE"] = "socketCapM3"
            #e["TYPE"] = "nutM3"
            e["DEPTH"] = depth - 3
            e["Z"] = depth
            #part.addNeg(insert(dict=e))

    return translate(pos)(rotate(rot)(part.getPart())).set_modifier(m)