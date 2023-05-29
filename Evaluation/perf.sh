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
	execute_perf $1 $2 $3 "any"
	execute_perf $1 $2 $3 "archetype"
	execute_perf $1 $2 $3 "dyno"
	execute_perf $1 $2 $3 "polymorphic"
	execute_perf $1 $2 $3 "replication"
	execute_perf $1 $2 $3 "type_erasure"
	execute_perf $1 $2 $3 "variant"
	execute_perf $1 $2 $3 "virtual"
	execute_perf $1 $2 $3 "visitor"
else
	execute_perf $1 $2 $3 $4
fi

echo 1 > /proc/sys/kernel/nmi_watchdog

cd ../../

echo "Results in build/perf_$1_$2/"
