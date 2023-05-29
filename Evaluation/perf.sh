if [ $# -lt 3 ]
then
	echo "perf.sh requires 3 arguments!"
	exit 1
fi

echo "Measuring average execution time over $3 executions..."

mkdir -p build/perf_$1_$2/
cd build/perf_$1_$2/

echo 0 > /proc/sys/kernel/nmi_watchdog

if [ $# -lt 4 ] || [ $4 == "virtual" ]
then
	echo "virtual"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/virtual\
		$1 $2\
		2> virtual.txt
fi

if [ $# -lt 4 ] || [ $4 == "any" ]
then
	echo "any"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/any\
		$1 $2\
		2> any.txt
fi

if [ $# -lt 4 ] || [ $4 == "dyno" ]
then
	echo "dyno"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/dyno\
		$1 $2\
		2> dyno.txt
fi

if [ $# -lt 4 ] || [ $4 == "polymorphic" ]
then
	echo "polymorphic"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/polymorphic\
		$1 $2\
		2> polymorphic.txt
fi

if [ $# -lt 4 ] || [ $4 == "type_erasure" ]
then
	echo "type_erasure"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/type_erasure\
		$1 $2\
		2> type_erasure.txt
fi

if [ $# -lt 4 ] || [ $4 == "archetype" ]
then
	echo "archetype"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/archetype\
		$1 $2\
		2> archetype.txt
fi

if [ $# -lt 4 ] || [ $4 == "replication" ]
then
	echo "replication"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/replication\
		$1 $2\
		2> replication.txt
fi

if [ $# -lt 4 ] || [ $4 == "variant" ]
then
	echo "variant"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/Variant/variant\
		$1 $2\
		2> variant.txt
fi

if [ $# -lt 4 ] || [ $4 == "visitor" ]
then
	echo "visitor"
	perf\
		stat\
		--repeat $3\
		../Evaluation/Evaluation/Visitor/visitor\
		$1 $2\
		2> visitor.txt
fi

echo 1 > /proc/sys/kernel/nmi_watchdog

cd ../../

echo "Results in build/perf_$1_$2/"
