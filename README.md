# Functions.zsh Info
## General
* Runs a software updater and system security check.
* Designed for compatible Linux distributions (Arch Linux, LTS kernal here)
* Made for end-user to be able to easily complete these two important parts of system-management
* Is run solely through terminal commands.

Creates two shell aliases(`update`, `security`) for:
1. Modularity, not to call the functions directly.
2. Elevatation of env variable expansion to *highest possible value.*

## Update
Checks if common **package managers** are present and updates found ones.
Uses a standard update command for each manager. Sudo is needed as they operate system-wide.
* Looks for (command executed if found):
    1. Pacman
        * `sudo pacman -Syu`
    2. Yay
        * `yay -Syu`
    3. Snap
        * `sudo snap refresh`
    4. Flatpak
        * `flatpak update`

## Security
Executes 4 widely-used security packages to evaluate various aspects of the system.
### AIDE
[AIDE](https://aide.github.io/) 
is used to:
* Checks for modified/added/deleted files throughout the total file system.
* It creates its own database/s to check against the previous database to detect changes.
* It is quite slow as it is reading/writing and comparing the ALL files.
### Arch-Audit
[Arch-Audit](https://github.com/ilpianista/arch-audit)
offer an analysis of installed pacman packages, shows level of issue of package if there is one.
### Rkhunter
[Rkhunter](http://rkhunter.sourceforge.net/)
is a complete malware scan, shows only warnings here.
### Lynis
[Lynis](https://github.com/CISOfy/Lynis)
is a full system security analysis.

## How to use
Clone the repo (or simply copy the file/s directly), then:
1. Simply source the file directly i.e. `source functions.zsh` or `. ./functions.zsh`
2. Add it your terminal init section to autoload it each session.

3. Call `update` to run the updater with interactive security check option.
4. Call `security` to only run the system security check.
