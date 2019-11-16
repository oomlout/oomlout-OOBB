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
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
del %FILEFULL3DPR%.stl
openscad -o %FILEFULL3DPR%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate3DPR.scad
del %FILEFULL%.png
openscad -o %FILEFULL%.png -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" --render OOBB-generate.scad
SET MODE=PL2D
del %FILEFULL%.svg
openscad -o %FILEFULL%.svg -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
del %FILEFULL%.dxf
openscad -o %FILEFULL%.dxf -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad


del %FILEFULLMD%
copy OOBB-template\OOBB-githubMD.md %FILEFULLMD%
fart %FILEFULLMD% ??NAME?? %NAME%




