cd..
cd ..
ll
cd joaquin/
exit
cd ..
cd joaquin/
ll
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
./UTN-FRA_SO_Examenes/202406
cd ./UTN-FRA_SO_Examenes/202406
ll
./script_Precondicion.sh 
source  ~/.bashrc  && history -a
cd ..
ls
sudo fdisk -l
sudo fdisk /dev/sde
echo "sudo fdisk /dev/sde" >> RTA_Examen_20241114/Punto_A.sh 
cat RTA_Examen_20241114/Punto_A.sh 
git init
git add RTA_Examen_20241114
git commit -m "Primera particion"
git config --global user.email "joaquinalfredogreco@gmail.com"
git config --global user.name "joaquinyjoa"
git commit -m "Primera particion"
git branch -M main
git remote add origin https://github.com/joaquinyjoa/UTNFRA_SO_2do_Parcial_Alfredo.git
git push -u origin main
sudo fdisk -l
sudo fdisk /dev/sdc 
echo "sudo fdisk /dev/sdc" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114
git commit -m "Segunda particion"
git push -u origin main
sudo fdisk -l
sudo pvcreate /dev/sde1 
sudo pvcreate /dev/sdec 
sudo pvcreate /dev/sdec1
sudo pvcreate /dev/sdc1
sudo pvs
ll
cd /
ll
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
ll
mkdir work/
sudo mkdir work/
cd
ll
echo "sudo mkdir work/" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue la carpeta /work/"
git push -u origin main
sudo pvs
sudo vgcreate vg_datos /dev/sdc1
git add RTA_Examen_20241114/
echo "sudo vgcreate vg_datos /dev/sdc1" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue el grupo de volumenes"
git push -u origin main
sudo vgextend vg_datos /dev/sde1
git add RTA_Examen_20241114/
git commit -m "Agregue el grupo de volumenes /dev/sde1"
echo "sudo vgextend vg_datos /dev/sde1" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue el grupo de volumenes /dev/sde1"
git push -u origin main
sudo pvs
sufo fdisk /dev/sde
sudo fdisk /dev/sde
echo "sudo fdisk /dev/sde" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Hice la ultima particion de 512MB"
git push origin main 
sudo pvcreate /dev/sde2 
echo "sudo pvcreate /dev/sde2" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue el volumen fisico de /dev/sde2"
git push origin main 
sudo pvs
sudo vgcreate vg_temp /dev/sde2
echo "sudo vgcreate vg_temp /dev/sde2" >> RTA_Examen_20241114/
echo "sudo vgcreate vg_temp /dev/sde2" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue el volumen fisico /dev/sde2"
git push origin main 
sudo pvs
sudo lvcreate -L +5MB vg_datos -n lv_docker
echo "sudo lvcreate -L +5MB vg_datos -n lv_docker" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Cree el lv_docker"
git push origin main 
sudo lvcreate -L +1.5GB vg_datos -n lv_workareas
sudo lvcreate -L +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
echo "sudo lvcreate -l +100%FREE vg_datos -n lv_workareas" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Cree el workareas"
git push origin main 
sudo lvs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Formate el /dev/mapper/vg_datos-lv_docker"
git push origin main 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue el montaje de sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas"
git push origin  main 
sudo lvcreate -L +512MB lv_swap /dev/sde2
sudo lvs
sudo lvcreate -L +512MB lv_swap -n /dev/sde2
sudo pvs
sudo lvcreate -L +512MB lv_swap -n /dev/sde2
sudo lvcreate -l +100FREE lv_swap -n /dev/sde2
sudo lvcreate -L +512MB lv_swap -n /dev/sde2
sudo vgremove vg_temp
sudo vgcreate vg_temp /dev/sde2
sudo lvcreate -L +512MB lv_swap -n /dev/sde2
sudo vgremove vg_temp
sudo fdisk 
sudo fdisk /dev/sde
sudo vgcreate vg_temp /dev/sde2
sudo lvcreate -L +512MB lv_swap -n /dev/sde2
sudo mount /dev/mapper/vg_datos-lv_ /work/
sudo mount /dev/mapper/vg_datos-lv_ work/
sudo mount /dev/mapper/vg_datos-lv_ /work/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
echo "sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue el montaje al docker"
git push origin main 
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
echo "sudo mount /dev/mapper/vg_datos-lv_workareas /work/" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Agregue el montaje de workareas"
git push origin main 
sudo lvcreate -L +512M lv_swap /dev/sde2
sudo lvcreate -L +512M lv_swap -n /dev/sde2
sudo pvs
sudo lvs
sudo lvcreate -L +512M lv_swap -n vg_temp
sudo lvcreate -L 512M -n lv_swap vg_temp
echo "sudo lvcreate -L 512M -n lv_swap vg_temp" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Cree el lv de la swap"
git push origin main 
sudo mkswap /dev/mapper/vg_temp-lv_swap 
echo "sudo mkswap /dev/mapper/vg_temp-lv_swap " >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Montaje de la swap"
git push origin main 
sudo swapon /dev/mapper/vg_temp-lv_swap
echo "sudo swapon /dev/mapper/vg_temp-lv_swap" >> RTA_Examen_20241114/Punto_A.sh 
git add RTA_Examen_20241114/
git commit -m "Habilite la memoria swap"
git push origin main 
exit
cd ..
cd
ll
cat .bash_histpry
cat .bash_history
ll
cd /usr/local/bin/
ll
vim Alfredo_AltaUser-Groups.sh
sudo vim Alfredo_AltaUser-Groups.sh
cd
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cd /usr/local/bin/
sudo vim Alfredo_AltaUser-Groups.sh 
ll
sudo vim Alfredo_AltaUser-Groups.sh
cat /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim Alfredo_AltaUser-Groups.sh
./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
ll
sudo chmod 744 Alfredo_AltaUser-Groups.sh 
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
sudo vim Alfredo_AltaUser-Groups.sh
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
cat /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim Alfredo_AltaUser-Groups.sh
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
sudo vim Alfredo_AltaUser-Groups.sh
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
sudo vim Alfredo_AltaUser-Groups.sh
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
sudo vim Alfredo_AltaUser-Groups.sh
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
cd
echo "sudo vim Alfredo_AltaUser-Groups.sh" >> RTA_Examen_20241114/Punto_B.sh 
git add .
git commit -m "Agregue el modifique el archivo Alfredo_AltaUser-Groups.sh"
git push origin main 
echo "sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin" >> RTA_Examen_20241114/Punto_B.sh 
git add .
git commit -m "Ajecute el archivo Alfredo_AltaUser-Groups.sh"
git push origin main 
sudo /etc/passwd
cat /etc/group
sudo cat /etc/shadow
sudo passwd 2P_202406_Prog1
cd /usr/local/bin/
vim Alfredo_AltaUser-Groups.sh 
sudo vim Alfredo_AltaUser-Groups.sh 
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
sudo userdel -r 2P_202406_Prog1
sudo userdel -r 2P_202406_Prog2
sudo userdel -r 2P_202406_Test1
sudo userdel -r 2P_202406_Supervisor
sudo groupdel 2P_GDesa
sudo groupdel 2P_GTest
sudo groupdel 2PSupervisores
sudo cat /etc/passwd | grep '2P_202406'
sudo cat /etc/group | grep '2P_'
sudo userdel -r 2P_202406_Prog1
sudo ./Alfredo_AltaUser-Groups.sh /home/joaquin/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt joaquin
sudo cat etc/shadow
cd
sudo cat etc/shadow
sudo cat /etc/shadow
ll
cd UTN-FRA_SO_Examenes/202406/docker/
ll
vim index.html 
echo "vim index.html" >> /home/joaquin/RTA_Examen_20241114/Punto_C.sh 
cd
git add .
git commit -m "Edite el archivo html del docker"
git push origin main 
cd UTN-FRA_SO_Examenes/202406/docker/
ll
vim index.html 
docker login -u joaquin121
sudo usermod -a -G docker joaquin
docker build -t web1-Greco .
sudo docker build -t web1-Greco .
docker images
sudo docker images
sudo docker build -t web1-greco .
sudo docker images
sudo docker images list
sudo docker build -t web1-greco .
ll
vim Dockerfile
ls
sudo docker build -t web1-greco .
vim Dockerfile 
sudo docker build -t web1-greco .
echo "vim Dockerfile" >> /home/joaquin/RTA_Examen_20241114/Punto_C.sh 
git add /home/joaquin/.
git add /home/joaquin/
git add /home/joaquin/ .
cd
git add .
git commit -m "Agregue el dockerfile"
git push origin main 
cd UTN-FRA_SO_Examenes/202406/docker/
echo "sudo docker build -t web1-greco ." >> /home//joaquin/RTA_Examen_20241114/Punto_C.sh 
cd
git add .
git commit -m "Cree la imagen de docker"
git push origin main 
cd UTN-FRA_SO_Examenes/202406/docker/
docker rmi web1-greco
sudo docker rmi web1-greco
docker build -t joaquin121/web1-Alfredo_latest .
sudo docker build -t joaquin121/web1-Alfredo_latest .
sudo docker build -t joaquin121/web1-alfredo_latest .
echo "sudo docker build -t joaquin121/web1-alfredo_latest ." >> /home/joaquin/RTA_Examen_20241114/Punto_C.sh 
cd
git add .
git commit -m "Cree la imagen de nuevo"
git push origin main 
cd UTN-FRA_SO_Examenes/202406/docker/
vim run.sh
echo "vim run.sh" >> /home/joaquin/RTA_Examen_20241114/Punto_C.sh 
cd 
git add .
git commit -m "Cree el archivo run"
git push origin main 
cd UTN-FRA_SO_Examenes/202406/docker/
sudo chmod 744 run.sh 
echo "sudo chmod 744 run.sh" >> /home/joaquin/RTA_Examen_20241114/Punto_C.sh 
cd
git a..
git add .
git commit -m "Cambie los permisos del run.sh"
git push origin main 
cd UTN-FRA_SO_Examenes/202406/docker/
./run.sh
sudo ./run.sh
sudo docker ps
sudo systemctl restart docker
sudo systemctl status docker
sudo docker exec -it inspiring_poitras bash
sudo docker ps -a
sudo docker start inspiring_poitras
sudo docker exec -it inspiring_poitras bash
sudo docker stop inspiring_poitras
sudo docker rm inspiring_poitras
./run.sh
sudo ./run.sh
cd ..
cd ansible/
ll
cd roles/
ll
cd 2do_parcial/
cd
cd /UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
ll
cd ..
ll
vim playbook.yml 
cd roles/
ll
cd 2do_parcial/
ll
tasks
cd tasks/
ll
vim main.yml 
ll
cd ..
ll
cd ..
ll
cd ..
ll
cd roles/
cd
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible/
ll
cd inventory/
ll
cat host
cat hosts
cd ..
ca playbook.yml 
cat playbook.yml 
ansible-playbook playbook.yml -i inventory/hosts
ll
cat inventory/host
cd inventory/
ll
cat hosts
cd ..
ll
cd roles/
ll
cd 2do_parcial/
ll
cd tasks/
ll
vim main.iml
ll
vim main.yml
cd ..
ll
cd 
cd UTN-FRA_SO_Examenes/202406/ansible/roles/
ll
vim template_01.j2
cd 2do_parcial/
cd tasks/
ll
vim main.yml 
cd ..
ll
vim template_02.j2
echo "vim template_01.j2" >> /home/joaquin/RTA_Examen_20241114/Punto_D.sh 
cd
git add . 
git commit -m "Cree el primer template"
git push origin main 
cd UTN-FRA_SO_Examenes/202406/ansible/roles/
ll
cd 2do_parcial/
ll
cd  tasks/
ll
vim main.yml 
cd
cat /etc/shadow
sudo cat /etc/shadow
cd UTN-FRA_SO_Examenes/202406/ansible/roles/
vim main.yml 
cd 2do_parcial/tasks/
ll
vim main.yml 
cd ..
ll
cd roles/
ll
cd 2do_parcial/
ll
echo "vim main.yml" >> /home/joaquin/RTA_Examen_20241114/Punto_D.sh 
cd
