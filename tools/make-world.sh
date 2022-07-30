set -e
list_of_directories=$(cat tools/list_of_directories.txt)

cd RxCpp
cmake .
cmake --build . --config Release
sudo cmake --build . --config Release --target install
cd ..

cd cpp-httplib
cmake .
cmake --build . --config Release
sudo cmake --build . --config Release --target install
cd ..

cd ircc
cmake .
cmake --build . --config Release
sudo cmake --build . --config Release --target install
cd ..

for directory in $list_of_directories
do
    echo "Making $directory"
    cd $directory
    sh ./tools/build.sh
    sudo sh ./tools/install.sh

    # if directory tests exists
    if [ -d "tests" ]; then
        cd tests
        python3 ./make.py
        cd ..
    fi
    
    cd ..
done

sudo cp ./bin/reproxy-arm /usr/bin/reproxy