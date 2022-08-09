echo "Binär-Dateien werden generiert..."
cd ..
mkdir -p build/Evaluation
cmake -S ./ -B ./build/Evaluation  --toolchain="CMake/Linux-Clang.cmake" -G "Ninja" -DCMAKE_BUILD_TYPE=Release
cd ./build/Evaluation/
ninja evaluation_virtual evaluation_any evaluation_dyno evaluation_polymorphic evaluation_type_erasure evaluation_archetype evaluation_replication evaluation_variant
cd ../../Evaluation

bash compile_all.sh

bash assembly_all.sh

bash memcheck_all.sh 1 42 100000

bash cachegrind_all.sh 1 42 100000

bash perf_stat_all.sh 1 42 100000 100
