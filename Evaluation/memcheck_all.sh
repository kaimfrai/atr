if [ $# -lt 3 ]
then
	echo "memcheck_all.sh benötigt hierfür 3 Argumente."
	exit 1
fi

echo "Arbeitsspeicherverbrauch wird gemessen..."

mkdir -p ../build/memcheck_evaluation/$1_$2_$3/
cd ../build/memcheck_evaluation/$1_$2_$3/

if [ $# -lt 4 ] || [ $4 == "virtual" ]
then
	echo "virtual"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Virtual/evaluation_virtual\
		$1 $2 $3\
		2> virtual.txt
fi

if [ $# -lt 4 ] || [ $4 == "any" ]
then
	echo "any"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Any/evaluation_any\
		$1 $2 $3\
		2> any.txt
fi

if [ $# -lt 4 ] || [ $4 == "dyno" ]
then
	echo "dyno"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Dyno/evaluation_dyno\
		$1 $2 $3\
		2> dyno.txt
fi

if [ $# -lt 4 ] || [ $4 == "polymorphic" ]
then
	echo "polymorphic"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Polymorphic/evaluation_polymorphic\
		$1 $2 $3\
		2> polymorphic.txt
fi

if [ $# -lt 4 ] || [ $4 == "type_erasure" ]
then
	echo "type_erasure"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/TypeErasure/evaluation_type_erasure\
		$1 $2 $3\
		2> type_erasure.txt
fi

if [ $# -lt 4 ] || [ $4 == "archetype" ]
then
	echo "archetype"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Archetype/evaluation_archetype\
		$1 $2 $3\
		2> archetype.txt
fi

if [ $# -lt 4 ] || [ $4 == "replication" ]
then
	echo "replication"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Replication/evaluation_replication\
		$1 $2 $3\
		2> replication.txt
fi

if [ $# -lt 4 ] || [ $4 == "variant" ]
then
	echo "variant"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Variant/evaluation_variant\
		$1 $2 $3\
		2> variant.txt
fi

if [ $# -lt 4 ] || [ $4 == "visitor" ]
then
	echo "visitor"
	valgrind\
		--tool=memcheck\
		../../Evaluation/Evaluation/Visitor/evaluation_visitor\
		$1 $2 $3\
		2> visitor.txt
fi

cd ../../

echo "Ergebnisse in ../build/memcheck_evaluation/$1_$2_$3/"
