#!/bin/sh

# See http://knowledge.autodesk.com/support/maya/troubleshooting/caas/CloudHelp/cloudhelp/2016/ENU/Installation-Maya/files/GUID-10885D2B-D900-4DD6-BB14-B82920C2D294-htm.html
/tmp/Install\ Maya\ 2017.app/Contents/MacOS/setup --noui --force --serial_number=*YourSerialNumber* --product_key=657I1 --license_type=kStandalone


# licensing Maya 2017
# after running your installer do the following:

/tmp/Install\ Maya\ 2017.app/Contents/Resources/adlmreg -i S 657I1 657I1 2017.0.0.F *YourSerialNumber* /Library/Application\ Support/Autodesk/Adlm/PIT/2017/MayaConfig.pit

 # *note that your using the adlm tool contained in the installer application NOT a version of the tool you may have installed elsewhere.

/bin/mkdir /Library/Application\ Support/Autodesk/CLM/LGS/657I1_2017.0.0.F/
/usr/bin/touch /Library/Application\ Support/Autodesk/CLM/LGS/657I1_2017.0.0.F/LGS.data
/bin/chmod 777 /Library/Application\ Support/Autodesk/CLM/LGS/657I1_2017.0.0.F/LGS.data
/bin/echo "_STANDALONE">>/Library/Application\ Support/Autodesk/CLM/LGS/657I1_2017.0.0.F/LGS.data

# Remove the Maya instller app
/bin/rm -rf /tmp/Install\ Maya\ 2017.app