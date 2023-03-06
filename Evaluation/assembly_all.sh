echo "Assemblies werden erstellt...."

mkdir -p ../build/assembly/

if [ $# -lt 1 ] || [ $1 == "virtual" ]
then
	echo "virtual"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		Virtual/Main.cpp\
		-o ../build/assembly/virtual.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

if [ $# -lt 1 ] || [ $1 == "any" ]
then
	echo "any"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		Any/Main.cpp\
		-o ../build/assembly/any.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

if [ $# -lt 1 ] || [ $1 == "dyno" ]
then
	echo "dyno"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		Dyno/Main.cpp\
		-o ../build/assembly/dyno.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

if [ $# -lt 1 ] || [ $1 == "polymorphic" ]
then
	echo "polymorphic"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		Polymorphic/Main.cpp\
		-o ../build/assembly/polymorphic.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

if [ $# -lt 1 ] || [ $1 == "type_erasure" ]
then
	echo "type_erasure"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		TypeErasure/Main.cpp\
		-o ../build/assembly/type_erasure.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

if [ $# -lt 1 ] || [ $1 == "archetype" ]
then
	echo "archetype"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		Archetype/Main.cpp\
		-o ../build/assembly/archetype.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

if [ $# -lt 1 ] || [ $1 == "replication" ]
then
	echo "replication"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		Replication/Main.cpp\
		-o ../build/assembly/replication.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

if [ $# -lt 1 ] || [ $1 == "variant" ]
then
	echo "variant"
	clang++-17\
		-std=c++2b -stdlib=libc++ -O3\
		-fprebuilt-module-path=../build/Evaluation/modules\
		-S -masm=intel -fverbose-asm\
		Variant/Main.cpp\
		-o ../build/assembly/variant.s\
		-frelaxed-template-template-args\
		-fexperimental-library
fi

echo "Ergebnisse in ../build/assembly/"

