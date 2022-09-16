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
