#!/bin/bash
# a script for generating lists for train test validation
rm "mytrainfile.txt"

for i in {1..8};
do
	for j in {1..30..2};
	do
		name=$i"_"$j"_s"
		echo $name >> "mytrainfile.txt"
	done
done

rm "myvalfile.txt"

for i in {1..8};
do
	for j in {1..30..4};
	do
		name=$i"_"$j"_s"
		echo $name >> "myvalfile.txt"
	done
done

rm "mytestfile.txt"

for i in {1..8};
do
	for j in {2..30..2};
	do
		name=$i"_"$j"_s"
		echo $name >> "mytestfile.txt"
	done
done


