if [ $# -lt 3 ]
then
	echo "cachegrind_all.sh requires 3 arguments!"
	exit 1
fi

echo "Measuring cache usage..."

mkdir -p ./build/cachegrind_evaluation/$1_$2_$3/

cd ./build/cachegrind_evaluation/$1_$2_$3/

if [ $# -lt 4 ] || [ $4 == "virtual" ]
then
	echo "virtual"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Virtual/virtual\
		$1 $2 $3\
		2> virtual.txt
fi

if [ $# -lt 4 ] || [ $4 == "any" ]
then
	echo "any"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Any/any\
		$1 $2 $3\
		2> any.txt
fi

if [ $# -lt 4 ] || [ $4 == "dyno" ]
then
	echo "dyno"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Dyno/dyno\
		$1 $2 $3\
		2> dyno.txt
fi

if [ $# -lt 4 ] || [ $4 == "polymorphic" ]
then
	echo "polymorphic"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Polymorphic/polymorphic\
		$1 $2 $3\
		2> polymorphic.txt
fi

if [ $# -lt 4 ] || [ $4 == "type_erasure" ]
then
	echo "type_erasure"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/TypeErasure/type_erasure\
		$1 $2 $3\
		2> type_erasure.txt
fi

if [ $# -lt 4 ] || [ $4 == "archetype" ]
then
	echo "archetype"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Archetype/archetype\
		$1 $2 $3\
		2> archetype.txt
fi

if [ $# -lt 4 ] || [ $4 == "replication" ]
then
	echo "replication"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Replication/replication\
		$1 $2 $3\
		2> replication.txt
fi

if [ $# -lt 4 ] || [ $4 == "variant" ]
then
	echo "variant"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Variant/variant\
		$1 $2 $3\
		2> variant.txt
fi

if [ $# -lt 4 ] || [ $4 == "visitor" ]
then
	echo "visitor"
	valgrind\
		--tool=cachegrind\
		../../Evaluation/Evaluation/Visitor/visitor\
		$1 $2 $3\
		2> visitor.txt
fi

cd ../../../

echo "Results build/cachegrind_evaluation/$1_$2_$3/"
