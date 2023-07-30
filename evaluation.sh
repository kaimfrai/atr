echo "Generating binary files..."

mkdir -p build/Evaluation

cmake -S ./\
	-B ./build/Evaluation\
	--toolchain="CMake/Linux-Clang.cmake"\
	-G "Ninja"\
	-DCMAKE_BUILD_TYPE=Release\
	-DFASTER_BUILD_SPEED:BOOL=TRUE

cd build/Evaluation/

if [ $# -lt 2 ]
then
	ninja\
		Virtual\
		Any\
		Dyno\
		Polymorphic\
		TypeErasure\
		Archetype\
		Replication\
		TagReplication\
		Variant\
		Visitor
elif
	[ $2 == "Virtual" ] \
||	[ $2 == "Any" ] \
||	[ $2 == "Dyno" ] \
||	[ $2 == "Polymorphic" ] \
||	[ $2 == "TypeErasure" ] \
||	[ $2 == "Archetype" ] \
||	[ $2 == "Replication" ] \
||	[ $2 == "TagReplication" ] \
||	[ $2 == "Variant" ] \
||	[ $2 == "Visitor" ] \
||	[ $2 == "Any" ]
then
	ninja\
		"$2"
else
	echo "Invalid target $2. Must be one of:"
	echo "Virtual"
	echo "Any"
	echo "Dyno"
	echo "Polymorphic"
	echo "TypeErasure"
	echo "Archetype"
	echo "Replication"
	echo "TagReplication"
	echo "Variant"
	echo "Visitor"
	exit 1
fi

cd ../../

if [ $# -lt 1 ]
then
	bash Evaluation/assembly.sh $2
	bash Evaluation/cachegrind.sh 42 100000 $2
	bash Evaluation/compile.sh $2
	bash Evaluation/memcheck.sh 42 100000 $2
	bash Evaluation/perf.sh 42 100000 100 $2
elif [ $1 == "assembly" ] || [ $1 == "compile" ]
then
	bash Evaluation/$1.sh $2
elif [ $1 == "cachegrind" ] || [ $1 == "memcheck" ]
then
	bash Evaluation/$1.sh 42 100000 $2
elif [ $1 == "perf" ]
then
	bash Evaluation/$1.sh 42 100000 100 $2
else
	echo "Invalid evaluation script $1. Must be one of:"
	echo "assembly"
	echo "cachegrind"
	echo "compile"
	echo "memcheck"
	echo "perf (with elevated rights)"
	exit 1
fi
