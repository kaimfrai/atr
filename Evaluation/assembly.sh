echo "Generating assemblies..."

mkdir -p Evaluation/Results/assembly/

function assemble()
{
	echo $1
	assembly_file=Evaluation/Results/assembly/$1.s
	llvm-objdump\
		--demangle\
		--disassemble\
		--no-leading-addr\
		--no-show-raw-insn\
		--show-all-symbols\
		--symbolize-operands\
		--disassemble-zeroes\
		--disassembler-options=intel\
		build/Evaluation/Speed/bin/$1\
		> $assembly_file

	# remove padding instructions
	sed -i '/[ \t]*int3/d' $assembly_file

	# trim multiple spaces
	sed -i 's/  \+/ /g' $assembly_file
	# shorten leading whitespace to a tab
	sed -i 's/ \t/\t/g' $assembly_file
	# line break and tab between instruction and arguments
	sed -i 's/\t\([a-zA-Z0-9]\+\)\t/\t\1\n\t\t/g' $assembly_file
	# trim tab space to tab
	sed -i 's/\t /\t/g' $assembly_file
	# trim space before comma
	sed -i 's/ ,/,/g' $assembly_file
	# trim module names from symbols
	sed -i 's/@[a-zA-Z0-9_.]\+\([< >{,)][^:]\)/\1/g' $assembly_file
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
