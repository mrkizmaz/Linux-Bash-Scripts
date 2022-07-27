#! /bin/bash

## Ekrana yazdırma islemleri
<< 'MULTILINE-COMMENT'

echo "Isminiz ve yasınızı giriniz: " 
read -a isim_yas
read -sp "Lütfen sifrenizi giriniz: " sifre
echo "Ismim: ${isim_yas[0]} ve yasım: ${isim_yas[1]}, sifrem: $sifre"


read -p "Ismin: "
echo "Ismim: "$REPLY


echo "Isminiz ve yasınızı giriniz: " 
read -a isim_yas
read -sp "Sifrenizi giriniz: "
echo "Ismim: ${isim_yas[0]} ve yasım: ${isim_yas[1]}, sifrem: $REPLY"

read -p "Isminizi giriniz ve yasınızı giriniz : " isim yas
echo "ismim: $isim yasım: $yas"
dizi=("$@")
echo "1. kelime: ${dizi[0]}, 2. kelime: ${dizi[1]}, 3. kelime: ${dizi[2]}"
echo "Dizi boyutu: $#"
echo "Degiskenler: $*"


# if islemleri

sayi=10
if [ $sayi -ne 22 ]
then
echo "Kosul dogru"
fi


sayi=22
if (( $sayi < 22 ))
then
echo "Sayi 22'den kücük"
elif (( $sayi > 22 ))
then
echo "Sayi 22'den büyük"
else
echo "Sayı 22'ye esittir."
fi


ad=Ersel
if [ $ad == "Ersel" ]
then
echo "İsim $ad'dir"
fi


harf=b
if [[ $harf == "b" ]] # alfabetik dizilime göre
then
echo "Harf b'dir"
elif [[ $harf == "a" ]]
then
echo "Harf a'dır"
else
echo "Harf a ve b degildir."
fi

yas=25
if [ "$yas" -gt 18 ] && [ "$yas" -lt "30" ]
# ya da [ "$yas" -gt 18 -a "$yas" -lt "30" ]
# ya da [[ "$yas" -gt 18 && "$yas" -lt "30" ]]
then
echo "Gecerli yas"
else
echo "Gecersiz yas"
fi
# or opertatörü de  aynı mantık


# Aritmetik islemler
echo 1 + 1
echo $(( 1+1 )) # cift parantez olmalı!

sayi1=25
sayi2=5
echo $(( sayi1+sayi2 ))
echo $(( sayi1-sayi2 ))
echo $(( sayi1*sayi2 ))
echo $(( sayi1/sayi2 ))
echo $(( sayi1%sayi2 ))
# tek parantez yazmak icin: expr
echo $( expr $sayi1 \* $sayi2 )


sayi1=20.5
sayi2=5

echo "20.5+5" | bc
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5/5" | bc
echo "20.5%5" | bc

# bölmede virgüleden sonraki degerleri verir
echo "scale=2; 20.5/5" | bc
echo "scale=2; $sayi1/$sayi2" | bc
echo "scale=2; $sayi1+$sayi2" | bc

# karekök alma, -l: library
echo "scale=10; sqrt(5)" | bc -l

# küp alma,
echo "scale=2; $sayi2^3" | bc -l
echo "scale=2; $sayi1^3" | bc -l


# Dosya Dogrulama islemleri
# -e: alt satıra gecmesini engeller, \c: imleci durdurur.
echo -e "Dosyanın ismini giriniz: \c"
read dosyaismi
if [ -e $dosyaismi ] # -e: exist
then
   echo "$dosyaismi bulundu"
else
   echo "$dosyaismi bulunamadı"
fi

# -s
echo -e "Dosyanın ismini giriniz: \c"
read dosyaismi
if [ -s $dosyaismi ] # -e: exist
then
   echo "$dosyaismi icerigi dolu"
else
   echo "$dosyaismi icerigi bos"
fi


# -w
echo -e "Dosyanın ismini giriniz: \c"
read dosyaismi
if [ -w $dosyaismi ] # -e: exist
then
   echo "$dosyaismi yazılabilir"
else
   echo "$dosyaismi yazılamaz"
fi


echo -e "Dosyanın ismini giriniz: \c"
read dosyaismi
if [ -f $dosyaismi ]
then
   if [ -w $dosyaismi ]
      then
         echo "Dosya yazılabilir. ctrl+d ile cıkabilirsiniz"
         cat >> $dosyaismi
   else
      echo "Dosya yazılabilir degil"
   fi
else
echo "dosya mevcut degil"
fi


# Case Kullanımı
echo -e "Bir arac giriniz: \c"
read arac
case $arac in
  "araba" )
  echo "$arac 200tl'ye günlük kiralanır.";;
  "motosiklet" )
  echo "$arac 100tl'ye günlük kiralanır.";;
  "bisiklet" )
  echo "$arac 50tl'ye kiralanır.";;
  * )
  echo "$arac kiralık degildir.";;
esac



echo -e "Bir karakter giriniz: \c"
read deger
case $deger in
    [a-z] )
        echo "Kullanıcı harf girisi yaptı, $deger";;
    [0-9] )
    	echo "Kullanıcı rakam girisi yaptı, $deger";;
    ? )
        echo "Kullanıcı özel karakter girisi yaptı, $deger";;
    * )
        echo "Bilinmeyen karakter";;
esac


# diziler kullanımı
OS=( 'Linux' 'Windows' 'Unix' )
echo "${OS[@]}" # tüm dizi elemanlarını gösterir
echo "${OS[2]}"
echo "${!OS[@]}" # dizi elemanlarının index sırasını gösterir.
echo "${#OS[@]}" # dizinin eleman sayısnı gösterir
OS[3]='Mac' # diziye eleman ekleme
echo "${OS[@]}"
unset OS[1] # eleman cıkarma
echo "${OS[@]}"
echo "${!OS[@]}"

MULTILINE-COMMENT







