TARGET="/root/.ssh/authorized_keys"
#TARGET="/root/.ssh/test_keys"
KEY="id_rsa.pub"
DATESTR=$(date +%Y%m%d-%H%M%S)

sudo cp $TARGET $TARGET.bak.$DATESTR

echo "" | sudo tee -a $TARGET
echo $(cat $KEY) | sudo tee -a $TARGET

sudo cat $TARGET