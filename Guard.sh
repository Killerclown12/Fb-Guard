
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

echo "agar hp kentang tidak lag 🤓"| lolcat
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
echo "[•••••••••••••••••••••••••••••••••••]"
echo "- creadby : Killer_Clown"
echo "- Fb      : Yudha Wahyu Pratama"
echo "- Ig      : yudhawahyu414"
echo "- Github  : github.com/Killerclown12"
echo "[•••••••••••••••••••••••••••••••••••]"
echo
echo "[+]================================[+]"
echo "1.Mengaktifkan Photo Profil Guard"
echo "2.Mengnonaktifkan Photo Profil Gurd "
echo "3.Untuk Melihat Caranya "
echo "0.Exit"
echo "[+]================================[+]"
  echo -n $cyan'Pilih'$reset'√'$red':'$reset
  read pil;
  if [ $pil = '1' ] || [ $pil = '01' ]; 
  then
      clear 
      echo $red'['$blue'!'$red']''Kamu Telah Memilih Nomer 1'$reset
      sleep 2
      echo -e "${y} {1} Masukkan ID${endc}:"
      read ID
      clear
      echo -e "${y} {1} Masukkan pass${endc}:"
      read pass
      python shield.py --id $ID --password $pass --on
      
  

elif [ $pil = '2' ] || [ $pil = '02' ]; 
then
 clear
echo $red'['$blue'!'$red']''Kamu Telah Memilih Nomer 2'
sleep 2
echo -e "${y} {1} Masukkan ID${endc}:"
   read ID
   clear
   echo -e "${y} {1} Masukkan pass${endc}:"
   read pass
python shield.py --id $ID --password $pass --off


elif [ $pil = '3' ] || [ $pil = '03' ]; 
then
    clear
   echo $red'['$blue'!'$red']''Kamu Telah Memilih Nomer 3'
   sleep 2
   echo -e "${y} {1} Masukkan ID${endc}:"
   read ID
   clear
   echo -e "${y} {1} Masukkan pass${endc}:"
   read pass
   python shield.py --id $ID --password $pass --help
   
    elif [ $pil = '00' ] || [ $pil = '0' ];
    then
    clear
    echo $green' Kamu Yakin Bangsat ? '$blue'('$yellow'Y'$reset'/'$yellow'N'$blue')\n\n'$reset
     echo -n $cyan'Pilih'$reset'√'$red':'$reset
    read pil1;
    if [ $pil1 = 'Y' ] || [ $pil1 = 'y' ];
    then
    clear
    echo "buru buru amat"
    sleep 02
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