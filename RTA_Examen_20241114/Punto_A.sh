sudo fdisk /dev/sde
sudo fdisk /dev/sdc
sudo mkdir work/
sudo vgcreate vg_datos /dev/sdc1
sudo vgextend vg_datos /dev/sde1
sudo fdisk /dev/sde
sudo pvcreate /dev/sde2
sudo vgcreate vg_temp /dev/sde2
sudo lvcreate -L +5MB vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
