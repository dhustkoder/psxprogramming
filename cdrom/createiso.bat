@ECHO OFF
DEL *.ISO
DEL *.IMG
DEL *.TOC
@ECHO ON

BUILDCD.EXE -l -iPSXTEST.IMG PSXTEST.CTI
PSXLICENSE.EXE /eu /i PSXTEST.IMG
STRIPISO.EXE S 2352 PSXTEST.IMG PSXTEST.ISO

DEL *.IMG
DEL *.TOC
