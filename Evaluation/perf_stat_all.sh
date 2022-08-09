if [ $# -ne 4 ]
then
	echo "perf_stat_all.sh benötigt hierfür 4 Argumente."
	exit 1
fi

echo "Durchschnittliche Ausführungszeit über $4 Ausführungen wird gemessen..."

mkdir -p ../build/perf_stat_evaluation/$1_$2_$3/
cd ../build/perf_stat_evaluation/$1_$2_$3/

echo 0 > /proc/sys/kernel/nmi_watchdog

echo "virtual"
perf stat --repeat $4 ../../Evaluation/Evaluation/Virtual/evaluation_virtual $1 $2 $3 2> virtual.txt
echo "any"
perf stat --repeat $4 ../../Evaluation/Evaluation/Any/evaluation_any $1 $2 $3 2> any.txt
echo "dyno"
perf stat --repeat $4 ../../Evaluation/Evaluation/Dyno/evaluation_dyno $1 $2 $3 2> dyno.txt
echo "polymorphic"
perf stat --repeat $4 ../../Evaluation/Evaluation/Polymorphic/evaluation_polymorphic $1 $2 $3 2> polymorphic.txt
echo "type_erasure"
perf stat --repeat $4 ../../Evaluation/Evaluation/TypeErasure/evaluation_type_erasure $1 $2 $3 2> type_erasure.txt
echo "archetype"
perf stat --repeat $4 ../../Evaluation/Evaluation/Archetype/evaluation_archetype $1 $2 $3 2> archetype.txt
echo "replication"
perf stat --repeat $4 ../../Evaluation/Evaluation/Replication/evaluation_replication $1 $2 $3 2> replication.txt
echo "variant"
perf stat --repeat $4 ../../Evaluation/Evaluation/Variant/evaluation_variant $1 $2 $3 2> variant.txt

echo 1 > /proc/sys/kernel/nmi_watchdog

cd ../../../Evaluation

echo "Ergebnisse in ../build/perf_stat/evaluation/$1_$2_$3/"
