if [ $# -lt 2 ]
then
	echo "memcheck.sh requires 2 arguments!"
	exit 1
fi

echo "Measuring memory consumption..."

mkdir -p Evaluation/Results/$4memcheck_$1_$2/

function execute_memcheck()
{
	echo $3

	valgrind\
		--tool=memcheck\
		build/$4Evaluation/bin/$3\
		$1 $2\
		2> Evaluation/Results/$4memcheck_$1_$2/$3.txt
}

if	[ $# -lt 3 ] \
||	[ $3 == "all" ]
then
	execute_memcheck $1 $2 "Any" $4
	execute_memcheck $1 $2 "Archetype" $4
	execute_memcheck $1 $2 "Dyno" $4
	execute_memcheck $1 $2 "Polymorphic" $4
	execute_memcheck $1 $2 "Replication" $4
	execute_memcheck $1 $2 "SOAReplication" $4
	execute_memcheck $1 $2 "TagATR" $4
	execute_memcheck $1 $2 "TagReplication" $4
	execute_memcheck $1 $2 "TypeErasure" $4
	execute_memcheck $1 $2 "Variant" $4
	execute_memcheck $1 $2 "Virtual" $4
	execute_memcheck $1 $2 "Visitor" $4
else
	execute_memcheck $1 $2 $3 $4
fi

echo "Results in Evaluation/Results/$4memcheck_$1_$2/"
