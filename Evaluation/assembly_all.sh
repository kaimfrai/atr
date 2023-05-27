echo "Generating assemblies..."

mkdir -p build/assembly/

if [ $# -lt 1 ] || [ $1 == "virtual" ]
then
	echo "virtual"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.Virtual=build/Evaluation/modules/Evaluation/Virtual.pcm\
		-fmodule-file=Evaluation.Virtual.IBody=build/Evaluation/modules/Evaluation/Virtual/IBody.pcm\
		-fmodule-file=Evaluation.Virtual.Cube=build/Evaluation/modules/Evaluation/Virtual/Cube.pcm\
		-fmodule-file=Evaluation.Virtual.Cuboid=build/Evaluation/modules/Evaluation/Virtual/Cuboid.pcm\
		-fmodule-file=Evaluation.Virtual.Pyramid=build/Evaluation/modules/Evaluation/Virtual/Pyramid.pcm\
		-fmodule-file=Evaluation.Virtual.Sphere=build/Evaluation/modules/Evaluation/Virtual/Sphere.pcm\
		-fmodule-file=Evaluation.Virtual.Cylinder=build/Evaluation/modules/Evaluation/Virtual/Cylinder.pcm\
		-fmodule-file=Evaluation.Virtual.Cone=build/Evaluation/modules/Evaluation/Virtual/Cone.pcm\
		-fmodule-file=Evaluation.Virtual.Ellipsoid=build/Evaluation/modules/Evaluation/Virtual/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Virtual.Head=build/Evaluation/modules/Evaluation/Virtual/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Virtual/Main.cpp\
		-o build/assembly/virtual.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "any" ]
then
	echo "any"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.Any=build/Evaluation/modules/Evaluation/Any.pcm\
		-fmodule-file=Evaluation.CRTP.Cube=build/Evaluation/modules/Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=build/Evaluation/modules/Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=build/Evaluation/modules/Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=build/Evaluation/modules/Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=build/Evaluation/modules/Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=build/Evaluation/modules/Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=build/Evaluation/modules/Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=build/Evaluation/modules/Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.InPlaceConstruct=build/Evaluation/modules/Evaluation/Shared/InPlaceConstruct.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Any/Main.cpp\
		-o build/assembly/any.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "dyno" ]
then
	echo "dyno"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.Dyno=build/Evaluation/modules/Evaluation/Dyno.pcm\
		-fmodule-file=Evaluation.Dyno.Library=build/Evaluation/modules/Evaluation/Dyno/Library.pcm\
		-fmodule-file=Evaluation.CRTP.Cube=build/Evaluation/modules/Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=build/Evaluation/modules/Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=build/Evaluation/modules/Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=build/Evaluation/modules/Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=build/Evaluation/modules/Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=build/Evaluation/modules/Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=build/Evaluation/modules/Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=build/Evaluation/modules/Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.CopyConstruct=build/Evaluation/modules/Evaluation/Shared/CopyConstruct.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Dyno/Main.cpp\
		-o build/assembly/dyno.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "polymorphic" ]
then
	echo "polymorphic"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.Polymorphic=build/Evaluation/modules/Evaluation/Polymorphic.pcm\
		-fmodule-file=Evaluation.Polymorphic.Library=build/Evaluation/modules/Evaluation/Polymorphic/Library.pcm\
		-fmodule-file=Evaluation.CRTP.Cube=build/Evaluation/modules/Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=build/Evaluation/modules/Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=build/Evaluation/modules/Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=build/Evaluation/modules/Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=build/Evaluation/modules/Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=build/Evaluation/modules/Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=build/Evaluation/modules/Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=build/Evaluation/modules/Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.CopyConstruct=build/Evaluation/modules/Evaluation/Shared/CopyConstruct.pcm\
		-fmodule-file=Evaluation.Shared.DataTypes=build/Evaluation/modules/Evaluation/Shared/DataTypes.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Polymorphic/Main.cpp\
		-o build/assembly/polymorphic.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "type_erasure" ]
then
	echo "type_erasure"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.TypeErasure=build/Evaluation/modules/Evaluation/TypeErasure.pcm\
		-fmodule-file=Evaluation.TypeErasure.Library=build/Evaluation/modules/Evaluation/TypeErasure/Library.pcm\
		-fmodule-file=Evaluation.CRTP.Cube=build/Evaluation/modules/Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=build/Evaluation/modules/Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=build/Evaluation/modules/Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=build/Evaluation/modules/Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=build/Evaluation/modules/Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=build/Evaluation/modules/Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=build/Evaluation/modules/Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=build/Evaluation/modules/Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.CopyConstruct=build/Evaluation/modules/Evaluation/Shared/CopyConstruct.pcm\
		-fmodule-file=Evaluation.Shared.DataTypes=build/Evaluation/modules/Evaluation/Shared/DataTypes.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/TypeErasure/Main.cpp\
		-o build/assembly/type_erasure.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "archetype" ]
