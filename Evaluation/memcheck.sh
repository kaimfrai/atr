if [ $# -lt 1 ]
then
	echo "memcheck.sh requires 1 argument!"
	exit 1
fi

echo "Measuring memory consumption..."

mkdir -p build/Evaluation/valgrind/memcheck_$1/
mkdir -p Evaluation/Results/memcheck_$1/

function execute_memcheck()
{
	echo $2

	valgrind\
		--tool=memcheck\
		build/Evaluation/valgrind/bin/$2\
		0 $1\
		2> build/Evaluation/valgrind/memcheck_$1/$2.txt

	cut --complement -d' ' -f1 build/Evaluation/valgrind/memcheck_$1/$2.txt > Evaluation/Results/memcheck_$1/$2.txt
}

if	[ $# -lt 2 ] \
||	[ $2 == "all" ]
then
	execute_memcheck $1 "Any"
	execute_memcheck $1 "Archetype"
	execute_memcheck $1 "Dyno"
	execute_memcheck $1 "Polymorphic"
	execute_memcheck $1 "Replication"
	execute_memcheck $1 "SOAATR"
	execute_memcheck $1 "SOAReplication"
	execute_memcheck $1 "TagATR"
	execute_memcheck $1 "TagReplication"
	execute_memcheck $1 "TypeErasure"
	execute_memcheck $1 "Variant"
	execute_memcheck $1 "Virtual"
	execute_memcheck $1 "Visitor"
else
	execute_memcheck $1 $2
fi

echo "Results in Evaluation/Results/memcheck_$1/"
