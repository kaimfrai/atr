echo "Generating assemblies..."

mkdir -p build/assembly/

cd build/Evaluation/modules

function assemble()
{
	echo $1

	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.$1=Evaluation/$1.pcm\
		-fmodule-file=Evaluation.Dependency.DynamicArray=Evaluation/Dependency/DynamicArray.pcm\
		-fmodule-file=Evaluation.Dependency.MainTemplate=Evaluation/Dependency/MainTemplate.pcm\
		-fmodule-file=Std=Std.pcm\
		--assemble -masm=intel\
		../../../Evaluation/$1.cpp\
		-o ../../assembly/$1.s\
		-frelaxed-template-template-args\
		-fno-addrsig\
		-march=native

}

if [ $# -lt 1 ]
then
	assemble "Any"
	assemble "Archetype"
	assemble "Dyno"
	assemble "Polymorphic"
	assemble "Replication"
	assemble "TypeErasure"
	assemble "Variant"
	assemble "Virtual"
	assemble "Visitor"
else
	assemble $1
fi

cd ../../../

echo "Results in build/assembly/"
