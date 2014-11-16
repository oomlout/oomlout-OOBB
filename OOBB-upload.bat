@echo off
set WIKBdirectory=C:\GH\oomlout-WIKB\


echo on



REM
REM 	UPLOADING PART PAGES
REM
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\BP\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\CI\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\JA\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MM\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MP\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SC\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SP\
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'


echo off


REM     UPLOADING Index Files

	REM AllParts
set extra=allParts
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOBB\parts\%extra%-wiki.html -wb projects/OOBB/%extra%

set extra=pictureIndex
python %WIKBdirectory%WIKBmain.py -si oomlout -bd C:\GH\oomlout-OOBB\parts\%extra%-wiki.html -wb projects/OOBB/%extra%



