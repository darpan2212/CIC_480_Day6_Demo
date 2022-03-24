#!/bin/bash

function degCToDegF() {
	degC=$1;

	if [[ $degC -gt 0 && $degC -lt 100 ]]
	then
		div95=`echo 9 5 | awk '{print $1/$2}'`;
		mult=`echo $degC $div95 | awk '{print $1*$2}'`;
		degF=`echo $mult 32 | awk '{print $1+$2}'`;
		echo $degF;
	else
		echo "Temprature is not within freezing point";
	fi
}

function degFToDegC() {
	degF=$1;

	if [[ $degF -gt 32 && $degF -lt 212 ]]
	then
		subs=$((degF - 32));
		div59=`echo 5 9 | awk '{print $1/$2}'`;
		degC=`echo $subs $div59 | awk '{print $1*$2}'`;
		echo $degC;
	else
		echo "Temprature is not within freezing point";
	fi
}

echo "What conversion you want to do?";

echo "1. degC to degF";
echo "2. degF to degC";

read -p "select the conversion : " selection;

case $selection in
   1)
      read -p "Enter the temperature in celcius : " degC;
      degF=$(degCToDegF $degC);
      echo "$degC degC = $degF degF";
   ;;

   2)
      read -p "Enter the temperature in Ferenhit : " degF;
      degC=$(degFToDegC $degF);
      echo "$degF degF = $degC degC";
   ;;

   *)
      echo "Invalid selection";
   ;;

esac
