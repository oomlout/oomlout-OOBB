SET HEIGHT=03
SET WIDTH=03
SET TYPE=WI

SET SKIP= 
REM SET SKIP=REM 


SET CALLSTYLE=CALL

SET GENE=
REM SET GENE=3DPR

SET PART=WI-M2-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-BA-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-HV-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-SM-%WIDTH%-%HEIGHT%
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-CS
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-NU
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-BA
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-BAH
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat

SET PART=WI-BP-%WIDTH%-%HEIGHT%-BAN
SET EXTRA=NONE
%SKIP%%CALLSTYLE% AAA-OOBB-generate-PART%GENE%.bat
