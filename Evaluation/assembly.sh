echo "Generating assemblies..."

mkdir -p build/assembly/

function assemble()
{
	echo $1

	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=ATR.Instance=build/Evaluation/modules/ATR/Instance.pcm\
		-fmodule-file=ATR.Literals=build/Evaluation/modules/ATR/Literals.pcm\
		-fmodule-file=ATR.Virtual.Element=build/Evaluation/modules/ATR/Virtual/Element.pcm\
		-fmodule-file=ATR.Virtual.Entry=build/Evaluation/modules/ATR/Virtual/Entry.pcm\
		-fmodule-file=Evaluation.Any=build/Evaluation/modules/Evaluation/Any.pcm\
		-fmodule-file=Evaluation.Archetype.ComputeVolume=build/Evaluation/modules/Evaluation/Archetype/ComputeVolume.pcm\
		-fmodule-file=Evaluation.Archetype.Cone=build/Evaluation/modules/Evaluation/Archetype/Cone.pcm\
		-fmodule-file=Evaluation.Archetype.Cube=build/Evaluation/modules/Evaluation/Archetype/Cube.pcm\
		-fmodule-file=Evaluation.Archetype.Cuboid=build/Evaluation/modules/Evaluation/Archetype/Cuboid.pcm\
		-fmodule-file=Evaluation.Archetype.Cylinder=build/Evaluation/modules/Evaluation/Archetype/Cylinder.pcm\
		-fmodule-file=Evaluation.Archetype.Ellipsoid=build/Evaluation/modules/Evaluation/Archetype/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Archetype.Head=build/Evaluation/modules/Evaluation/Archetype/Head.pcm\
		-fmodule-file=Evaluation.Archetype.Pyramid=build/Evaluation/modules/Evaluation/Archetype/Pyramid.pcm\
		-fmodule-file=Evaluation.Archetype.Sphere=build/Evaluation/modules/Evaluation/Archetype/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=build/Evaluation/modules/Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Cube=build/Evaluation/modules/Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=build/Evaluation/modules/Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=build/Evaluation/modules/Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=build/Evaluation/modules/Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=build/Evaluation/modules/Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=build/Evaluation/modules/Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=build/Evaluation/modules/Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.Dependency.CopyConstruct=build/Evaluation/modules/Evaluation/Dependency/CopyConstruct.pcm\
		-fmodule-file=Evaluation.Dependency.DataTypes=build/Evaluation/modules/Evaluation/Dependency/DataTypes.pcm\
		-fmodule-file=Evaluation.Dependency.Dyno=build/Evaluation/modules/Evaluation/Dependency/Dyno.pcm\
		-fmodule-file=Evaluation.Dependency.InPlaceConstruct=build/Evaluation/modules/Evaluation/Dependency/InPlaceConstruct.pcm\
		-fmodule-file=Evaluation.Dependency.MainTemplate=build/Evaluation/modules/Evaluation/Dependency/MainTemplate.pcm\
		-fmodule-file=Evaluation.Dependency.Polymorphic=build/Evaluation/modules/Evaluation/Dependency/Polymorphic.pcm\
		-fmodule-file=Evaluation.Dependency.TypeConstruct=build/Evaluation/modules/Evaluation/Dependency/TypeConstruct.pcm\
		-fmodule-file=Evaluation.Dependency.TypeErasure=build/Evaluation/modules/Evaluation/Dependency/TypeErasure.pcm\
		-fmodule-file=Evaluation.Dyno=build/Evaluation/modules/Evaluation/Dyno.pcm\
		-fmodule-file=Evaluation.Polymorphic=build/Evaluation/modules/Evaluation/Polymorphic.pcm\
		-fmodule-file=Evaluation.Replication.Cone=build/Evaluation/modules/Evaluation/Replication/Cone.pcm\
		-fmodule-file=Evaluation.Replication.Cube=build/Evaluation/modules/Evaluation/Replication/Cube.pcm\
		-fmodule-file=Evaluation.Replication.Cuboid=build/Evaluation/modules/Evaluation/Replication/Cuboid.pcm\
		-fmodule-file=Evaluation.Replication.Cylinder=build/Evaluation/modules/Evaluation/Replication/Cylinder.pcm\
		-fmodule-file=Evaluation.Replication.Ellipsoid=build/Evaluation/modules/Evaluation/Replication/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Replication.Head=build/Evaluation/modules/Evaluation/Replication/Head.pcm\
		-fmodule-file=Evaluation.Replication.Pyramid=build/Evaluation/modules/Evaluation/Replication/Pyramid.pcm\
		-fmodule-file=Evaluation.Replication.Sphere=build/Evaluation/modules/Evaluation/Replication/Sphere.pcm\
		-fmodule-file=Evaluation.Replication.VolumeComputer=build/Evaluation/modules/Evaluation/Replication/VolumeComputer.pcm\
		-fmodule-file=Evaluation.TypeErasure=build/Evaluation/modules/Evaluation/TypeErasure.pcm\
		-fmodule-file=Evaluation.Variant=build/Evaluation/modules/Evaluation/Variant.pcm\
		-fmodule-file=Evaluation.Virtual.Cone=build/Evaluation/modules/Evaluation/Virtual/Cone.pcm\
		-fmodule-file=Evaluation.Virtual.Cube=build/Evaluation/modules/Evaluation/Virtual/Cube.pcm\
		-fmodule-file=Evaluation.Virtual.Cuboid=build/Evaluation/modules/Evaluation/Virtual/Cuboid.pcm\
		-fmodule-file=Evaluation.Virtual.Cylinder=build/Evaluation/modules/Evaluation/Virtual/Cylinder.pcm\
		-fmodule-file=Evaluation.Virtual.Ellipsoid=build/Evaluation/modules/Evaluation/Virtual/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Virtual.Head=build/Evaluation/modules/Evaluation/Virtual/Head.pcm\
		-fmodule-file=Evaluation.Virtual.IBody=build/Evaluation/modules/Evaluation/Virtual/IBody.pcm\
		-fmodule-file=Evaluation.Virtual.Pyramid=build/Evaluation/modules/Evaluation/Virtual/Pyramid.pcm\
		-fmodule-file=Evaluation.Virtual.Sphere=build/Evaluation/modules/Evaluation/Virtual/Sphere.pcm\
		-fmodule-file=Evaluation.Virtual=build/Evaluation/modules/Evaluation/Virtual.pcm\
		-fmodule-file=Evaluation.Visitor=build/Evaluation/modules/Evaluation/Visitor.pcm\
		-fmodule-file=Std=build/Evaluation/modules/Std.pcm\
		--assemble -masm=intel\
		Evaluation/$1.cpp\
		-o build/assembly/$1.s\
		-frelaxed-template-template-args\
		-fno-addrsig\
		-march=native

}

if [ $# -lt 1 ]
then
	assemble "any"
	assemble "archetype"
	assemble "dyno"
	assemble "polymorphic"
	assemble "replication"
	assemble "type_erasure"
	assemble "variant"
	assemble "virtual"
	assemble "visitor"
else
	assemble $1
fi

echo "Results in build/assembly/"
