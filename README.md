# Functions.zsh Info
Creates a shell alias for the two primary function for:
1. Modularity, not to call the functions directly.
2. Elevatation of env variable expansion to *highest possible value.*

## Update
Checks if common **package managers** are present and updates found ones.
Uses standard update command for each manager.
Looks for (command executed if found):
1. Pacman `sudo pacman -Syu`
2. Yay `yay -Syu`
3. Snap `sudo snap refresh`
4. Flatpak `flatpak update`

## Security
Executes 4 widely-used security packages to evaluate various aspects of the system.
### AIDE
https://aide.github.io/
* Checks for modified/added/deleted files throughout the total file system.
* It creates its own database/s to check against the previous database to detect changes.
* It is quite slow as it is reading/writing and comparing the ALL files.
### Arch-Audit
* https://github.com/ilpianista/arch-audit
Analysis of installed pacman packages, shows level of issue of package if there is one.
### Rkhunter
* http://rkhunter.sourceforge.net/
Malware scan, show only warnings.
### Lynis
* https://github.com/CISOfy/Lynis
Full system security analysis.

## How to use
Simply source the file directly (i.e. `source functions.zsh`).
Add it your terminal init section to autoload it each session.

Just call `update` to run the updater with interactive security check option.
Call `security` to only run the system security check.
