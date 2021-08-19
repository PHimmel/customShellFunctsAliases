# Functions.zsh Info
Creates a shell alias for the two primary function for:
1. Modularity, not to call the functions directly
2. Elevatation of env variable expansion to highest possible value

## Update
Checks if common package managers are present
Updates extant ones

## Security
### AIDE 
checks for modified/added/deleted files throughout the total file system
it creates its own database/s to check against the previous database to detect changes 
it is quite slow as it is reading/writing and comparing the ALL files
### arch-audit
 analysis of installed pacman packages, shows level of issue of package if there is one
### rthunter
malware scan, show only warnings
### lynis
full system security analysis

## How to use
Simply source the file directly (i.e. `source functions.zsh`)
Or add it your terminal init section to autoload it each session.

Just call `update` to run the updater with interactive security check option
or call `security` to only run the system security check
