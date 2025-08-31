if [ $# -lt 1 ]
then
	echo "cachegrind.sh requires 1 argument!"
	exit 1
fi

echo "Measuring cache usage..."

mkdir -p build/Evaluation/valgrind/cachegrind_$1/
mkdir -p Evaluation/Results/cachegrind_$1/

function execute_cachegrind ()
{
	echo $2

	valgrind\
		--tool=cachegrind\
		--cache-sim=yes\
		--branch-sim=yes\
		build/Evaluation/valgrind/bin/$2\
		0 $1\
		2> build/Evaluation/valgrind/cachegrind_$1/$2.txt

	cut --complement -d' ' -f1 build/Evaluation/valgrind/cachegrind_$1/$2.txt > Evaluation/Results/cachegrind_$1/$2.txt
}

if	[ $# -lt 2 ] \
||	[ $2 == "all" ]
then
	execute_cachegrind $1 "Any"
	execute_cachegrind $1 "Archetype"
	execute_cachegrind $1 "Dyno"
	execute_cachegrind $1 "Polymorphic"
	execute_cachegrind $1 "Replication"
	execute_cachegrind $1 "SOAATR"
	execute_cachegrind $1 "SOAReplication"
	execute_cachegrind $1 "TagATR"
	execute_cachegrind $1 "TagReplication"
	execute_cachegrind $1 "TypeErasure"
	execute_cachegrind $1 "Variant"
	execute_cachegrind $1 "Virtual"
	execute_cachegrind $1 "Visitor"
else
	execute_cachegrind $1 $2
fi

rm cachegrind.out.*

echo "Results in Evaluation/Results/cachegrind_$1/"
