set -ex

# Add Libraries
echo "update igris"
git -C igris pull || git clone https://github.com/mirmik/igris igris

echo "update nos"
git -C nos pull || git clone https://github.com/mirmik/nos nos

echo "update crow"
git -C crow pull || git clone https://github.com/mirmik/crow crow

echo "update ralgo"
git -C ralgo pull || git clone https://github.com/mirmik/ralgo ralgo

echo "update rabbit"
git -C rabbit pull || git clone https://github.com/mirmik/rabbit rabbit

echo "update RxCpp"
git -C RxCpp pull || git clone https://github.com/ReactiveX/RxCpp RxCpp

echo "update cpp-httplib"
git -C cpp-httplib pull || git clone https://github.com/yhirose/cpp-httplib cpp-httplib

echo "update rfdaemon"
git -C rfdaemon pull || git clone https://github.com/mirmik/rfdaemon rfdaemon

echo "update ircc"
git -C ircc pull || git clone https://github.com/mirmik/ircc ircc

echo "update video-stream"
git -C video-stream pull || git clone https://github.com/mirmik/video-stream
