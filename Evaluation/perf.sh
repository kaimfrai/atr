if [ $# -lt 3 ]
then
	echo "perf.sh requires 3 arguments!"
	exit 1
fi

echo "Measuring average execution time over $3 executions..."

mkdir -p build/perf_$1_$2/
cd build/perf_$1_$2/

echo 0 > /proc/sys/kernel/nmi_watchdog

function execute_perf()
{
	echo $4

	perf\
		stat\
		--repeat $3\
		../Evaluation/bin/$4\
		$1 $2\
		2> $4.txt
}

if	[ $# -lt 4 ]
then
	execute_perf $1 $2 $3 "Any"
	execute_perf $1 $2 $3 "Archetype"
	execute_perf $1 $2 $3 "Dyno"
	execute_perf $1 $2 $3 "Polymorphic"
	execute_perf $1 $2 $3 "Replication"
	execute_perf $1 $2 $3 "TagReplication"
	execute_perf $1 $2 $3 "TypeErasure"
	execute_perf $1 $2 $3 "Variant"
	execute_perf $1 $2 $3 "Virtual"
	execute_perf $1 $2 $3 "Visitor"
else
	execute_perf $1 $2 $3 $4
fi

echo 1 > /proc/sys/kernel/nmi_watchdog

cd ../../

echo "Results in build/perf_$1_$2/"
