echo "Generating binary files..."


function configure()
{
	mkdir -p build/Evaluation/$1
	cmake -S ./\
		-B ./build/Evaluation/$1\
		--toolchain="CMake/Linux-Clang.cmake"\
		-G "Ninja"\
		-DCMAKE_BUILD_TYPE=Release\
		-DEVALUATE_PROJECT:STRING=$1
}


function build_all()
{
	cd build/Evaluation/$1

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

	cd ../../../
}


if [ $# -lt 1 ]
then
	configure Speed
	build_all Speed $2
	bash Evaluation/assembly.sh $2
	bash Evaluation/compile.sh $2
	bash Evaluation/perf.sh 42 12500 10 $2
	build_all Speed $2

	configure valgrind
	build_all valgrind $2
	bash Evaluation/cachegrind.sh 42 12500 $2
	bash Evaluation/memcheck.sh 42 12500 $2
	build_all valgrind $2

elif [ $1 == "assembly" ] || [ $1 == "compile" ]
then
	configure Speed
	build_all Speed $2
	bash Evaluation/$1.sh $2
	build_all Speed $2

elif [ $1 == "cachegrind" ] || [ $1 == "memcheck" ]
then
	configure valgrind
	build_all valgrind $2
	bash Evaluation/$1.sh 42 12500 $2
	build_all valgrind $2

elif [ $1 == "perf" ]
then
	configure Speed
	build_all Speed $2
	bash Evaluation/$1.sh 42 12500 10 $2
	build_all Speed $2

else
	echo "Invalid evaluation script $1. Must be one of:"
	echo "assembly"
	echo "cachegrind"
	echo "compile"
	echo "memcheck"
	echo "perf (with elevated rights)"
	exit 1
fi
