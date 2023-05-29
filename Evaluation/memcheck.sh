if [ $# -lt 2 ]
then
	echo "memcheck.sh requires 2 arguments!"
	exit 1
fi

echo "Measuring memory consumption..."

mkdir -p build/memcheck_$1_$2/
cd build/memcheck_$1_$2/

function execute_memcheck()
{
	echo $3

	valgrind\
		--tool=memcheck\
		../Evaluation/bin/$3\
		$1 $2\
		2> $3.txt
}

if [ $# -lt 3 ]
then
	execute_memcheck $1 $2 "any"
	execute_memcheck $1 $2 "archetype"
	execute_memcheck $1 $2 "dyno"
	execute_memcheck $1 $2 "polymorphic"
	execute_memcheck $1 $2 "replication"
	execute_memcheck $1 $2 "type_erasure"
	execute_memcheck $1 $2 "variant"
	execute_memcheck $1 $2 "virtual"
	execute_memcheck $1 $2 "visitor"
else
	execute_memcheck $1 $2 $3
fi

cd ../../

echo "Results in build/memcheck_$1_$2/"
