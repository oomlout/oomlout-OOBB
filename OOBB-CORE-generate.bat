@echo off
set COREdirectory=C:\GH\oomlout-CORE\


set PRODDirectory=C:\GH\oomlout-OOBB\

REM Overwrite
REM set overWrite= -ow TRUE
set overWrite=

REM
REM Generate Image Resolution Single
REM

	REM      Generate Directory Of Images
python %COREdirectory%COREmain.py -di %PRODDirectory% -re 87,140,420,1500 %overwrite%

	REM      Generate views from pdf
python %COREdirectory%COREmain.py -di %PRODDirectory%part\pl\ -re 87,140,420,1500 -fp TRUE %overwrite%