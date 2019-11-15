REM ######  OOBB GENERATE FILES  ######
REM ###################################
REM 


SET DIRECTORY=parts\TEST\
SET FILE=OOBB-TEST-HOLE-HoleTolerance
SET FILEFULL=%DIRECTORY%%FILE%


mkdir %DIRECTORY%

SET MODE=PLTEST-HoleTolerance
del %FILEFULL%.stl
openscad -o %FILEFULL%.stl -D "m=""%MODE%""" OOBB-generate.scad

