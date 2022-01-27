#!/bin/bash

############################################################################################################################################################################################
##Binary Clock - Michael Rogers
############################################################################################################################################################################################

while :
do

hour=$( date +%H )
hour=$(( 10#${hour} ))
min=$( date +%M )
min=$(( 10#${min} ))
sec=$( date +%S )
sec=$(( 10#${sec} ))

if [ $hour -ge 20 ]; then hf2=1 && hour=$((hour-20));else hf2=0;fi 
if [ $hour -ge 10 ]; then hf1=1 && hour=$((hour-10));else hf1=0;fi
if [ $hour -ge 8 ]; then hs8=1 && hour=$((hour-8));else hs8=0;fi
if [ $hour -ge 4 ]; then hs4=1 && hour=$((hour-4));else hs4=0;fi
if [ $hour -ge 2 ]; then hs2=1 && hour=$((hour-2));else hs2=0;fi
if [ $hour -ge 1 ]; then hs1=1 && hour=$((hour-1));else hs1=0;fi 

if [ $min -ge 40 ]; then mf4=1 && min=$((min-40));else mf4=0;fi
if [ $min -ge 20 ]; then mf2=1 && min=$((min-20));else mf2=0;fi 
if [ $min -ge 10 ]; then mf1=1 && min=$((min-10));else mf1=0;fi
if [ $min -ge 8 ]; then ms8=1 && min=$((min-8));else ms8=0;fi
if [ $min -ge 4 ]; then ms4=1 && min=$((min-4));else ms4=0;fi
if [ $min -ge 2 ]; then ms2=1 && min=$((min-2));else ms2=0;fi
if [ $min -ge 1 ]; then ms1=1 && min=$((min-1));else ms1=0;fi 

if [ $sec -ge 40 ]; then sf4=1 && sec=$((sec-40));else sf4=0;fi
if [ $sec -ge 20 ]; then sf2=1 && sec=$((sec-20));else sf2=0;fi 
if [ $sec -ge 10 ]; then sf1=1 && sec=$((sec-10));else sf1=0;fi
if [ $sec -ge 8 ]; then ss8=1 && sec=$((sec-8));else ss8=0;fi
if [ $sec -ge 4 ]; then ss4=1 && sec=$((sec-4));else ss4=0;fi
if [ $sec -ge 2 ]; then ss2=1 && sec=$((sec-2));else ss2=0;fi
if [ $sec -ge 1 ]; then ss1=1 && sec=$((sec-1)); else ss1=0;fi

clear

echo -e "\t\t  $hs8   $ms8   $ss8"
echo -e "\t\t  $hs4 $mf4 $ms4 $sf4 $ss4"
echo -e "\t\t$hf2 $hs2 $mf2 $ms2 $sf2 $ss2"
echo -e "\t\t$hf1 $hs1 $mf1 $ms1 $sf1 $ss1"
echo -e "\t\t  $(date +%H):$(date +%M):$(date +%S)"

sleep 1

done

