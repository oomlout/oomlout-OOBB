@echo off
set WIKBdirectory=C:\GH\oomlout-WIKB\


echo on

REM
REM 	UPLOADING PART PAGES
REM
set extra1=allParts
set extra2=pictureIndex

set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\BP\,C:\GH\oomlout-OOBB\part\CI\,C:\GH\oomlout-OOBB\part\JA\,C:\GH\oomlout-OOBB\part\MM\,C:\GH\oomlout-OOBB\part\MP\,C:\GH\oomlout-OOBB\part\PL\,C:\GH\oomlout-OOBB\part\SC\,C:\GH\oomlout-OOBB\part\SP\,C:\GH\oomlout-OOBB\part\%extra1%-wiki.html,C:\GH\oomlout-OOBB\part\%extra2%-wiki.html
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
