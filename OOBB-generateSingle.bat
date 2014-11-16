@echo off
set TPGEdirectory=C:\GH\oomlout-TPGE\
set WIKBdirectory=C:\GH\oomlout-WIKB\
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\

set id=PL-03-03

REM
REM Generate Part Page
REM


set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\
	REM      Generate PL pages
REM python %TPGEdirectory%TPGEmain.py -id %id% -bd %OOBBpartsDirectory%%id%\ -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%id%/%id%-wiki.html
	
	REM Upload PL Page
REM python %WIKBdirectory%WIKBmain.py -si oomlout -bd %OOBBpartsDirectory%%id%/%id%-wiki.html -wb projects/oobb/part/%id% 

REM
REM Generate Info Page
REM
set extra=pictureIndex
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\
	REM      Generate Page
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -tm template/OOBB-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html
	
	REM Upload Page	
python %WIKBdirectory%WIKBmain.py -si oomlout -bd %OOBBpartsDirectory%%extra%-wiki.html -wb projects/oobb/%extra%




	REM Making all Markdown Pages
	REM 	Markdown Pages
REM python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOMP\OOMP-helpers.oomp -tm template/OOMP-template.tmpl.md -of %OOBBpartsDirectory%%%%%ID%%%%\README.md