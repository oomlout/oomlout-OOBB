REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 

SET WIDTH=0
SET HEIGHT=0


SET WIDTH=03
CALL OOBB-generate-WH.bat
SET WIDTH=05
CALL OOBB-generate-WH.bat
SET WIDTH=07
CALL OOBB-generate-WH.bat

SET TYPE=BP
SET PART=BP-606-03-03
CALL OOBB-generate-NICHE-generic.bat
