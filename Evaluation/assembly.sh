echo "Generating assemblies..."

mkdir -p Evaluation/Results/$2assembly/

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
		build/$2Evaluation/bin/$1\
		> Evaluation/Results/$2assembly/$1.s
}

if	[ $# -lt 1 ] \
||	[ $1 == "all" ]
then
	assemble "Any" $2
	assemble "Archetype" $2
	assemble "Dyno" $2
	assemble "Polymorphic" $2
	assemble "Replication" $2
	assemble "SOAReplication" $2
	assemble "TagATR" $2
	assemble "TagReplication" $2
	assemble "TypeErasure" $2
	assemble "Variant" $2
	assemble "Virtual" $2
	assemble "Visitor" $2
else
	assemble $1 $2
fi

echo "Results in Evaluation/Results/$2assembly/"
