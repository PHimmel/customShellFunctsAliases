# Functions.zsh Info
Creates a shell alias for the two primary function for:
1. Modularity, not to call the functions directly.
2. Elevatation of env variable expansion to *highest possible value.*

## Update
Checks if common **package managers** are present and updates found ones.

## Security
### AIDE 
* Checks for modified/added/deleted files throughout the total file system.
* It creates its own database/s to check against the previous database to detect changes.
* It is quite slow as it is reading/writing and comparing the ALL files.
### Arch-Audit
Analysis of installed pacman packages, shows level of issue of package if there is one.
### Rkhunter
Malware scan, show only warnings.
### Lynis
Full system security analysis.

## How to use
Simply source the file directly (i.e. `source functions.zsh`).
Add it your terminal init section to autoload it each session.

Just call `update` to run the updater with interactive security check option.
Call `security` to only run the system security check.
