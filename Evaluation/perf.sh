if [ $# -lt 2 ]
then
	echo "perf.sh requires 2 arguments!"
	exit 1
fi

echo "Measuring average execution time over $2 executions..."

mkdir -p Evaluation/Results/perf_$1/

function execute_perf()
{
	echo $3

	stat_file=Evaluation/Results/perf_$1/$3.txt
	perf\
		stat\
		--repeat $2\
		build/Evaluation/Speed/bin/$3\
		0 $1\
		2> $stat_file

	# replace multiple spaces with tabs
	sed -i 's/  \+/\t/g' $stat_file
	sed -i 's/msec /msec\t/g' $stat_file
	# single colums
	sed -i 's/\t#\t/\n\t/g' $stat_file
	# header then indendet value
	sed -i 's/^\t\([^\t]\+\)\t\([^(]\+\)/\2\n\t\1/g' $stat_file
	# remove trailing whitespace
	sed -i 's/\t$//g' $stat_file
	# new line for +-
	sed -i 's/\t*( +-\t\([0-9,%]\+\) )/\n\t+- \1/g' $stat_file
	# remove :u
	sed -i 's/:u$//g' $stat_file
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

echo "Results in Evaluation/Results/perf_$1/"
