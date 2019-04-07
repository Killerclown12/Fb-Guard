
#warna
w='\e[97m'
g='\033[1;92m'
r='\033[1;91m'
a='\033[1;94m'
b='\e[1;4m'
cyan='\033[1;36m'
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
reset='\033[0m'
ulang = 'y'
clear
echo  $purple '{Fb Guard}      _ _
              .-"-._( ) )
             /  ,  ,  66\
      `======\   )_\\=\_o)=   
              `~~"~ `"   '
read -p "masukan nama : " nick
if [ $nick ]; then
clear
echo $purple'{Fb Guard}      _ _
              .-"-._( ) )
             /  ,  ,  66\
      `======\   )_\\=\_o)=   
              `~~"~ `"   '
sleep 2
echo -n $red"$nick memakai tools pada tanggal "; date +"%d %B %Y"
sleep 2
fi
clear
echo $purple'{Fb Guard}      _ _
              .-"-._( ) )
             /  ,  ,  66\
      `======\   )_\\=\_o)=   
              `~~"~ `"   '
echo "Jika Ada kesalahaan dalam Tool hub saya 😎"
sleep 2
echo
clear
###################################################
# CTRL C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
echo  "(Ctrl + C ) Terdeteksi,Mencoba Untuk Keluar ... "|lolcat
sleep 1
echo ""
echo "Thank You For Using My Tools ... "|lolcat
sleep 1
echo ""
echo "Killer_Clown Disini ... "|lolcat
exit
}
sleep 1 #banner
echo ' ____  ____  ____  ____  ____ ' | lolcat
echo '||C ||||l ||||o ||||w ||||n ||' | lolcat
echo '||__||||__||||__||||__||||__||' | lolcat
echo '|/__\||/__\||/__\||/__\||/__\|'"creadby : Killer_Clown" | lolcat
sleep 2
while $ulang;
do
  clear #menu
echo "[•••••••••••••••••••••••••••••••••••]"| lolcat
echo "- creadby : Killer_Clown"| lolcat
echo "- Fb      : Yudha Wahyu Pratama"| lolcat
echo "- Ig      : yudhawahyu414"| lolcat
echo "- Github  : github.com/Killerclown12"| lolcat
echo "[•••••••••••••••••••••••••••••••••••]"| lolcat
echo
echo "[+]================================[+]"| lolcat
echo "1.Mengaktifkan Photo Profil Guard"| lolcat
echo "2.Mengnonaktifkan Photo Profil Guard "| lolcat
echo "3.Untuk Melihat Caranya "| lolcat
echo "0.Exit"| lolcat
echo "[+]================================[+]"| lolcat
  echo -n $cyan'Pilih'$reset'√'$red':'$reset
  read pil;
  if [ $pil = '1' ] || [ $pil = '01' ]; 
  then
      clear 
      echo $red'['$blue'!'$red']''Kamu Telah Memilih Nomer 1'$reset
      sleep 2
      echo  "${y} {1} Masukkan ID${endc}:"| lolcat
      read ID
      clear
      echo "${y} {1} Masukkan pass${endc}:"| lolcat
      read pass
      python shield.py --id $ID --password $pass --on
      
  

elif [ $pil = '2' ] || [ $pil = '02' ]; 
then
 clear
echo $red'['$blue'!'$red']''Kamu Telah Memilih Nomer 2'
sleep 2
echo  $blue"${y} {1} Masukkan ID${endc}:"
   read ID
   clear
   echo  $red"${y} {1} Masukkan pass${endc}:"
   read pass
python shield.py --id $ID --password $pass --off


elif [ $pil = '3' ] || [ $pil = '03' ]; 
then
    clear
   echo $red'['$blue'!'$red']''Kamu Telah Memilih Nomer 3'
   sleep 2
   echo "Pertama Masukan Email/Nomer Telepon"| lolcat
   sleep 0.2
   echo "Kedua Masukan Password Kalian"| lolcat
   sleep 0.2
   echo "Selesai dan tunggu "| lolcat
   sleep 0.1
   echo "note :Mengisi Id Dan Password dengan Benar"| lolcat
    elif [ $pil = '00' ] || [ $pil = '0' ];
    then
    clear
    echo $green' Kamu Yakin Bangsat ? '$blue'('$yellow'Y'$reset'/'$yellow'N'$blue')\n\n'$reset
     echo -n $cyan'Pilih'$reset'√'$red':'$reset
    read pil1;
    if [ $pil1 = 'Y' ] || [ $pil1 = 'y' ];
    then
    clear
    echo "buru buru amat"| lolcat
    sleep 02
    clear
    echo $green'Goood Bye.........!'
    sleep 2
    clear
    echo $green'Terima Kasih Telah Mengunakan Tools Saya'
    sleep 2
    clear
    echo $green'Silakan Kembali Jika Membutuhkan'
    sleep 2
    clear
    echo $green'Waassallamualaikum Wr.Wb'
    sleep 2
    clear
    exit
    fi
    else
    echo $blue'['$r'-'$blue']'$r' Warning: Masukan Nomer Yang Benar Goblok'
    echo $blue'['$r'-'$blue']'$red 'Masukan Menunya Lagi Jadi Orang Jangan Goblok'
    echo $ulang;
    fi
    echo $blue'['$yellow'!'$blue']'$yellow' Tekan Enter Buat Lanjut/Ulang....!! '
    read ulang;
    
    done