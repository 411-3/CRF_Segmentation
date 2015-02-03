#!/bin/bash

#script for converting from bmp format to jpg format

add1="/home/amir/darwin/projects/multiSeg_v2/experiment/MSRC_ObjCategImageDatabase_v2/Images/"
add2="/home/amir/darwin/projects/multiSeg_v2/experiment/MSRC_ObjCategImageDatabase_v2/Images/cnvrt/"

add3="/home/amir/darwin/projects/multiSeg/experiment"

bmp=".bmp"
jpg=".jpg"

#convertion from bmp format to jpg format
#for i in {1..20};
#do
#	for j in {1..34};
#	do
#		name=$i"_"$j"_s"
#		if [ ! -f $add2$name$bmp ]
#		then
#		echo "exists!!!!"		
#		convert $add1$name$bmp $add2$name$jpg
#		fi
#	done
#done

#test existence
#for i in {1..20};
#do
#	for j in {1..34};
#	do
#		name=$i"_"$j"_s"
#		if [ ! -f $add2$name$jpg ]
#		then
#		echo "File $add2$name$jpg does not exists"
#		fi
#	done
#done
if [ ! -f "myfile.txt" ]
then
echo `pwd`
fi

rm "myfile.txt"

for i in {1..20};
do
	for j in {1..34};
	do
		name=$i"_"$j"_s"
		if [ -f $add1$name$bmp ]
		then
		name=$i"_"$j"_s_GT"
		echo $name >> "myfile.txt"
		fi
	done
done

set BIN_DIR = "/home/amir/darwin/bin"

#${BIN_DIR}/convertPixelLabels -config "/home/amir/darwin/projects/multiSeg/experiment/msrcConfig.xml" -i .bmp -o .txt $add3"myfile.txt"

#convert groundtruth files to txt for labels
#/home/amir/darwin/bin/convertPixelLabels -config msrcConfig.xml -i .bmp -o .txt myfile.txt

