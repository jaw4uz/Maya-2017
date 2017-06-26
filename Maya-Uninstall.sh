#!/bin/sh

# Maya 2017
/bin/rm -rf /Applications/Autodesk/maya2017
/bin/rm -rf "/Library/Application Support/Autodesk/CLM/LGS/871J1_2018.0.0.F"

/bin/rm -R /Library/Preferences/com.autodesk.Maya.installer.2017.plist

/usr/sbin/pkgutil --forget com.autodesk.pkg.Maya_AdLMconf2017.0
/usr/sbin/pkgutil --forget com.autodesk.pkg.Maya_core2017