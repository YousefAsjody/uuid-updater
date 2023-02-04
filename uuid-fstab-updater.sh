sudo -i    
vda2=$(blkid | sed -n -e 's/^.*vda2: //p' | awk '{print substr($0, 7, 36); exit}') #gets the UUID of vdaX. it can be .*da
vda3=$(blkid | sed -n -e 's/^.*vda3: //p' | awk '{print substr($0, 7, 36); exit}')
echo $vda2
echo $vda3
sed -i "s|/dev/vda3|UUID=${vda3}|g" /etc/fstab  #replace the /dev/vda with UUID
sed -i "s|/dev/vda2|UUID=${vda2}|g" /etc/fstab
