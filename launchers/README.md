Fedora Desktop Launchers
========================

Fedora stores launcher shortcuts in /usr/share/applications or in ~/.local/share/applications folders. In case of name conflict the file in user home is more relevant.

push.sh
-------
The push.sh tool pushes the whatever.desktop file to ```~/.local/share/applications``` folder.

**Usage:**
```bash
./push.sh whatever.desktop
```

Manual tasks
------------
###SoapUI
download from [sourceforge][1]
```bash
# icon preparation
cd soapui*/bin
imagemagick soapui32.png soapui32.xpm
```
[1]:http://sourceforge.net/projects/soapui/files/soapui/

