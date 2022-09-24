import OOBB
import OOBB_BP
import OOBB_HL
import OOBB_SHEET

overwrite=True
#overwrite=False

OOBB.scadOnly=True
OOBB.scadOnly=False

###### ALL-
#OOBB.makeAll(overwrite=overwrite)

###### BP
#OOBB_BP.makeBPs(overwrite)
#OOBB_BP.makeBP(5,3,12,"6805",overwrite)
#OOBB_BP.makeBP(5,5,12,"6808",overwrite)
#OOBB_BP.makeBP(7,5,12,"6810",overwrite)

#OOBB_BP.makeBP(5,5,12,"6810",overwrite)
#OOBB_BP.makeBP(3,3,12,"606",overwrite)


###### CIs
#OOBB.makeCIs(overwrite=overwrite)
#OOBB.makeCI(3,3,overwrite=overwrite)

######  HLs
#OOBB_HL.makeHLs(overwrite)
#OOBB_HL.makeHL_ENDO(overwrite)
#OOBB_HL.makeHL_T100(overwrite)
#OOBB_HL.makeHL_BREB400(overwrite)
#OOBB_HL.makeHL_BREB170(overwrite)

######  JAs
OOBB.makeJAs(overwrite)
#OOBB.makeJA(3,overwrite)

###### PLs
#OOBB.makePLs(overwrite=overwrite)
#OOBB.makePL(5,3,3,overwrite=overwrite)




###### SHEETS
#OOBB_SHEET.makeSheets(overwrite)

#input("ALL DONE")