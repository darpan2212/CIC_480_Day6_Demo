#!/bin/bash

cnt=10;

until [ $cnt -lt 5 ]
do
	echo $cnt;
	((cnt--));
done
