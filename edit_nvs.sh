#!/data/busybox/sh

BYTE_1=$2
BYTE_2=$3
BYTE_3=$4
BYTE_4=$5
BYTE_5=$6
BYTE_6=$7
BYTE_7=$8
BYTE_8=$9

NUM_OF_ARGS=$#

if [ $NUM_OF_ARGS != 9 ]; then
echo "Error! , Only 9 arguments (bytes) are required."
echo "i.e. by running ./edit_nvs wl18xx-nvs.bin 08 00 28 11 22 33 01 00"
echo "you are configuring the nvs for MAC address 08:00:28:11:22:33, with number of assembled antennas 2.4Ghz set to 1 and external dc2dc to 0"
exit
fi


if [ ${#BYTE_1} != 2 ]; then
echo "Error! , Each argument (byte) should be 2 chars long in Hex format!"
echo "i.e. 0x8C should be written as 8C"
exit
fi

if [ -f $1 ]; then
echo "Updating $1 nvs file..."
else
"Error! , $1 file not found!!!"
exit
fi


cp $1 nvs_test
echo -en \\x$BYTE_6\\x$BYTE_5\\x$BYTE_4\\x$BYTE_3\\x$BYTE_1\\x$BYTE_2\\x$BYTE_7\\x$BYTE_8 > number
dd if=number of=nvs_test obs=1 conv=notrunc seek=0

cp nvs_test $1
rm number
rm nvs_test

sync
echo "Your new MAC Address is: $BYTE_1-$BYTE_2-$BYTE_3-$BYTE_4-$BYTE_5-$BYTE_6 ."
echo "number of assembled antennas 2.4Ghz is $BYTE_7 "
echo "external dc2dc is set to $BYTE_8 "