# Functions.zsh Info

## Update

#### Checks if common package managers are present
#### Updates extant ones
#### 
#### Creates a shell alias for the function for:
##### 1. Modularity, not to call the functions directly
##### 2. Elevatation of variable expansion to highest possible value

## Security

### AIDE 
#### checks for modified/added/deleted files throughout the total file system
#### it creates its own database/s to check against the previous database to detect changes 
#### it is quite slow as it is reading/writing and comparing the ALL files

### arch-audit
#### analysis of installed pacman packages, shows level of issue of package if there is one

### rthunter
#### malware scan, show only warnings

### lynis
#### full system security analysis
