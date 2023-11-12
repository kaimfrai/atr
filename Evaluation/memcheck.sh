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
	execute_memcheck $1 $2 "Any"
	execute_memcheck $1 $2 "Archetype"
	execute_memcheck $1 $2 "Dyno"
	execute_memcheck $1 $2 "Polymorphic"
	execute_memcheck $1 $2 "Replication"
	execute_memcheck $1 $2 "TagATR"
	execute_memcheck $1 $2 "TagReplication"
	execute_memcheck $1 $2 "TypeErasure"
	execute_memcheck $1 $2 "Variant"
	execute_memcheck $1 $2 "Virtual"
	execute_memcheck $1 $2 "Visitor"
else
	execute_memcheck $1 $2 $3
fi

cd ../../

echo "Results in build/memcheck_$1_$2/"
