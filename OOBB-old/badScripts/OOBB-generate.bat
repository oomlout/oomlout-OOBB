@echo on
set TPGEdirectory=C:\GH\oomlout-TPGE\
set REDIdirectory=C:\GH\oomlout-OOBB\redirect\
set OOBBdirectory=C:\GH\oomlout-OOBB\
set OOBBwikiDirectory=C:\GH\oomlout-OOBB.wiki\

REM
REM     Generating all redirect pages
REM

set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\BP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\CI\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\JA\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MM\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SC\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\GE\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\HL\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\WI\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-Redirect-template.tmpl.html -of %REDIdirectory%%%%%ID%%%%\index.html


set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\

REM
REM     Generating all markdown pages
REM


set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\BP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\CI\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\GE\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\HL\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\HO\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\HX\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\JA\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MM\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SC\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SL\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\TP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\WA\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\WI\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm %OOBBdirectory%template/OOBB-template.tmpl.md -of %OOBBwikiDirectory%%%%%ID%%%%.md




REM
REM      Generating Index Files
REM
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\
set extra=allParts
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp -tm %OOBBdirectory%template/OOBB-%extra%.tmpl.md -of %OOBBwikiDirectory%%extra%.md

set extra=pictureIndex
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex C:\GH\oomlout-OOBB\OOBB-helpers.oomp -tm %OOBBdirectory%template/OOBB-%extra%.tmpl.md -of %OOBBwikiDirectory%%extra%.md