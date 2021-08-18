function _update () { 

    # checks if package manager is present
    function _pack_test() {
        local PACK=$1
        type $PACK && echo "\n${PACK}\n" && return 0 || return 1
    }

# if package manager is present; evaulates to turn and executes proper command
_pack_test "pacman" && (sudo pacman -Syu)

_pack_test "yay" && (yay -Syu)

_pack_test "snap" && (sudo snap refresh)

_pack_test "flatpak" && (flatpak update)

# option to run robust security check is offered
echo "\nDone with updates\n\nWould you like to run \
a full security check now?\nEnter 'Y' to continue.\n"
read cont
if [[ $cont = "Y" ]] ; then
    _security
else echo "\n Okay all done! :D\n" ; fi
}

alias update=_update


function _security () {

# set local lynis directory
local lynisDir="${HOME}/bin/lynis"
# start lynis full system analysis
cd ${lynisDir}
sudo ${lynisDir}/lynis audit system ; cd ~

# malware scan, show only warnings
echo "\n\nMalware Scanning Started\n\n"
sudo rkhunter --cronjob --report-warnings-only

# analysis of installed pacman packages, shows level of issue of package if there is one
echo "\n\nPackage Vulernability Assessment Started\n\n"
arch-audit

# give option to view total malware log file
echo "\n\nEnter 'Y' ro view malware log file\n\n" 
read next

if [[ ${next} = "Y" ]] ; then
    (sudo less /var/log/rkhunter.log) ; fi

# AIDE program options
#
# compares current filesystem database with current filesystem
echo "\n\nCompelete Root File System Modification Audit Started\n\n"
sudo aide

# creates a new database of total filesystem 
# sudo aide -i
#
# compares and updates new filesystem database with previous one
# sudo aide -u 

printf "\n\nDone!\n\n"
}
