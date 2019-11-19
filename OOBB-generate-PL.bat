REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 


SET DIRECTORY=parts\PL\PL-%WIDTH%-%HEIGHT%\

SET FILE=OOBB-PL-%WIDTH%-%HEIGHT%
SET FILE3DPR=OOBB-PL-%WIDTH%-%HEIGHT%-3DPR
SET FILEMD=README.md

SET FILEFULL=%DIRECTORY%%FILE%
SET FILEFULL3DPR=%DIRECTORY%%FILE3DPR%
SET FILEFULLMD=%DIRECTORY%%FILEMD%


SET NAME=PL-%WIDTH%-%HEIGHT%

mkdir %DIRECTORY%

SET MODE=PL3D
SET STYLE=TRUE
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" OOBB-generate-%STYLE%.scad

SET STYLE=3DPR
del %FILEFULL3DPR%.stl
openscad -o %FILEFULL3DPR%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" OOBB-generate-%STYLE%.scad

SET STYLE=TRUE
del %FILEFULL%.png
openscad -o %FILEFULL%.png -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" --render OOBB-generate-%STYLE%.scad
SET MODE=PL2D

SET STYLE=TRUE
del %FILEFULL%.svg
openscad -o %FILEFULL%.svg -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" OOBB-generate-%STYLE%.scad

SET STYLE=TRUE
del %FILEFULL%.dxf
openscad -o %FILEFULL%.dxf -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" OOBB-generate-%STYLE%.scad


del %FILEFULLMD%
copy OOBB-template\OOBB-githubMD.md %FILEFULLMD%
fart %FILEFULLMD% ??NAME?? %NAME%




