REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 


SET DIRECTORY=parts\WH\WH-%WIDTH%\

SET FILE=OOBB-WH-%WIDTH%
SET FILE3DPR=OOBB-WH-%WIDTH%-3DPR
SET FILEMD=README.md

SET FILEFULL=%DIRECTORY%%FILE%
SET FILEFULL3DPR=%DIRECTORY%%FILE3DPR%
SET FILEFULLMD=%DIRECTORY%%FILEMD%


SET NAME=WH-%WIDTH%

mkdir %DIRECTORY%

REM 3D files

SET MODE=WH
SET STYLE=3DPR
del %FILEFULL3DPR%.stl
openscad -o %FILEFULL3DPR%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" OOBB-generate-%STYLE%.scad


SET STYLE=TRUE
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" OOBB-generate-%STYLE%.scad


SET STYLE=TRUE
del %FILEFULL%.png
openscad -o %FILEFULL%.png -D "w=%WIDTH%;h=%HEIGHT%;m=\"%MODE%\"" --render OOBB-generate-%STYLE%.scad

REM Markdown files

del %FILEFULLMD%
copy OOBB-template\OOBB-githubMD.md %FILEFULLMD%
fart %FILEFULLMD% ??NAME?? %NAME%




