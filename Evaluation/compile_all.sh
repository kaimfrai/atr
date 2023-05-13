cd ../build/Evaluation

ninja clean > /dev/null

echo ""
echo "Library Times:"

std_time=$(\time -f "%e" ninja Std 2>&1  1>/dev/null)
echo "Time Std: $(echo ${std_time} | bc)"

if [ $# -lt 1 ] || [ $1 == "type_erasure" ]
then
	type_erasue_time=$(\time -f "%e" ninja Evaluation.TypeErasure.Library 2>&1  1>/dev/null)
	echo "Time TypeErasure: $(echo ${type_erasue_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "dyno" ]
then
	dyno_time=$(\time -f "%e" ninja Evaluation.Dyno.Library 2>&1  1>/dev/null)
	echo "Time Dyno $(echo ${dyno_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "polymorphic" ]
then
	polymorphic_time=$(\time -f "%e" ninja Evaluation.Polymorphic.Library 2>&1  1>/dev/null)
	echo "Time Polymorphic: $(echo ${polymorphic_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "archetype" ]
then
	atr_time=$(\time -f "%e" ninja ATR 2>&1  1>/dev/null)
	echo "Time ATR: $(echo ${atr_time} | bc)"
fi

evaluation_time=$(\time -f "%e" ninja Evaluation.Shared 2>&1  1>/dev/null)
echo "Time Shared: $(echo ${evaluation_time} | bc)"

if [ $# -lt 1 ] || [ $1 == "any" ] || [ $1 == "polymorphic" ] || [ $1 == "type_erasure" ] || [ $1 == "dyno" ] || [ $1 == "variant" ] || [ $1 == "visitor" ]
then
	crtp_time=$(\time -f "%e" ninja Evaluation.CRTP 2>&1  1>/dev/null)
	echo "Time CRTP: $(echo ${crtp_time} | bc)"
fi

echo ""
echo "Executable Times:"

if [ $# -lt 1 ] || [ $1 == "virtual" ]
then
	evaluation_virtual_time=$(\time -f "%e" ninja evaluation_virtual 2>&1  1>/dev/null)
	echo "Time evaluation_virtual: $(echo ${evaluation_virtual_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "any" ]
then
	evaluation_any_time=$(\time -f "%e" ninja evaluation_any 2>&1  1>/dev/null)
	echo "Time evaluation_any: $(echo ${evaluation_any_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "polymorphic" ]
then
	evaluation_polymorphic_time=$(\time -f "%e" ninja evaluation_polymorphic 2>&1  1>/dev/null)
	echo "Time evaluation_polymorphic: $(echo ${evaluation_polymorphic_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "type_erasure" ]
then
	evaluation_type_erasure_time=$(\time -f "%e" ninja evaluation_type_erasure 2>&1  1>/dev/null)
	echo "Time evaluation_type_erasure: $(echo ${evaluation_type_erasure_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "dyno" ]
then
	evaluation_dyno_time=$(\time -f "%e" ninja evaluation_dyno 2>&1  1>/dev/null)
	echo "Time evaluation_dyno: $(echo ${evaluation_dyno_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "variant" ]
then
	evaluation_variant_time=$(\time -f "%e" ninja evaluation_variant 2>&1  1>/dev/null)
	echo "Time evaluation_variant: $(echo ${evaluation_variant_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "visitor" ]
then
	evaluation_visitor_time=$(\time -f "%e" ninja evaluation_visitor 2>&1  1>/dev/null)
	echo "Time evaluation_visitor: $(echo ${evaluation_visitor_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "archetype" ]
then
	evaluation_archetype_time=$(\time -f "%e" ninja evaluation_archetype 2>&1  1>/dev/null)
	echo "Time evaluation_archetype: $(echo ${evaluation_archetype_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "replication" ]
then
	evaluation_replication_time=$(\time -f "%e" ninja evaluation_replication 2>&1  1>/dev/null)
	echo "Time evaluation_replication: $(echo ${evaluation_replication_time} | bc)"
fi

cd ../../Evaluation
