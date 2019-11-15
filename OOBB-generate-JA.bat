REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 


SET DIRECTORY=parts\JA\JA-%WIDTH%\
SET FILE=OOBB-JA-%WIDTH%
SET FILEFULL=%DIRECTORY%%FILE%

SET HEIGHT=01

mkdir %DIRECTORY%

SET MODE=JA3D
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
REM del %FILEFULL%.png
REM openscad -o %FILEFULL%.png -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
REM SET MODE=PL2D
REM del %FILEFULL%.svg
REM openscad -o %FILEFULL%.svg -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
REM del %FILEFULL%.dxf
REM openscad -o %FILEFULL%.dxf -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad




