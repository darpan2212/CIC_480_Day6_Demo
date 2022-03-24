#!/bin/bash

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;
totalWorkingHour=0;

day=0;
while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]
do
	if [ $((totalWorkingHour + 4)) -ge $MAX_WORKING_HOUR ]
	then
		isPresent=$PART_TIME;
	else
		isPresent=$((RANDOM%3));
	fi
	case $isPresent in

		$PRESENT)
			workingHour=8;
		;;

		$PART_TIME)
			workingHour=4;
		;;

		*)
			workingHour=0;
		;;

	esac;

	totalWorkingHour=$((totalWorkingHour+workingHour));
	((day++));
done

totalSalary=$((totalWorkingHour*WAGE_PER_HOUR));

echo "Employee monthly wage : $"$totalSalary "USD";
echo "Total working hour : $totalWorkingHour Hr";
echo "Total working day : $day";
