@echo off
set WIKBdirectory=C:\GH\oomlout-WIKB\
set FTPPDirectory=C:\GH\oomlout-FTPP\
set UPLOADDIRECTORY=C:\GH\oomlout-OOBB\redirect\

echo on

REM
REM 	UPLOADING PART PAGES
REM
set extra1=allParts
set extra2=pictureIndex

set OOBBpartsDirectory=C:\GH\oomlout-OOBB\part\BP\,C:\GH\oomlout-OOBB\part\CI\,C:\GH\oomlout-OOBB\part\JA\,C:\GH\oomlout-OOBB\part\MM\,C:\GH\oomlout-OOBB\part\MP\,C:\GH\oomlout-OOBB\part\PL\,C:\GH\oomlout-OOBB\part\SC\,C:\GH\oomlout-OOBB\part\SP\,C:\GH\oomlout-OOBB\part\%extra1%-wiki.html,C:\GH\oomlout-OOBB\part\%extra2%-wiki.html
python %WIKBdirectory%WIKBmain.py -rm A -si oomlout -bd %OOBBpartsDirectory% -wb projects/oobb/part/ -fa '-wiki.html'

REM
REM 	UPLOADING Redirects
REM

REM LowerCase oomlout.com
python %FTPPdirectory%FTPPmain.py -di %UPLOADDIRECTORY% -ft ftp.oomlout.com -us redirects@oomlout.com -pw NEphEFr5 -fb / -lc TRUE

REM UpperCase oomlout.com
python %FTPPdirectory%FTPPmain.py -di %UPLOADDIRECTORY% -ft ftp.oomlout.com -us redirects@oomlout.com -pw NEphEFr5 -fb /