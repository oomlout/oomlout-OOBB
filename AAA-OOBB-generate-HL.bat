SET WIDTH=03
SET HEIGHT=03
SET TYPE=HL

SET SKIP= 
SET SKIP=REM 

SET CALLSTYLE=CALL

SET PART=HL-RC-03-03
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat

SET PART=HL-CN-03-03
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat


SET HEIGHT=03
SET WIDTH=03
SET TYPE=HL
SET PART=HL-GM1-%WIDTH%-%HEIGHT%
SET EXTRA=TOP
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat
SET EXTRA=BOTTOM
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART.bat


SET HEIGHT=03
SET WIDTH=03
SET TYPE=HL
SET PART=HL-GM1-%WIDTH%-%HEIGHT%-BP6803
SET EXTRA=NONE
%CALLSTYLE% AAA-OOBB-generate-PART.bat
