if [ $# -ne 3 ]
then
	echo "cachegrind_all.sh benötigt hierfür 3 Argumente."
	exit 1
fi

echo "Cachespeicherverbrauch wird gemessen..."

mkdir -p ../build/cachegrind_evaluation/$1_$2_$3/

cd ../build/cachegrind_evaluation/$1_$2_$3/

echo "virtual"
valgrind --tool=cachegrind ../../clang/Evaluation/Virtual/evaluation_virtual $1 $2 $3 2> virtual.txt
echo "any"
valgrind --tool=cachegrind ../../clang/Evaluation/Any/evaluation_any $1 $2 $3 2> any.txt
echo "dyno"
valgrind --tool=cachegrind ../../clang/Evaluation/Dyno/evaluation_dyno $1 $2 $3 2> dyno.txt
echo "polymorphic"
valgrind --tool=cachegrind ../../clang/Evaluation/Polymorphic/evaluation_polymorphic $1 $2 $3 2> polymorphic.txt
echo "type_erasure"
valgrind --tool=cachegrind ../../clang/Evaluation/TypeErasure/evaluation_type_erasure $1 $2 $3 2> type_erasure.txt
echo "archetype"
valgrind --tool=cachegrind ../../clang/Evaluation/Archetype/evaluation_archetype $1 $2 $3 2> archetype.txt
echo "replication"
valgrind --tool=cachegrind ../../clang/Evaluation/Replication/evaluation_replication $1 $2 $3 2> replication.txt
echo "variant"
valgrind --tool=cachegrind ../../clang/Evaluation/Variant/evaluation_variant $1 $2 $3 2> variant.txt

cd ../../../Evaluation

echo "Ergebnisse in ../build/cachegrind_evaluation/$1_$2_$3/"
