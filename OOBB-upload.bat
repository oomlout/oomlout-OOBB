@echo off
set WIKBdirectory=C:\GH\oomlout-WIKB\


echo on


set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\
REM
REM 	UPLOADING PART PAGES
REM

python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'

echo off


REM     UPLOADING Index Files

	REM AllParts
REM python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOBB\parts\allParts-wiki.html -wb projects/OOBB/allParts



