if [ $# -lt 2 ]
then
	echo "cachegrind.sh requires 2 arguments!"
	exit 1
fi

echo "Measuring cache usage..."

mkdir -p ./build/cachegrind_$1_$2/

cd ./build/cachegrind_$1_$2/

if [ $# -lt 3 ] || [ $3 == "virtual" ]
then
	echo "virtual"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/virtual\
		$1 $2\
		2> virtual.txt
fi

if [ $# -lt 3 ] || [ $3 == "any" ]
then
	echo "any"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/any\
		$1 $2\
		2> any.txt
fi

if [ $# -lt 3 ] || [ $3 == "dyno" ]
then
	echo "dyno"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/dyno\
		$1 $2\
		2> dyno.txt
fi

if [ $# -lt 3 ] || [ $3 == "polymorphic" ]
then
	echo "polymorphic"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/polymorphic\
		$1 $2\
		2> polymorphic.txt
fi

if [ $# -lt 3 ] || [ $3 == "type_erasure" ]
then
	echo "type_erasure"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/type_erasure\
		$1 $2\
		2> type_erasure.txt
fi

if [ $# -lt 3 ] || [ $3 == "archetype" ]
then
	echo "archetype"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/archetype\
		$1 $2\
		2> archetype.txt
fi

if [ $# -lt 3 ] || [ $3 == "replication" ]
then
	echo "replication"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/replication\
		$1 $2\
		2> replication.txt
fi

if [ $# -lt 3 ] || [ $3 == "variant" ]
then
	echo "variant"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/variant\
		$1 $2\
		2> variant.txt
fi

if [ $# -lt 3 ] || [ $3 == "visitor" ]
then
	echo "visitor"
	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/visitor\
		$1 $2\
		2> visitor.txt
fi

cd ../../

echo "Results build/cachegrind_$1_$2/"
