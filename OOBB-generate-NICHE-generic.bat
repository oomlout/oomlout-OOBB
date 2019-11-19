REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 



SET TYPE=HL
SET PART=HL-N17-05-03


SET DIRECTORY=parts\%TYPE%\%PART%\

SET FILE=OOBB-%PART%
SET FILE3DPR=OOBB-%PART%-3DPR
SET FILEMD=README.md

SET FILEFULL=%DIRECTORY%%FILE%
SET FILEFULL3DPR=%DIRECTORY%%FILE3DPR%
SET FILEFULLMD=%DIRECTORY%%FILEMD%

SET NAME=%PART%

mkdir %DIRECTORY%

SET MODE=%PART%

SET STYLE=TRUE
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\""  OOBB-generate-%STYLE%.scad

SET STYLE=3DPR
del %FILEFULL3DPR%.stl
openscad -o %FILEFULL3DPR%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\";s=\"%STYLE%\"" OOBB-generate-%STYLE%.scad

SET STYLE=TRUE
del %FILEFULL%.png
openscad -o %FILEFULL%.png -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\";s=\"%STYLE%\"" --render --colorscheme OOBB OOBB-generate-%STYLE%.scad




del %FILEFULLMD%
copy OOBB-template\OOBB-githubMD.md %FILEFULLMD%
fart %FILEFULLMD% ??NAME?? %NAME%