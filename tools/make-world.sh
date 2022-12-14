set -ex

# for each package in repos.list file
list_of_packages=$(cat ./tools/repos.list)

cd RxCpp
cmake .
cmake --build .
sudo cmake --build . --target install
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

echo ${list_of_packages}
for package in $list_of_packages
do
    echo "Making $package"
    cd $package
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