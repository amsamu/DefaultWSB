# EXPLORER OPTIONS
$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $key HideFileExt 0
Set-ItemProperty $key Hidden 0
Set-ItemProperty $key ShowSuperHidden 0
Stop-Process -processname explorer

# SET AUTOHIDE TASKBAR
reg import C:\scripts\autohide-taskbar.reg

# CREATE APP SHORTCUT ON DESKTOP
$APPINPROGRAMS='App\app.exe' # Before using: replace this with your app executable's actual path, starting from the root of the "programs" mapped folder.
$TARGET="C:\programs\$APPINPROGRAMS"
$SHORTCUT='C:\Users\WDAGUtilityAccount\Desktop\App.lnk'
$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut($SHORTCUT); $S.TargetPath = $TARGET; $S.Save()

# LAUNCH APP
start $TARGET