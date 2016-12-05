#!/bin/bash
##############################################################################
#                                                                            #
#                                                                            #
#       O-------------------------------------------------------------O      #
#       |  README:  lyrics2pw  [Memorable Secure Password Generator]  |      #
#       O-------------------------------------------------------------O      #
#                                                                            #
#                                                                            #
#    lyrics2pw is an approach to generating memorable yet secure passwords   #
#      using the information that Americans are least likely to forget -     #
#           the lyrics to songs which are "stuck in their heads".            #
#                                                                            #
#                                                                            #
##############################################################################
#                                                                            #
#                                                                            #
#         O-------------------------------------------------------O          #
#         |  lyrics2pw MANIFESTATION (INSTALLATION) INSTRUCTIONS  |          #
#         O-------------------------------------------------------O          #
#                                                                            #
#                                                                            #
#   O---------O                                                              #
#   | WINDOWS |                                                              #
#   O---------O                                                              #
#                                                                            #
#   1.  Install all required dependencies (see: REQ. DEPENDENCIES section).  #
#   2.  Verify that both files  spawn-lyrics2pw-windows.bat  and             # 
#       manifest-lyrics2pw-embryo.py  are located in the same directory.     #
#   3.  Run:                                                                 #
#                                                                            #
#           spawn-lyrics2pw-windows.bat                                      #
#                                                                            #
#   4.  Note:  lyrics2pw will be manifested in the .\lyrics2pw\ directory.   #
#       To run lyrics2pw again, run one of the following commands:           #
#                                                                            #
#           python lyrics2pw.py                                              #
#                                                                            #
#           run-lyrics2pw.bat                                                #
#                                                                            #
#                                                                            #
#   O-------O                                                                #
#   | LINUX |                                                                #
#   O-------O                                                                #
#                                                                            #
#   1.  Install all required dependencies (see: REQ. DEPENDENCIES section).  #
#   2.  Set this readme file to have executable permissions with either:     #
#                                                                            #
#           chmod 755 ./readme-lyrics2pw.txt                                 #
#                                                                            #
#       or any appropriate file manager program.                             #
#   3.  Convert this readme file into a Linux-friendly script with the       #
#       following command:                                                   #
#                                                                            #
#           dos2unix ./readme-lyrics2pw.txt                                  #
#                                                                            #
#       Note: You may need to first install the dos2unix utility.            #
#   4.  Verify that file  manifest-lyrics2pw-embryo.py  is located in the    #
#       same directory as this readme file.                                  #
#   5.  From this directory run the following command:                       #
#                                                                            #
#           ./readme-lyrics2pw.txt                                           #
#                                                                            #
#   6.  The following script will then execute:                              #
#                                                                            #
            mkdir lyrics2pw                                                  #
            cd lyrics2pw                                                     #
            python3 ../manifest-lyrics2pw-embryo.py                          #
            g++ ./lyrics2pw-embryo.cpp -o ./lyrics2pw-embryo.exec            #
            ./lyrics2pw-embryo.exec                                          #
            rm ./lyrics2pw-embryo.*                                          #
            rm ./*.EMBRYO                                                    #
            echo "#!/bin/bash" > ./run-lyrics2pw.sh                          #
            echo "python3 ./lyrics2pw.py" >> ./run-lyrics2pw.sh              #
            chmod 755 ./run-lyrics2pw.sh                                     #
            python3 ./lyrics2pw.py                                           #
#                                                                            #
#   7.  Note:  lyrics2pw will be manifested in the ./lyrics2pw/ directory.   #
#       To run lyrics2pw again, run one of the following commands:           #
#                                                                            #
#           python3 ./lyrics2pw.py                                           #
#                                                                            #
#           ./run-lyrics2pw.bat                                              #
#                                                                            #
#                                                                            #
#   O---------O                                                              #
#   | MAC OSX |                                                              #
#   O---------O                                                              #
#                                                                            #
#   1.  Note:  The lyrics2pw program has not been tested on Mac OSX.         #
#   2.  However, the above instructions for Linux may work successfully.     #
#                                                                            #
#                                                                            #
##############################################################################
#                                                                            #
#                                                                            #
#                       O-------------------------O                          #
#                       |  REQUIRED DEPENDENCIES  |                          #
#                       O-------------------------O                          #
#                                                                            #
#                                                                            #
#   1.  manifest-lyrics2pw-embryo.py  (this file exists in current directory)#
#                                                                            #
#           This can be obtained from the same place as this readme file.    #
#                                                                            #
#                                                                            #
#                                                                            #
#   2.  python3                                                              #
#                                                                            #
#           python3 can be downloaded from:                                  #
#                                                                            #
#               https://www.python.org/                                      #
#                                                                            #
#                                                                            #
#                                                                            #
#   3.  Qt5  and  PyQt5                                                      #
#                                                                            #
#           Qt version 5 can be downloaded from:                             #
#                                                                            #
#               https://www.qt.io/download-open-source/#section-2            #
#                                                                            #
#                                                                            #
#                                                                            #
#           To download PyQt5, try the following commands:                   #
#                                                                            #
#               pip install PyQt5                                            #
#                                                                            #
#               pip3 install PyQt5                                           #
#                                                                            #
#           Or to download a PyQt5 installer executable, visit:              #
#                                                                            #
#               https://sourceforge.net/projects/pyqt/                       #
#                                                                            #
#                                                                            #
#                                                                            #
#   4.  g++  (available in system path)                                      #
#                                                                            #
#           g++ for Windows can be downloaded from the following sources:    #
#                                                                            #
#               http://tdm-gcc.tdragon.net/download/                         #
#                                                                            #
#               https://sourceforge.net/projects/mingw/files/                #
#                                                                            #
#                                                                            #
#                                                                            #
#   5.  Python Win32 Extensions  (optional - provides Text-To-Speech support)#
#                                                                            #
#           Python Win32 Extensions is only available for Windows, at:       #
#                                                                            #
#               https://sourceforge.net/projects/pywin32/files/pywin32/      #
#                                                                            #
#                                                                            #
##############################################################################
#                                                                            #
#                                                                            #
#                          O-------------------O                             #
#                          |  ACKNOWLEDGMENTS  |                             #
#                          O-------------------O                             #
#                                                                            #
#                                                                            #
#   The following resources were indispensable in creating this program:     #
#                                                                            #
#                                                                            #
#   "Automate the Boring Stuff with Python"  by  Al Sweigart                 #
#   https://automatetheboringstuff.com/                                      #
#                                                                            #
#                                                                            #
#   "Google hack to instantly search for files"                              #
#   http://www.techrepublic.com/blog/it-news-digest/google-hack-to-instantly-search-for-files/
#                                                                            #
#                                                                            #
#   "Why can't I use 'Speech.SpVoice' instead of                             #
#   'SAPI.SpVoice' with python and win32com?"                                #
#   http://stackoverflow.com/questions/35222346/why-cant-i-use-speech-spvoice-instead-of-sapi-spvoice-with-python-and-win32 
#                                                                            #
#                                                                            #
##############################################################################