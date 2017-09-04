echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="packages/apps/Settings vendor/vertex"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/vendor/vertex-mod/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
