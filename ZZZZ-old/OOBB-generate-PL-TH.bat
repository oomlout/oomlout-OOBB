REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 


ECHO PART %PART%


SET DIRECTORY=parts\%TYPE%\%PART%\

SET EXTRAFILESTRING=-%EXTRA%

IF %EXTRA%==NONE SET EXTRAFILESTRING=

SET FILE=OOBB-%PART%%EXTRAFILESTRING%
SET FILE3DPR=OOBB-%PART%%EXTRAFILESTRING%-3DPR
SET FILEMD=README.md

SET FILEFULL=%DIRECTORY%%FILE%
SET FILEFULL3DPR=%DIRECTORY%%FILE3DPR%
SET FILEFULLMD=%DIRECTORY%%FILEMD%

SET NAME=%PART%

mkdir %DIRECTORY%

SET MODE=%PART%

ECHO MODE %MODE%

SET STYLE=3DPR
del %FILEFULL3DPR%.stl
openscad -o %FILEFULL3DPR%.stl -D "o=\"3DPR\";w=%WIDTH%;h=%HEIGHT%;t=%thick%;m=\"%MODE%\";extra=\"%EXTRA%\"" OOBB-generate-%STYLE%.scad

SET STYLE=TRUE
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "o=\"3D\";w=%WIDTH%;h=%HEIGHT%;t=%thick%;m=\"%MODE%\";extra=\"%EXTRA%\";"  OOBB-generate-%STYLE%.scad


SET STYLE=TRUE
del %FILEFULL%.png
openscad -o %FILEFULL%.png -D "o=\"3D\";w=%WIDTH%;h=%HEIGHT%;t=%thick%;m=\"%MODE%\";extra=\"%EXTRA%\"" --render OOBB-generate-%STYLE%.scad

SET STYLE=TRUE
del %FILEFULL%.dxf
openscad -o %FILEFULL%.dxf -D "o=\"LAZE\";w=%WIDTH%;h=%HEIGHT%;t=%thick%;m=\"%MODE%\";extra=\"%EXTRA%\"" --render OOBB-generate-%STYLE%.scad

SET STYLE=TRUE
del %FILEFULL%.svg
openscad -o %FILEFULL%.svg -D "o=\"LAZE\";w=%WIDTH%;h=%HEIGHT%;t=%thick%;m=\"%MODE%\";extra=\"%EXTRA%\"" --render OOBB-generate-%STYLE%.scad
del %FILEFULL%.pdf
inkscape.exe --export-filename="%FILEFULL%.pdf" "%FILEFULL%.svg"	
	




del %FILEFULLMD%
copy OOBB-template\OOBB-githubMD.md %FILEFULLMD%
fart %FILEFULLMD% ??NAME?? %NAME%