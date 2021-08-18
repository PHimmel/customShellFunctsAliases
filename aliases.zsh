alias df=pydf
# alias ps=procs
alias du=dust
alias rm="rm -i"
alias cat=bat
alias ls=lsd
alias cust="cd ${HOME}/.oh-my-zsh/custom && ls"

alias mbp="ssh Peter@192.168.50.210"
alias pi1="ssh pi@192.168.50.213"
alias pi4="ssh pi@192.168.50.116"
alias ec2="ssh -i \"~/.ssh/aws-ec2.pem\" ec2-user@ec2-3-17-16-213.us-east-2.compute.amazonaws.com"

alias luks="sudo cryptsetup luksOpen /dev/sdb2 luksHome && sudo mount /dev/mapper/luksHome ~/mnt/luksHome"

alias cheat='curl cheat.sh'

alias open='xdg-open'
