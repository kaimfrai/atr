cd build/Evaluation

echo ""

function time_build()
{
	touch ../../Evaluation/$1.cpp

	if	[ -d ../../Evaluation/$1 ]
	then
		touch ../../Evaluation/$1/*.cpp
	fi

	if	[ $1 == "any" ] || [ $1 == "polymorphic" ] || [ $1 == "type_erasure" ] || [ $1 == "dyno" ] || [ $1 == "variant" ] || [ $1 == "visitor" ]
	then
		touch ../../Evaluation/CRTP/*.cpp
	fi

	time=$(\time -f "%e" ninja $1 2>&1  1>/dev/null)
	echo "Time to build $1: $(echo ${time} | bc)"
}

if	[ $# -lt 1 ]
then
	time_build "any"
	time_build "archetype"
	time_build "dyno"
	time_build "polymorphic"
	time_build "replication"
	time_build "type_erasure"
	time_build "variant"
	time_build "virtual"
	time_build "visitor"
else
	measure_time $1
fi

cd ../../
