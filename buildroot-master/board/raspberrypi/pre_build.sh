TOP_DIR=$(pwd)
echo $TOP_DIR

echo "sleep 5" > $TOP_DIR/output/target/etc/init.d/S91network_restart.sh
sync
echo "/etc/init.d/S40network restart" >> $TOP_DIR/output/target/etc/init.d/S91network_restart.sh
sync
chmod 755 $TOP_DIR/output/target/etc/init.d/S91network_restart.sh

echo "" >> $TOP_DIR/output/target/etc/network/interfaces
sync
echo "auto eth0" >> $TOP_DIR/output/target/etc/network/interfaces
sync
echo "iface eth0 inet dhcp" >> $TOP_DIR/output/target/etc/network/interfaces
sync