then
	echo "archetype"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=ATR.Virtual.Entry=build/Evaluation/modules/ATR/Virtual/Entry.pcm\
		-fmodule-file=ATR.Virtual.Element=build/Evaluation/modules/ATR/Virtual/Element.pcm\
		-fmodule-file=ATR.Literals=build/Evaluation/modules/ATR/Literals.pcm\
		-fmodule-file=ATR.Instance=build/Evaluation/modules/ATR/Instance.pcm\
		-fmodule-file=Evaluation.Archetype.ComputeVolume=build/Evaluation/modules/Evaluation/Archetype/ComputeVolume.pcm\
		-fmodule-file=Evaluation.Archetype.Cube=build/Evaluation/modules/Evaluation/Archetype/Cube.pcm\
		-fmodule-file=Evaluation.Archetype.Cuboid=build/Evaluation/modules/Evaluation/Archetype/Cuboid.pcm\
		-fmodule-file=Evaluation.Archetype.Pyramid=build/Evaluation/modules/Evaluation/Archetype/Pyramid.pcm\
		-fmodule-file=Evaluation.Archetype.Sphere=build/Evaluation/modules/Evaluation/Archetype/Sphere.pcm\
		-fmodule-file=Evaluation.Archetype.Cylinder=build/Evaluation/modules/Evaluation/Archetype/Cylinder.pcm\
		-fmodule-file=Evaluation.Archetype.Cone=build/Evaluation/modules/Evaluation/Archetype/Cone.pcm\
		-fmodule-file=Evaluation.Archetype.Ellipsoid=build/Evaluation/modules/Evaluation/Archetype/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Archetype.Head=build/Evaluation/modules/Evaluation/Archetype/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.TypeConstruct=build/Evaluation/modules/Evaluation/Shared/TypeConstruct.pcm\
		-fmodule-file=Evaluation.Shared.DataTypes=build/Evaluation/modules/Evaluation/Shared/DataTypes.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Archetype/Main.cpp\
		-o build/assembly/archetype.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "replication" ]
then
	echo "replication"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.Replication.VolumeComputer=build/Evaluation/modules/Evaluation/Replication/VolumeComputer.pcm\
		-fmodule-file=Evaluation.Replication.Cube=build/Evaluation/modules/Evaluation/Replication/Cube.pcm\
		-fmodule-file=Evaluation.Replication.Cuboid=build/Evaluation/modules/Evaluation/Replication/Cuboid.pcm\
		-fmodule-file=Evaluation.Replication.Pyramid=build/Evaluation/modules/Evaluation/Replication/Pyramid.pcm\
		-fmodule-file=Evaluation.Replication.Sphere=build/Evaluation/modules/Evaluation/Replication/Sphere.pcm\
		-fmodule-file=Evaluation.Replication.Cylinder=build/Evaluation/modules/Evaluation/Replication/Cylinder.pcm\
		-fmodule-file=Evaluation.Replication.Cone=build/Evaluation/modules/Evaluation/Replication/Cone.pcm\
		-fmodule-file=Evaluation.Replication.Ellipsoid=build/Evaluation/modules/Evaluation/Replication/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Replication.Head=build/Evaluation/modules/Evaluation/Replication/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.InPlaceConstruct=build/Evaluation/modules/Evaluation/Shared/InPlaceConstruct.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Replication/Main.cpp\
		-o build/assembly/replication.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "variant" ]
then
	echo "variant"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.CRTP.Cube=build/Evaluation/modules/Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=build/Evaluation/modules/Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=build/Evaluation/modules/Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=build/Evaluation/modules/Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=build/Evaluation/modules/Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=build/Evaluation/modules/Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=build/Evaluation/modules/Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=build/Evaluation/modules/Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.InPlaceConstruct=build/Evaluation/modules/Evaluation/Shared/InPlaceConstruct.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Variant/Main.cpp\
		-o build/assembly/variant.s\
		-frelaxed-template-template-args\
		-march=native
fi

if [ $# -lt 1 ] || [ $1 == "visitor" ]
then
	echo "visitor"
	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=Evaluation.CRTP.Cube=build/Evaluation/modules/Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=build/Evaluation/modules/Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=build/Evaluation/modules/Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=build/Evaluation/modules/Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=build/Evaluation/modules/Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=build/Evaluation/modules/Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=build/Evaluation/modules/Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=build/Evaluation/modules/Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.Shared.MainTemplate=build/Evaluation/modules/Evaluation/Shared/MainTemplate.pcm\
		-fmodule-file=Evaluation.Shared.InPlaceConstruct=build/Evaluation/modules/Evaluation/Shared/InPlaceConstruct.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		-S -masm=intel -fverbose-asm\
		Evaluation/Visitor/Main.cpp\
		-o build/assembly/visitor.s\
		-frelaxed-template-template-args\
		-march=native
fi

echo "Results in build/assembly/"
