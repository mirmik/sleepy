sudo systemctl stop rfdaemon.service
./install-configs.sh
./install-libs.sh
./install-apps.sh
sudo systemctl start rfdaemon.service