mkdir -p Evaluation/Results/compile/

cd build/Evaluation

echo ""

function time_build()
{
	touch Evaluation/Dependency/CMakeFiles/Evaluation.Dependency.DynamicArray.dir/*.o
	touch Evaluation/Dependency/DynamicArray.pcm

	if	[ -d Evaluation/$1 ]
	then
		touch Evaluation/$1/*.pcm
		touch Evaluation/$1/CMakeFiles/Evaluation.$1.*.dir/*.o
	else
		touch Evaluation/CRTP/*.pcm
		touch Evaluation/CRTP/CMakeFiles/Evaluation.CRTP.*.dir/*.o
	fi

	touch Evaluation/CMakeFiles/$1.dir/*.o
	touch bin/$1

	time=$(\time -f "%e" ninja $1 2>&1  1>/dev/null)
	echo "$time seconds to build $1 "
	echo "$time" > ../../Evaluation/Results/compile/$1.txt
}

if	[ $# -lt 1 ] \
||	[ $1 == "all" ]
then
	time_build "Any"
	time_build "Archetype"
	time_build "Dyno"
	time_build "Polymorphic"
	time_build "Replication"
	time_build "SOAATR"
	time_build "SOAReplication"
	time_build "TagATR"
	time_build "TagReplication"
	time_build "TypeErasure"
	time_build "Variant"
	time_build "Virtual"
	time_build "Visitor"
else
	time_build $1
fi

cd ../../
