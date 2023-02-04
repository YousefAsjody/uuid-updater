#test comment.added
read -p 'Username:' user
read -p 'Server address(ip/Name):' server

#This command runs the other .sh file on remote host
ssh $user@$server 'bash -s' < uuid-fstab-updater.sh
