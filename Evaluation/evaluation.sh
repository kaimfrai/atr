echo "Binär-Dateien werden generiert..."
cd ..
mkdir -p build/Evaluation
cmake -S ./ -B ./build/Evaluation  --toolchain="CMake/Linux-Clang.cmake" -G "Ninja" -DCMAKE_BUILD_TYPE=Release
cd ./build/Evaluation/
ninja evaluation_virtual evaluation_any evaluation_dyno evaluation_polymorphic evaluation_type_erasure evaluation_archetype evaluation_replication evaluation_variant
cd ../../Evaluation

if [ $# -ne 1 ] || [ $1 == "compile" ]
then
	bash compile_all.sh
fi

if [ $# -ne 1 ] || [ $1 == "assembly" ]
then
	bash assembly_all.sh
fi

if [ $# -ne 1 ] || [ $1 == "memcheck" ]
then
	bash memcheck_all.sh 1 42 100000
fi

if [ $# -ne 1 ] || [ $1 == "cachegrind" ]
then
	bash cachegrind_all.sh 1 42 100000
fi

if [ $# -ne 1 ] || [ $1 == "perf" ]
then
	bash perf_stat_all.sh 1 42 100000 100
fi
