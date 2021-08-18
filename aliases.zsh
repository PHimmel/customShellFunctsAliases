alias df=pydf
# alias ps=procs
alias du=dust
alias rm="rm -i"
alias cat=bat
alias ls=lsd
alias cust="cd ${HOME}/.oh-my-zsh/custom && ls"

#alias security="cd /home/peter/bin/lynis && sudo /home/peter/bin/lynis/lynis audit system ; cd - ; sudo rkhunter --cronjob --report-warnings-  only ; \
#sudo grep Warning /var/log/lynis.log ; echo '\n' ; sudo grep Suggestion /var/log/lynis.log ; arch-audit ; sudo aide ; sudo rkhunter --check --rwo ; sudo less /var/log/rkhunter.log
 #printf '\n\nDone!\n' " 

#function securityRobust () {

# set local lynis directory
#local lynisDir="${HOME}/bin/lynis"

# start lynis full system analysis
#cd ${lynisDir}
#sudo ${lynisDir}/lynis audit system

# return to ~
#cd

# malware scan, show only warnings
#sudo rkhunter --cronjob --report-warnings-only

# analysis of installed pacman packages, shows level of issue of package if there is one
#arch-audit

# creates a new database of total filesystem 
# sudo aide -i

# compares and updates new filesystem database with previous one
# sudo aide -u 

# compares current filesystem database with current filesystem
#sudo aide

# give option to view total malware log file
#echo "Enter \'y\' ro view malware log file\n"
#read cont

#if [[ ${cont} -eq 'y' ]] ; then
#sudo less /var/log/rkhunter.log
#fi

#printf '\n\nDone!\n'
#}

#alias update="echo 'pacman' ; sudo pacman -Syu && echo '\nyay\n' && yay -Syu && echo '\nsnap\n' && sudo snap refresh && echo '\nflatpak\n' && flatpak update ; echo '\ndone\n'"

alias mbp="ssh Peter@192.168.50.210"
alias pi1="ssh pi@192.168.50.213"
alias pi4="ssh pi@192.168.50.116"
alias ec2="ssh -i \"~/.ssh/aws-ec2.pem\" ec2-user@ec2-3-17-16-213.us-east-2.compute.amazonaws.com"

alias luks="sudo cryptsetup luksOpen /dev/sdb2 luksHome && sudo mount /dev/mapper/luksHome ~/mnt/luksHome"

alias cheat='curl cheat.sh'

alias open='xdg-open'
