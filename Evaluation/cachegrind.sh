if [ $# -lt 2 ]
then
	echo "cachegrind.sh requires 2 arguments!"
	exit 1
fi

echo "Measuring cache usage..."

mkdir -p Evaluation/Results/cachegrind_$1_$2/

function execute_cachegrind ()
{
	echo $3

	valgrind\
		--tool=cachegrind\
		build/Evaluation/bin/$3\
		$1 $2\
		2> Evaluation/Results/cachegrind_$1_$2/$3.txt
}

if	[ $# -lt 3 ] \
||	[ $3 == "all" ]
then
	execute_cachegrind $1 $2 "Any"
	execute_cachegrind $1 $2 "Archetype"
	execute_cachegrind $1 $2 "Dyno"
	execute_cachegrind $1 $2 "Polymorphic"
	execute_cachegrind $1 $2 "Replication"
	execute_cachegrind $1 $2 "SOAReplication"
	execute_cachegrind $1 $2 "TagATR"
	execute_cachegrind $1 $2 "TagReplication"
	execute_cachegrind $1 $2 "TypeErasure"
	execute_cachegrind $1 $2 "Variant"
	execute_cachegrind $1 $2 "Virtual"
	execute_cachegrind $1 $2 "Visitor"
else
	execute_cachegrind $1 $2 $3
fi

rm cachegrind.out.*

echo "Results in Evaluation/Results/cachegrind_$1_$2/"
