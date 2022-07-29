# for each package in repos.list file
list_of_packages=$(cat ./tools/repos.list)

cd RxCpp
cmake .
cmake --build .
sudo cmake --build . --target install
cd ..

cd cpp-httplib
cmake .
cmake --build .
sudo cmake --build . --target install
cd ..

for package in $list_of_packages
do
    echo "Building $package"
    cd $package
    sh ./tools/build.sh
    sh ./tools/install.sh
    cd ..
done