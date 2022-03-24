#!/bin/bash

function add() {
	sum=$(($1 + $2));
	echo $sum;
}

result=$(add 4 7);
echo $result;

result=$(add 6 12);
echo $result;

result=$(add 12 16);
echo $result;

result=$(add 14 15);
echo $result;

result=$(add 11 13);
echo $result;
