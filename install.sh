echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="Art Bionic Build Core Icu4c Framework/av Framework/base Framework/opt Framework/native Packages"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/patches/samsung/kyleproxx/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
