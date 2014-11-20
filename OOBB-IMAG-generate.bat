@echo off
set IMAGdirectory=C:\GH\oomlout-IMAG\


set OOBBDirectory=C:\GH\oomlout-OOBB\




REM
REM Generate Image Resolution Single
REM

	REM      Generate Directory Of Images
python %IMAGdirectory%IMAGmain.py -di %OOBBDirectory% -re 87,140,420,1500 