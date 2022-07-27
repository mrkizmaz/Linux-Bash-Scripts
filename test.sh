#! /bin/bash 

# ekrana string yazdırma islemi;
# echo "Hello World, This is Ersel!"

<< 'MULTILINE-COMMENT'

# Degiskenler; ------------------------------------------------
# 1. Sistem degiskenleri

echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD


# 2. User degiskenleri
isim=Ersel # str degisken
sayi=22 # int degisken

echo $isim
echo $sayi

# READ kullanımı ------------------------------------------------
echo "Ismininz: "
read isim
echo "Ismim: $isim"

# birden fazla isim
echo "Isimler: " # alt satıra atıyor!
read isim1 isim2 isim3
echo "Isımler: $isim1 $isim2 $isim3" 

# yan satıra yazmak icin:
read -p "Isminiz: " isim
read -sp "Sifreniz: " sifre # sifreyi gizlemek icin: sp
echo
echo "Isim: $isim"
echo "Sifrem: $sifre"

# degisken atamadan yazdırma
echo "Isminizi giriniz: "
read
echo "Ismim $REPLY"

# dizi ayırma 
echo "Isimler: "
read -a isimler # a: arc
echo "Isimler: ${isimler[0]}, ${isimler[1]}, ${isimler[2]}"

# ARGUMANLAR ------------------------------------------------
# ./test.sh 1 2 3 --> local degiskenler
# echo $0 $1 $2 $3 # $0 dosya ismi
# echo $@ # bütün degiskenleri yazdırır (or $*)
echo $# # kac deger oldugunu verir

dizi=("$@") # dizide * kullanılmamalı
echo ${dizi[0]} "ve" ${dizi[3]} #0. eleman

MULTILINE-COMMENT
























