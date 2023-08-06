# EXPLORER OPTIONS
$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $key HideFileExt 0
Set-ItemProperty $key Hidden 0
Set-ItemProperty $key ShowSuperHidden 0
Stop-Process -processname explorer

# SET AUTOHIDE TASKBAR
reg import C:\scripts\autohide-taskbar.reg

# CREATE APP SHORTCUT ON DESKTOP
$TARGET='C:\programs\App\app.exe'
$SHORTCUT='C:\Users\WDAGUtilityAccount\Desktop\App.lnk'
$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut($SHORTCUT); $S.TargetPath = $TARGET; $S.Save()

# LAUNCH APP
start $TARGET