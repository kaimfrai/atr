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
		evaluation_virtual\
		evaluation_any\
		evaluation_dyno\
		evaluation_polymorphic\
		evaluation_type_erasure\
		evaluation_archetype\
		evaluation_replication\
		evaluation_variant\
		evaluation_visitor
else
	ninja\
		"evaluation_$2"
fi

cd ../../

if [ $# -lt 1 ] || [ $1 == "compile" ]
then
	bash Evaluation/compile_all.sh $2
fi

if [ $# -lt 1 ] || [ $1 == "assembly" ]
then
	bash Evaluation/assembly_all.sh $2
fi

if [ $# -lt 1 ] || [ $1 == "memcheck" ]
then
	bash Evaluation/memcheck_all.sh 1 42 100000 $2
fi

if [ $# -lt 1 ] || [ $1 == "cachegrind" ]
then
	bash Evaluation/cachegrind_all.sh 1 42 100000 $2
fi

if [ $# -lt 1 ] || [ $1 == "perf" ]
then
	bash Evaluation/perf_stat_all.sh 1 42 100000 100 $2
fi