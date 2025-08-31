if [ $# -lt 1 ]
then
	echo "perf.sh requires 1 argument!"
	exit 1
fi

echo "Measuring minimum execution time..."

mkdir -p Evaluation/Results/perf_$1/

function execute_perf_single()
{
	stat_file=Evaluation/Results/perf_$1/$2.tmp
	perf\
		stat\
		build/Evaluation/Speed/bin/$2\
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

	# parse actual time with .
	sed -n 's/^\t\([0-9]\+\)[,.]\([0-9]\+\) msec.*/\1.\2/p' $stat_file
}

function execute_perf()
{
	temp_file=Evaluation/Results/perf_$1/$2.tmp
	final_file=Evaluation/Results/perf_$1/$2.txt

	time=$(execute_perf_single $1 $2)
	mv $temp_file $final_file
	echo "$time msec to run $2"

	for	(( i=0; i<1024; i++ ))
	do
		new_time=$(execute_perf_single $1 $2)

		if (( $(echo "$new_time < $time" | bc -l) ));
		then
			time=$new_time
			mv $temp_file $final_file
			echo -e "\e[1A\e[K$(printf "%5s" $time) msec to run $2"

			i=0
		fi
	done

	rm $temp_file
}

if	[ $# -lt 2 ] \
||	[ $2 == "all" ]
then
	execute_perf $1 "Any"
	execute_perf $1 "Archetype"
	execute_perf $1 "Dyno"
	execute_perf $1 "Polymorphic"
	execute_perf $1 "Replication"
	execute_perf $1 "SOAATR"
	execute_perf $1 "SOAReplication"
	execute_perf $1 "TagATR"
	execute_perf $1 "TagReplication"
	execute_perf $1 "TypeErasure"
	execute_perf $1 "Variant"
	execute_perf $1 "Virtual"
	execute_perf $1 "Visitor"
else
	execute_perf $1 $2
fi

echo "Results in Evaluation/Results/perf_$1/"
