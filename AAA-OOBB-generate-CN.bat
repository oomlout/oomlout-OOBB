SET WIDTH=03
SET HEIGHT=03
SET TYPE=HL

SET SKIP= 
REM SET SKIP=REM 

SET CALLSTYLE=CALL

SET HEIGHT=05
SET WIDTH=05
SET TYPE=CN
SET PART=CN-BAS2-%WIDTH%-%HEIGHT%
SET EXTRA=BOTTOM

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET HEIGHT=05
SET WIDTH=05
SET TYPE=CN
SET PART=CN-BAS2-%WIDTH%-%HEIGHT%
SET EXTRA=TOP

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET HEIGHT=03
SET WIDTH=03
SET TYPE=HL
SET PART=HL-N20-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat





