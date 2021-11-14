# quietly add a user without password
newuser="cjl"
newpassword="cjl123456"
mkdir -p /home/$newuser
useradd -p $(openssl passwd -crypt $newpassword) $newuser --shell /bin/bash --home /home/$newuser
chown -R $newuser /home/$newuser
usermod -aG sudo $newuser

echo "try to grep user:$newuser"
cut -d: -f1 /etc/passwd|grep $newuser