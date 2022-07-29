
list_of_packages=$(cat ./tools/repos.list)

cd RxCpp
cmake .
git clean -xfd
cd ..

cd cpp-httplib
cmake .
git clean -xfd
cd ..

for package in $list_of_packages
do
    echo "Building $package"
    cd $package
    sh ./tools/clean.sh
    cd ..
done