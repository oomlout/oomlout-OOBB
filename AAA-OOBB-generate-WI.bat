SET HEIGHT=03
SET WIDTH=03
SET TYPE=WI
SET PART=WI-M2-%WIDTH%-%HEIGHT%
SET EXTRA=NONE

SET SKIP= 
SET SKIP=REM 


SET CALLSTYLE=CALL

%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-BA-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-HV-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-SM-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-CS
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-NU
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-BA
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-BAH
SET EXTRA=NONE
%CALLSTYLE% AAA-OOBB-generate-PART.bat
