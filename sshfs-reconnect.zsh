#!/bin/zsh
function sshfs_reconnect_loop () {
while true
do
    ping -q -w1 -c1 google.com &>/dev/null
    local result=$?
    if [ ${result} -eq 0 ] ; then
        sshfs -f -o ConnectTimeout=3,ConnectionAttempts=1,ServerAliveInterval=5,ServerAliveCountMax=3 $@
        # echo "disconnected from $@" ; sleep 3 ; echo "retry $@ ..."
    fi
    sleep 45
done
}
function sshfs_reconnect () {
(sshfs_reconnect_loop ${@} &>/dev/null &)
}
function sshfs_daemon_start () {
# moved mount config into /etc/fstab
`sshfs_reconnect pi@192.168.50.213:/ /home/peter/mnt/rpi1`
#sleep 3
`sshfs_reconnect pi@192.168.50.116:/ /home/peter/mnt/rpi4`
#sleep 4
`sshfs_reconnect Peter@192.168.50.210:/ /home/peter/mnt/macbook`
#sleep 4
`sshfs_reconnect ec2-user@3.17.16.213:/ /home/peter/mnt/aws-ec2 -o IdentityFile=/home/peter/.ssh/aws-ec2.pem -o allow_other`
}
