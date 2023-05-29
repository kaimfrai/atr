cd build/Evaluation

echo ""

function time_build()
{
	touch ../../Evaluation/$1.cpp

	if	[ -d ../../Evaluation/$1 ]
	then
		touch ../../Evaluation/$1/*.cpp
	fi

	if	[ $1 == "Any" ] || [ $1 == "Polymorphic" ] || [ $1 == "TypeErasure" ] || [ $1 == "Dyno" ] || [ $1 == "Variant" ] || [ $1 == "Visitor" ]
	then
		touch ../../Evaluation/CRTP/*.cpp
	fi

	time=$(\time -f "%e" ninja $1 2>&1  1>/dev/null)
	echo "Time to build $1: $(echo ${time} | bc)"
}

if	[ $# -lt 1 ]
then
	time_build "Any"
	time_build "Archetype"
	time_build "Dyno"
	time_build "Polymorphic"
	time_build "Replication"
	time_build "TypeErasure"
	time_build "Variant"
	time_build "Virtual"
	time_build "Visitor"
else
	measure_time $1
fi

cd ../../
