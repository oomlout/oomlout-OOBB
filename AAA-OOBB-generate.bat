REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 

SET SKIP= 
SET SKIP=REM 


SET CALLSTYLE=CALL

REM WI

SET HEIGHT=03
SET WIDTH=03
SET TYPE=WI
SET PART=WI-M2-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-BA-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-HV-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-SM-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat






SET HEIGHT=05
SET WIDTH=05
SET TYPE=TEST
SET PART=TEST-GM1SHAFT-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat


SET CALLSTYLE=CALL

SET HEIGHT=05
SET WIDTH=05
SET TYPE=TEST
SET PART=TEST-OOEBWIMOT-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

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


SET HEIGHT=03
SET WIDTH=03
SET TYPE=HL
SET PART=HL-GM1-%WIDTH%-%HEIGHT%
SET EXTRA=WIRINGBLOCK
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat
SET EXTRA=BASE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat




