mkdir -p Evaluation/Results/$2compile/

cd build/$2Evaluation

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
	echo "$time" > ../../Evaluation/Results/$2compile/$1.txt
}

if	[ $# -lt 1 ] \
||	[ $1 == "all" ]
then
	time_build "Any" $2
	time_build "Archetype" $2
	time_build "Dyno" $2
	time_build "Polymorphic" $2
	time_build "Replication" $2
	time_build "SOAReplication" $2
	time_build "TagATR" $2
	time_build "TagReplication" $2
	time_build "TypeErasure" $2
	time_build "Variant" $2
	time_build "Virtual" $2
	time_build "Visitor" $2
else
	time_build $1 $2
fi

cd ../../
