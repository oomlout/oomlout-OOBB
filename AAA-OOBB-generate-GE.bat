SET WIDTH=03
SET HEIGHT=00
SET TYPE=GE
SET EXTRA=NONE

SET SKIP= 
SET SKIP=REM 

SET CALLSTYLE=CALL

SET WIDTH=03
SET HEIGHT=01
SET PART=GE-%WIDTH%-%HEIGHT%-LI
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat


SET WIDTH=01
SET PART=GE-%WIDTH%
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET WIDTH=01
SET PART=GE-%WIDTH%-GM1
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat


SET WIDTH=01
SET PART=GE-%WIDTH%-606
%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET WIDTH=03
SET PART=GE-%WIDTH%
%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET WIDTH=03
SET PART=GE-%WIDTH%-GM1
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat


SET WIDTH=05
SET PART=GE-%WIDTH%
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET WIDTH=07
SET PART=GE-%WIDTH%
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat
