echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="packages/apps/Settings vendor/vertex"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	#git apply --reverse $rootdirectory/vendor/vertex-mod/$dir/*.patch
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
