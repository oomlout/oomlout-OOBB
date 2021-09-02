from datetime import datetime
import time

import OOMP
import TAXAparts
import TAXAdetails

import datetime
from operator import itemgetter

baseDir = ""
templateDir = baseDir + "template\\"
labelDir = baseDir + "label\\"
tempDir = baseDir + "temp\\"

def getPartByOOMPID(part):
    #print("     Get Part By TAXA: " + part)
    for x in OOMP.parts:
        ##print("        " + str(x.getTag("taxaID").value))
        if x.getTag("oompID").value == part:
            return x     
    return OOMP.oompItem("")
