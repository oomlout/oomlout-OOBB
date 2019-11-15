REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 


SET DIRECTORY=parts\PL\PL-%WIDTH%-%HEIGHT%\
SET FILE=OOBB-PL-%WIDTH%-%HEIGHT%
SET FILEFULL=%DIRECTORY%%FILE%

mkdir %DIRECTORY%

SET MODE=PL3D
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
del %FILEFULL%.png
openscad -o %FILEFULL%.png -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
SET MODE=PL2D
del %FILEFULL%.svg
openscad -o %FILEFULL%.svg -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad
del %FILEFULL%.dxf
openscad -o %FILEFULL%.dxf -D "w=%WIDTH%;h=%HEIGHT%;m=""%MODE%""" OOBB-generate.scad




