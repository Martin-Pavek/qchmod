#!/usr/bin/bash

if [ -z "$1" ]
then
h=${0##*/}
echo $h" FileName(s) or FolderName(s)"
exit 1
fi

while (( "$#" )); do
#echo $1; shift; done

array=( 0 400 200 100 40 20 10 4 2 1 )
d_array=${#array[@]}-1
directory=0
suma=0

str=$(ls -lhd $1 | awk -F ' ' '{ print $1 }')
echo $str" "$1
: '
-rwx rwx rwx
 421 421 421
 000 000 \\\_ +1
 000 |||  \\_ +2
 ||| |||   \_ +4
 ||| \\\_ +10
 |||  \\_ +20
 |||   \_ +40
 \\\_ +100
  \\_ +200
   \_ +400
'

if [ ${str:0:1} == "d" ]; then
directory=1
fi

for (( aa=0; aa<=$d_array; aa++ )); do
k=${array[$aa]}
p=${str:$aa:1}
#echo $aa" "$k" $p"
if [ $p != "-" ]; then
(( suma=suma+k ))
fi
done

if [ $directory == "0" ]; then
echo "chmod souboru "$1" = "$suma
else
echo "chmod adresare "$1" = "$suma
fi

shift
done

