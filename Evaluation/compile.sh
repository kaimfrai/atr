mkdir -p Evaluation/Results/compile/

cd build/Evaluation

echo ""

function time_build()
{
	if	[	-f modules/Evaluation/Dependency/DynamicArray.o ]
	then
		rm modules/Evaluation/Dependency/DynamicArray.o
		rm modules/Evaluation/Dependency/DynamicArray.pcm
	fi

	if	[ -d modules/Evaluation/$1 ]
	then
		rm -rf modules/Evaluation/$1
	else
		rm -rf modules/Evaluation/CRTP
	fi

	if [ -f modules/Evaluation/$1.o ]
	then
		rm modules/Evaluation/$1.o
	fi
	if [ -f modules/Evaluation/$1.pcm ]
	then
		rm modules/Evaluation/$1.pcm
	fi

	rm -rf Evaluation/CMakeFiles/$1.dir/
	rm bin/$1

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
