echo "Assemblies werden erstellt...."


mkdir -p ../build/assembly/

echo "virtual"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm Virtual/Main.cpp -o ../build/assembly/virtual.s -fexperimental-library
echo "any"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm Any/Main.cpp -o ../build/assembly/any.s -fexperimental-library
echo "dyno"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm Dyno/Main.cpp -o ../build/assembly/dyno.s -fexperimental-library
echo "polymorphic"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm Polymorphic/Main.cpp -o ../build/assembly/polymorphic.s -fexperimental-library
echo "type_erasure"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm TypeErasure/Main.cpp -o ../build/assembly/type_erasure.s -fexperimental-library
echo "archetype"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm Archetype/Main.cpp -o ../build/assembly/archetype.s -fexperimental-library
echo "replication"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm Replication/Main.cpp -o ../build/assembly/replication.s -fexperimental-library
echo "variant"
clang++-16 -std=c++2b -stdlib=libc++ -O3 -fprebuilt-module-path=../build/Evaluation/modules -frelaxed-template-template-args -S -masm=intel -fverbose-asm Variant/Main.cpp -o ../build/assembly/variant.s -fexperimental-library


echo "Ergebnisse in ../build/assembly/"

