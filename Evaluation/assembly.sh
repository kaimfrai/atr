echo "Generating assemblies..."

mkdir -p build/assembly/

cd build/assembly

function assemble()
{
	echo $1
	llvm-objdump\
		--demangle\
		--disassemble\
		--no-leading-addr\
		--no-show-raw-insn\
		--show-all-symbols\
		--symbolize-operands\
		--disassemble-zeroes\
		--disassembler-options=intel\
		../Evaluation/bin/$1\
		> $1.s
}

if [ $# -lt 1 ]
then
	assemble "Any"
	assemble "Archetype"
	assemble "Dyno"
	assemble "Polymorphic"
	assemble "Replication"
	assemble "TagATR"
	assemble "TagReplication"
	assemble "TypeErasure"
	assemble "Variant"
	assemble "Virtual"
	assemble "Visitor"
else
	assemble $1
fi

cd ../../

echo "Results in build/assembly/"
