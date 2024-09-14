echo "Generating binary files..."

mkdir -p build/Evaluation

cmake -S ./\
	-B ./build/Evaluation\
	--toolchain="CMake/Linux-Clang.cmake"\
	-G "Ninja"\
	-DCMAKE_BUILD_TYPE=Release\
	-DFASTER_BUILD_SPEED:BOOL=TRUE

function build_all()
{
	cd build/Evaluation/

	if	[ $# -lt 2 ] \
	||	[ $2 == "all" ]
	then
		ninja\
			Virtual\
			Any\
			Dyno\
			Polymorphic\
			TypeErasure\
			Archetype\
			Replication\
			TagATR\
			TagReplication\
			Variant\
			Visitor\
			SOAReplication\
			SOAATR
	elif
		[ $2 == "Virtual" ] \
	||	[ $2 == "Any" ] \
	||	[ $2 == "Dyno" ] \
	||	[ $2 == "Polymorphic" ] \
	||	[ $2 == "TypeErasure" ] \
	||	[ $2 == "Archetype" ] \
	||	[ $2 == "Replication" ] \
	||	[ $2 == "TagATR" ] \
	||	[ $2 == "TagReplication" ] \
	||	[ $2 == "Variant" ] \
	||	[ $2 == "Visitor" ] \
	||	[ $2 == "Any" ] \
	||	[ $2 == "SOAReplication" ] \
	||	[ $2 == "SOAATR" ]
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
		echo "TagATR"
		echo "TagReplication"
		echo "Variant"
		echo "Visitor"
		echo "SOAReplication"
		echo "SOAATR"
		exit 1
	fi

	cd ../../
}

build_all $1 $2

if [ $# -lt 1 ]
then
	bash Evaluation/assembly.sh $2
	bash Evaluation/cachegrind.sh 42 12500 $2
	bash Evaluation/compile.sh $2
	bash Evaluation/memcheck.sh 42 12500 $2
	bash Evaluation/perf.sh 42 12500 10 $2
elif [ $1 == "assembly" ] || [ $1 == "compile" ]
then
	bash Evaluation/$1.sh $2
elif [ $1 == "cachegrind" ] || [ $1 == "memcheck" ]
then
	bash Evaluation/$1.sh 42 12500 $2
elif [ $1 == "perf" ]
then
	bash Evaluation/$1.sh 42 12500 10 $2
else
	echo "Invalid evaluation script $1. Must be one of:"
	echo "assembly"
	echo "cachegrind"
	echo "compile"
	echo "memcheck"
	echo "perf (with elevated rights)"
	exit 1
fi

build_all $1 $2
