# TARGET="/root/.ssh/authorized_keys"
TARGET="test_keys"
KEY="id_rsa.pub"

DATESTR=$(date +%Y%m%d-%H%M%S)
sudo cp $TARGET $TARGET.bak.$DATESTR

KEY_PART=$(cat $KEY|cut -d " "  -f 2)

if [ ${#KEY_PART} -ge 8 ]
then
    echo "will remove key $KEY_PART";
    sed -i "/$KEY_PART/d" $TARGET
else 
    echo "nothing to remove"
fi

# sudo cat $TARGET