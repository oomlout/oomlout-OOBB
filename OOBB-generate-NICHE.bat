REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 



SET WIDTH=0
SET HEIGHT=0


SET TYPE=BP
SET PART=BP-606-03-03
CALL OOBB-generate-NICHE-generic.bat

SET TYPE=HL
SET PART=HL-N17-05-03
CALL OOBB-generate-NICHE-generic.bat

SET TYPE=HL
SET PART=HL-SM-03-03
CALL OOBB-generate-NICHE-generic.bat


SET TYPE=WH
SET WIDTH=03
CALL OOBB-generate-NICHE-generic.bat





