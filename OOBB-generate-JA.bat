REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 


SET DIRECTORY=parts\JA\JA-%WIDTH%\

SET FILE=OOBB-JA-%WIDTH%
SET FILE3DPR=OOBB-JA-%WIDTH%-3DPR
SET FILEMD=README.md

SET FILEFULL=%DIRECTORY%%FILE%
SET FILEFULL3DPR=%DIRECTORY%%FILE3DPR%
SET FILEFULLMD=%DIRECTORY%%FILEMD%

SET HEIGHT=01
SET NAME=JA-%WIDTH%

mkdir %DIRECTORY%

SET MODE=JA3D
SET STYLE=3DPR
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\""  OOBB-generate.scad
del %FILEFULL3DPR%.stl
openscad -o %FILEFULL3DPR%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" OOBB-generate3DPR.scad
del %FILEFULL%.png
openscad -o %FILEFULL%.png -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" --render --colorscheme OOBB OOBB-generate.scad




del %FILEFULLMD%
copy OOBB-template\OOBB-githubMD.md %FILEFULLMD%
fart %FILEFULLMD% ??NAME?? %NAME%