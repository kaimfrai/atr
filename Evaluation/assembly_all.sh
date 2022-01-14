echo "Assemblies werden erstellt...."


mkdir -p ../build/assembly/

echo "virtual"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm Virtual/Main.cpp -o ../build/assembly/virtual.s
echo "any"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm Any/Main.cpp -o ../build/assembly/any.s
echo "dyno"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm Dyno/Main.cpp -o ../build/assembly/dyno.s
echo "polymorphic"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm Polymorphic/Main.cpp -o ../build/assembly/polymorphic.s
echo "type_erasure"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm TypeErasure/Main.cpp -o ../build/assembly/type_erasure.s
echo "archetype"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm Archetype/Main.cpp -o ../build/assembly/archetype.s
echo "replication"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm Replication/Main.cpp -o ../build/assembly/replication.s
echo "variant"
clang++-13 -std=c++2b -O3 -fmodules -fprebuilt-module-path=../build/clang/modules/Release/ -frelaxed-template-template-args -S -masm=intel -fverbose-asm Variant/Main.cpp -o ../build/assembly/variant.s


echo "Ergebnisse in ../build/assembly/"
 
