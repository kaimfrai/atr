if [ $# -lt 2 ]
then
	echo "cachegrind.sh requires 2 arguments!"
	exit 1
fi

echo "Measuring cache usage..."

mkdir -p ./build/cachegrind_$1_$2/

cd ./build/cachegrind_$1_$2/

function execute_cachegrind ()
{
	echo $3

	valgrind\
		--tool=cachegrind\
		../Evaluation/Evaluation/$3\
		$1 $2\
		2> $3.txt
}

if [ $# -lt 3 ]
then
	execute_cachegrind $1 $2 "virtual"
	execute_cachegrind $1 $2 "any"
	execute_cachegrind $1 $2 "dyno"
	execute_cachegrind $1 $2 "polymorphic"
	execute_cachegrind $1 $2 "type_erasure"
	execute_cachegrind $1 $2 "archetype"
	execute_cachegrind $1 $2 "replication"
	execute_cachegrind $1 $2 "variant"
	execute_cachegrind $1 $2 "visitor"
	execute_cachegrind $1 $2 "virtual"
else
	execute_cachegrind $1 $2 $3
fi

cd ../../

echo "Results build/cachegrind_$1_$2/"
