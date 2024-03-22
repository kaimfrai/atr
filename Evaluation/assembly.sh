echo "Generating assemblies..."

mkdir -p Evaluation/Results/assembly/

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
		build/Evaluation/bin/$1\
		> Evaluation/Results/assembly/$1.s
}

if	[ $# -lt 1 ] \
||	[ $1 == "all" ]
then
	assemble "Any"
	assemble "Archetype"
	assemble "Dyno"
	assemble "Polymorphic"
	assemble "Replication"
	assemble "SOAATR"
	assemble "SOAReplication"
	assemble "TagATR"
	assemble "TagReplication"
	assemble "TypeErasure"
	assemble "Variant"
	assemble "Virtual"
	assemble "Visitor"
else
	assemble $1
fi

echo "Results in Evaluation/Results/assembly/"
