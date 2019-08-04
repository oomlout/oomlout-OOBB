@echo off
set COREdirectory=C:\GH\oomlout-CORE\


set OOMPDirectory=C:\GH\oomlout-OOBB\part\

REM Overwrite



REM
REM Generate Image Resolution Single
REM

	REM      Generate Directory Of Images
python %COREdirectory%COREmain.py -di %OOMPDirectory% -re 87,90,140,420,600,1500 %overwrite%

