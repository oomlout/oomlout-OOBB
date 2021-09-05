@echo off
set IMAGdirectory=C:\GH\oomlout-IMAG\


set OOMPDirectory=C:\GH\oomlout-OOBB\





REM
REM Generate Image Resolution Single
REM

	REM      Generate Directory Of Images
python %IMAGdirectory%IMAGmain.py -di %OOMPDirectory% -re 87,90,140,420,600,1500 