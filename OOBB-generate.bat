@echo on
set TPGEdirectory=C:\GH\oomlout-TPGE\






set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\

REM
REM     Generating all part pages
REM

set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\BP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\CI\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\JA\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MM\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\MP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\PL\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SC\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\SP\
python %TPGEdirectory%TPGEmain.py -rm A -bd %OOBBpartsDirectory%\ -xa .oomp,xml -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp,C:\GH\oomlout-OOBB\part\OOBB-tag.xml -tm template/OOBB-template.tmpl.html -of %OOBBpartsDirectory%%%%%ID%%%%\%%%%ID%%%%-wiki.html




REM
REM      Generating Index Files
REM
set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\
set extra=allParts
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp -tm template/OOBB-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html

set extra=pictureIndex
	REM All Parts
python %TPGEdirectory%TPGEmain.py -bd %OOBBpartsDirectory% -xa .oomp -ex %OOBBpartsDirectory%,C:\GH\oomlout-OOBB\OOBB-helpers.oomp -tm template/OOBB-%extra%.tmpl.html -of %OOBBpartsDirectory%%extra%-wiki.html