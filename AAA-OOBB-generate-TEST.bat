SET SKIP= 
SET SKIP=REM 

SET CALLSTYLE=CALL

SET HEIGHT=05
SET WIDTH=05
SET TYPE=TEST
SET PART=TEST-N20SHAFT-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat


SET HEIGHT=05
SET WIDTH=05
SET TYPE=TEST
SET PART=TEST-GM1SHAFT-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET HEIGHT=05
SET WIDTH=05
SET TYPE=TEST
SET PART=TEST-OOEBWIMOT-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET HEIGHT=01
SET WIDTH=03
SET TYPE=CA
SET PART=CA-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%CALLSTYLE% AAA-OOBB-generate-PART.bat

