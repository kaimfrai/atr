if [ $# -lt 2 ]
then
	echo "perf.sh requires 2 arguments!"
	exit 1
fi

echo "Measuring average execution time over $2 executions..."

mkdir -p Evaluation/Results/perf_$1/

echo 0 > /proc/sys/kernel/nmi_watchdog

function execute_perf()
{
	echo $3

	perf\
		stat\
		--repeat $2\
		build/Evaluation/Speed/bin/$3\
		0 $1\
		2> Evaluation/Results/perf_$1/$3.txt
}

if	[ $# -lt 3 ] \
||	[ $3 == "all" ]
then
	execute_perf $1 $2 "Any"
	execute_perf $1 $2 "Archetype"
	execute_perf $1 $2 "Dyno"
	execute_perf $1 $2 "Polymorphic"
	execute_perf $1 $2 "Replication"
	execute_perf $1 $2 "SOAATR"
	execute_perf $1 $2 "SOAReplication"
	execute_perf $1 $2 "TagATR"
	execute_perf $1 $2 "TagReplication"
	execute_perf $1 $2 "TypeErasure"
	execute_perf $1 $2 "Variant"
	execute_perf $1 $2 "Virtual"
	execute_perf $1 $2 "Visitor"
else
	execute_perf $1 $2 $3
fi

echo 1 > /proc/sys/kernel/nmi_watchdog

echo "Results in Evaluation/Results/perf_$1/"
