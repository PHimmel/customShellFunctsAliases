function _update () { 
    function _pack_test() {
        type ${1} && return 0 || return 1
    }
_pack_test "pacman" && (sudo pacman -Syu)
_pack_test "yay" && (yay -Syu)
_pack_test "snap" && (sudo snap refresh)
_pack_test "flatpak" && (flatpak update -y)

echo "\nDone with updates\n\nWould you like to run \
a full security check now?\nEnter 'Y' to continue.\n" ; read cont
if [[ $cont = "Y" ]] ; then
    _security
else echo "\n Okay all done! :D\n" ; fi
}
# alias creation
alias update=_update
alias security=_security

function _security () {
cd "${HOME}/bin/lynis"
sudo ./lynis audit system ; cd ~
echo "\n\nMalware Scanning Started\n\n"
sudo rkhunter --check --report-warnings-only
echo "\n\nPackage Vulernability Assessment Started\n\n"
arch-audit
echo "\n\nEnter 'Y' ro view malware log file\n\n" ; read next
if [[ ${next} = "Y" ]] ; then
    (sudo less /var/log/rkhunter.log) ; fi
echo "\n\nAIDE Options:\ninit = 'i'\nupdate = 'u'\ncompare = 'c'" ; read aide
case "$aide" in
    "i") echo "initializing database. . .\n" && sudo aide -i ;;
    "u") echo "updating database. . .\n" && sudo aide -u ;;
    "c") echo "comparing database with filesystem. . .\n" && sudo aide ;;
    *) echo "\nSkipping AIDE analysis\n"
esac
printf "\n\nDone!\n\n"
}
