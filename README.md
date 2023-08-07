# DefaultWSB
Simple folder structure, config file and startup script to serve as template for Windows Sandox instances. This configuration is particular is thought to be used when wanting to use WSB as a way to run a single app isolated from the rest of your system.

## Before using
Don't forget to set the right `HostFolder` paths for your machine in the AppWSB.wsb file, as well as the right `$APPINPROGRAMS` path for your app's binary in the [`startup.ps1`](/scripts/startup.ps1) file.

## Components summary
### [`AppWSB.wsb`](/AppWSB.wsb)
The configuration for the Sandbox instance is established in this file, including enabling/disabling of network access, of virtual GPU, of shared clipboard with the host, and several other options, as well as the amount of RAM assigned to the sandbox and the folders shared with the host.

### [`scripts/startup.ps1`](/scripts/startup.ps1)
This is the script that is set to be executed each time upon logon on the sandbox.
Currently, it sets some options for Windows explorer (whether to hide file extensions, whether to show hidden files and whether to system hidden files), imports a Registry value that sets some taskbar settings (auto-hide, transparency...), creates a desktop shortcut for the app and launches it.

### [`programs/`](/programs/)
This directory is empty (except for the [`.gitignore`](/programs/.gitignore)) and it's where you should place your app's binary files so that it can be ran from inside the sandbox.
