@ECHO OFF
CLS


REM INTRO
ECHO.
ECHO. 
ECHO. 
ECHO.                lyrics2pw  [Memorable Secure Password Generator]
ECHO. 
ECHO. 
ECHO. 
ECHO.    Welcome to lyrics2pw!  This program requires the following dependencies:
ECHO. 
ECHO.
ECHO.   1.  manifest-lyrics2pw-embryo.py  (this file exists in current directory)
ECHO.   2.  python3
ECHO.   3.  Qt5  and  PyQt5
ECHO.   4.  g++  (available in system path)
ECHO.   5.  Python Win32 Extensions  (optional - provides Text-To-Speech support)
ECHO.
ECHO.
ECHO.
ECHO.      The system will now verify all of these dependencies are available.
ECHO.
ECHO.
ECHO.
ECHO Note:  Press  Ctrl+C  or  Ctrl+Break  to quit, or:
ECHO.
PAUSE 
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.                           lyrics2pw DEPENDENCY CHECK:
ECHO.


REM VERIFY EMBRYO FILE EXISTS
SET ERRORLEVEL=
IF NOT EXIST manifest-lyrics2pw-embryo.py GOTO FAILEMBRYO
ECHO.
ECHO.
ECHO.
ECHO DEPENDENCY CHECK #1 PASSED:  manifest-lyrics2pw-embryo.py exists in directory.


REM VERIFY PYTHON DEPENDENCY
SET ERRORLEVEL=
ECHO import sys > dummylpw.py
ECHO if sys.version.startswith("3"): sys.exit(77) >> dummylpw.py
python dummylpw.py
IF ERRORLEVEL 78 GOTO FAILUNDEF
IF ERRORLEVEL 77 GOTO PASSPYTHON
GOTO FAILPYTHON

:PASSPYTHON
ECHO DEPENDENCY CHECK #2 PASSED:  Command  python  does run  python3.


REM VERIFY PYQT DEPENDENCY
SET ERRORLEVEL=
ECHO import sys > dummylpw.py
ECHO try: from PyQt5 import QtCore, QtGui, QtWidgets >> dummylpw.py
ECHO except: sys.exit(55) >> dummylpw.py
ECHO sys.exit(77) >> dummylpw.py
python dummylpw.py
IF ERRORLEVEL 78 GOTO FAILUNDEF
IF ERRORLEVEL 77 GOTO PASSPYQT
IF ERRORLEVEL 56 GOTO FAILUNDEF
IF ERRORLEVEL 55 GOTO FAILPYQT
IF ERRORLEVEL 0 GOTO FAILUNDEF

:PASSPYQT
ECHO DEPENDENCY CHECK #3 PASSED:  Qt5  and  PyQt5  are installed.


REM VERIFY g++ DEPENDENCY
SET ERRORLEVEL=
ECHO int main() {return(0);} > dummylpw.cpp
g++ dummylpw.cpp -o dummylpw.exe
IF NOT EXIST dummylpw.exe GOTO FAILGPP
ECHO DEPENDENCY CHECK #4 PASSED:  g++ exists in system path.


REM VERIFY WIN32COM DEPENDENCY
SET ERRORLEVEL=
ECHO import sys > dummylpw.py
ECHO try: import win32com.client >> dummylpw.py
ECHO except: sys.exit(55) >> dummylpw.py
ECHO sys.exit(77) >> dummylpw.py
python dummylpw.py
IF ERRORLEVEL 78 GOTO FAILUNDEF
IF ERRORLEVEL 77 GOTO PASSWIN32COM
IF ERRORLEVEL 56 GOTO FAILUNDEF
IF ERRORLEVEL 55 GOTO FAILWIN32COM
IF ERRORLEVEL 0 GOTO FAILUNDEF

:PASSWIN32COM
ECHO DEPENDENCY CHECK #5 PASSED:  Python Win32 Extensions are installed.
GOTO DOMANIFESTATION

:FAILWIN32COM
ECHO DEPENDENCY CHECK #5 FAILURE:  Python Win32 Extensions are NOT installed.
ECHO.
ECHO.
ECHO.
ECHO WARNING:  The lyrics2pw Text-To-Speech functions will not be available.
GOTO DOMANIFESTATION




:DOMANIFESTATION
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.        lyrics2pw  will now manifest into the  .\lyrics2pw\  directory:
ECHO.
ECHO.
ECHO.
ECHO.
PAUSE
ECHO.
ECHO.
ECHO.
ECHO.


REM CREATE LYRICS2PW DIRECTORY
MKDIR lyrics2pw
CD lyrics2pw


REM MANIFEST EMBRYO
python ..\manifest-lyrics2pw-embryo.py


REM SPAWN EMBRYO
g++ lyrics2pw-embryo.cpp -o lyrics2pw-embryo.exe
lyrics2pw-embryo.exe


REM DUMP BATCH SHORTCUT
ECHO @python lyrics2pw.py > run-lyrics2pw.bat


REM CLEANUP
DEL lyrics2pw-embryo.*
DEL *.EMBRYO
IF EXIST ..\dummylpw.* DEL ..\dummylpw.*


REM RUN LYRICS2PW
python lyrics2pw.py


REM OUTRO
CLS
ECHO.
ECHO.
ECHO. 
ECHO.
ECHO.                        Thank you for choosing lyrics2pw!
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.               Note: You are now in the  .\lyrics2pw\  directory.
ECHO.
ECHO.       To run lyrics2pw again, please enter one of the following commands:
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.                              python lyrics2pw.py
ECHO.
ECHO.
ECHO.                               run-lyrics2pw.bat
ECHO.
ECHO.
ECHO.
ECHO.
GOTO END


:FAILUNDEF
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO FATAL ERROR:  UNDEFINED ERROR
ECHO.
ECHO.
ECHO.
ECHO.
GOTO END


:FAILEMBRYO
ECHO.
ECHO.
ECHO.
ECHO.
ECHO FATAL ERROR:  FILE  manifest-lyrics2pw-embryo.py  NOT FOUND.
ECHO.
ECHO.
ECHO PLEASE PLACE FILE IN CURRENT DIRECTORY AND TRY AGAIN. 
ECHO.
ECHO.
ECHO.
GOTO END


:FAILGPP
ECHO.
ECHO.
ECHO.
ECHO.
ECHO FATAL ERROR:  g++ DOES NOT EXIST IN SYSTEM PATH.  PLEASE INSTALL g++.
ECHO.
ECHO.
ECHO.
ECHO.
GOTO END


:FAILPYTHON
ECHO.
ECHO.
ECHO.
ECHO.
ECHO FATAL ERROR:  COMMAND python DOES NOT RUN python3.  PLEASE INSTALL python3.
ECHO.
ECHO.
ECHO.
ECHO.
GOTO END


:FAILPYQT
ECHO.
ECHO.
ECHO.
ECHO.
ECHO FATAL ERROR:  Qt5  AND/OR  PyQt5  IS NOT AVAILABLE.
ECHO.
ECHO.
ECHO.
ECHO.
GOTO END


:END
PAUSE