#! /bin/bash
length_ft=60
breadth_ft=40
length_meter=$((length_ft*3/10))
breadth_meter=$((breadth_ft*3/10))
area_ft=$((length_ft*breadth_ft))
area_meter=$((length_meter*breadth_meter))
echo $length_ft"ft =" $length_meter"meter"
echo $breadth_ft"ft =" $breadth_meter"meter"
echo "Area in ft =" $area_ft "sq ft"
echo "Area in meter =" $area_meter "sq meter"
area_of_25=$((area_meter*25))
echo "Area of 25 such reactangle in meter =" $area_of_25 "sq meter"
area_acre=$((area_of_25/4047))
echo "Area of 25 such reactangle in Acre =" $area_acre "acre"
