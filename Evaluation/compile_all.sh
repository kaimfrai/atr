cd build/Evaluation

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

time=$(\time -f "%e" ninja Evaluation.Shared 2>&1  1>/dev/null)
echo "Time Shared: $(echo ${time} | bc)"

if [ $# -lt 1 ] || [ $1 == "any" ] || [ $1 == "polymorphic" ] || [ $1 == "type_erasure" ] || [ $1 == "dyno" ] || [ $1 == "variant" ] || [ $1 == "visitor" ]
then
	crtp_time=$(\time -f "%e" ninja Evaluation.CRTP 2>&1  1>/dev/null)
	echo "Time CRTP: $(echo ${crtp_time} | bc)"
fi

echo ""
echo "Executable Times:"

if [ $# -lt 1 ] || [ $1 == "virtual" ]
then
	virtual_time=$(\time -f "%e" ninja virtual 2>&1  1>/dev/null)
	echo "Time virtual: $(echo ${virtual_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "any" ]
then
	any_time=$(\time -f "%e" ninja any 2>&1  1>/dev/null)
	echo "Time any: $(echo ${any_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "polymorphic" ]
then
	polymorphic_time=$(\time -f "%e" ninja polymorphic 2>&1  1>/dev/null)
	echo "Time polymorphic: $(echo ${polymorphic_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "type_erasure" ]
then
	type_erasure_time=$(\time -f "%e" ninja type_erasure 2>&1  1>/dev/null)
	echo "Time type_erasure: $(echo ${type_erasure_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "dyno" ]
then
	dyno_time=$(\time -f "%e" ninja dyno 2>&1  1>/dev/null)
	echo "Time dyno: $(echo ${dyno_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "variant" ]
then
	variant_time=$(\time -f "%e" ninja variant 2>&1  1>/dev/null)
	echo "Time variant: $(echo ${variant_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "visitor" ]
then
	visitor_time=$(\time -f "%e" ninja visitor 2>&1  1>/dev/null)
	echo "Time visitor: $(echo ${visitor_time} + ${crtp_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "archetype" ]
then
	archetype_time=$(\time -f "%e" ninja archetype 2>&1  1>/dev/null)
	echo "Time archetype: $(echo ${archetype_time} | bc)"
fi

if [ $# -lt 1 ] || [ $1 == "replication" ]
then
	replication_time=$(\time -f "%e" ninja replication 2>&1  1>/dev/null)
	echo "Time replication: $(echo ${replication_time} | bc)"
fi

cd ../../
