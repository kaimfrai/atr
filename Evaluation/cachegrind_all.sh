if [ $# -lt 3 ]
then
	echo "cachegrind_all.sh benötigt hierfür 3 Argumente."
	exit 1
fi

echo "Cachespeicherverbrauch wird gemessen..."

mkdir -p ../build/cachegrind_evaluation/$1_$2_$3/

cd ../build/cachegrind_evaluation/$1_$2_$3/

if [ $# -lt 4 ] || [ $4 == "virtual" ]
then
	echo "virtual"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Virtual/evaluation_virtual\
		$1 $2 $3\
		2> virtual.txt
fi

if [ $# -lt 4 ] || [ $4 == "any" ]
then
	echo "any"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Any/evaluation_any\
		$1 $2 $3\
		2> any.txt
fi

if [ $# -lt 4 ] || [ $4 == "dyno" ]
then
	echo "dyno"
	valgrind\
		--tool=cachegrind\
		../../clang/Evaluation/Dyno/evaluation_dyno\
		$1 $2 $3\
		2> dyno.txt
fi

if [ $# -lt 4 ] || [ $4 == "polymorphic" ]
then
	echo "polymorphic"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Polymorphic/evaluation_polymorphic\
		$1 $2 $3\
		2> polymorphic.txt
fi

if [ $# -lt 4 ] || [ $4 == "type_erasure" ]
then
	echo "type_erasure"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/TypeErasure/evaluation_type_erasure\
		$1 $2 $3\
		2> type_erasure.txt
fi

if [ $# -lt 4 ] || [ $4 == "archetype" ]
then
	echo "archetype"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Archetype/evaluation_archetype\
		$1 $2 $3\
		2> archetype.txt
fi

if [ $# -lt 4 ] || [ $4 == "replication" ]
then
	echo "replication"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Replication/evaluation_replication\
		$1 $2 $3\
		2> replication.txt
fi

if [ $# -lt 4 ] || [ $4 == "variant" ]
then
	echo "variant"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Variant/evaluation_variant\
		$1 $2 $3\
		2> variant.txt
fi

cd ../../../Evaluation

echo "Ergebnisse in ../build/cachegrind_evaluation/$1_$2_$3/"
