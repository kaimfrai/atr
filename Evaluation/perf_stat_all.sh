if [ $# -lt 4 ]
then
	echo "perf_stat_all.sh benötigt hierfür 4 Argumente."
	exit 1
fi

echo "Durchschnittliche Ausführungszeit über $4 Ausführungen wird gemessen..."

mkdir -p ../build/perf_stat_evaluation/$1_$2_$3/
cd ../build/perf_stat_evaluation/$1_$2_$3/

echo 0 > /proc/sys/kernel/nmi_watchdog

if [ $# -lt 5 ] || [ $5 == "virtual" ]
then
	echo "virtual"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Virtual/evaluation_virtual\
		$1 $2 $3\
		2> virtual.txt
fi

if [ $# -lt 5 ] || [ $5 == "any" ]
then
	echo "any"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Any/evaluation_any\
		$1 $2 $3\
		2> any.txt
fi

if [ $# -lt 5 ] || [ $5 == "dyno" ]
then
	echo "dyno"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Dyno/evaluation_dyno\
		$1 $2 $3\
		2> dyno.txt
fi

if [ $# -lt 5 ] || [ $5 == "polymorphic" ]
then
	echo "polymorphic"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Polymorphic/evaluation_polymorphic\
		$1 $2 $3\
		2> polymorphic.txt
fi

if [ $# -lt 5 ] || [ $5 == "type_erasure" ]
then
	echo "type_erasure"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/TypeErasure/evaluation_type_erasure\
		$1 $2 $3\
		2> type_erasure.txt
fi

if [ $# -lt 5 ] || [ $5 == "archetype" ]
then
	echo "archetype"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Archetype/evaluation_archetype\
		$1 $2 $3\
		2> archetype.txt
fi

if [ $# -lt 5 ] || [ $5 == "replication" ]
then
	echo "replication"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Replication/evaluation_replication\
		$1 $2 $3\
		2> replication.txt
fi

if [ $# -lt 5 ] || [ $5 == "variant" ]
then
	echo "variant"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Variant/evaluation_variant\
		$1 $2 $3\
		2> variant.txt
fi

if [ $# -lt 5 ] || [ $5 == "visitor" ]
then
	echo "visitor"
	perf\
		stat\
		--repeat $4\
		../../Evaluation/Evaluation/Visitor/evaluation_visitor\
		$1 $2 $3\
		2> visitor.txt
fi

echo 1 > /proc/sys/kernel/nmi_watchdog

cd ../../../Evaluation

echo "Ergebnisse in ../build/perf_stat/evaluation/$1_$2_$3/"
