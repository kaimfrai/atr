if [ $# -lt 3 ]
then
	echo "perf.sh requires 3 arguments!"
	exit 1
fi

echo "Measuring average execution time over $3 executions..."

mkdir -p Evaluation/Results/$5perf_$1_$2/

echo 0 > /proc/sys/kernel/nmi_watchdog

function execute_perf()
{
	echo $4

	perf\
		stat\
		--repeat $3\
		build/$5Evaluation/bin/$4\
		$1 $2\
		2> Evaluation/Results/$5perf_$1_$2/$4.txt
}

if	[ $# -lt 4 ] \
||	[ $4 == "all" ]
then
	execute_perf $1 $2 $3 "Any" $5
	execute_perf $1 $2 $3 "Archetype" $5
	execute_perf $1 $2 $3 "Dyno" $5
	execute_perf $1 $2 $3 "Polymorphic" $5
	execute_perf $1 $2 $3 "Replication" $5
	execute_perf $1 $2 $3 "SOAReplication" $5
	execute_perf $1 $2 $3 "TagATR" $5
	execute_perf $1 $2 $3 "TagReplication" $5
	execute_perf $1 $2 $3 "TypeErasure" $5
	execute_perf $1 $2 $3 "Variant" $5
	execute_perf $1 $2 $3 "Virtual" $5
	execute_perf $1 $2 $3 "Visitor" $5
else
	execute_perf $1 $2 $3 $4 $5
fi

echo 1 > /proc/sys/kernel/nmi_watchdog

echo "Results in Evaluation/Results/$5perf_$1_$2/"
