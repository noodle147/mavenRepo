if [ -z "$1" ]; then
	echo empty file
	exit 1
else
	echo -Dfile=$1
fi

if [ -z "$2" ]; then
	echo empty version
	exit 2
else
	echo -Dversion=$2
fi

mvn install:install-file -DgroupId=com.jieleye.android.library -DartifactId=core-ui -Dversion=$2 -Dfile=$1 -Dpackaging=aar -DgeneratePom=true -DlocalRepositoryPath=.  -DcreateChecksum=true