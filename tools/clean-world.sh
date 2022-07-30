
list_of_packages=$(cat ./tools/repos.list)

rm -rf RxCpp
rm -rf cpp-httplib
rm -rf ircc

for package in $list_of_packages
do
    rm -rf $package
done