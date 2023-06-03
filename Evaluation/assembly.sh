echo "Generating assemblies..."

mkdir -p build/assembly/

cd build/Evaluation/modules

function assemble()
{
	echo $1

	clang++-17\
		-std=c++23 -O3 --no-warnings\
		-fmodule-file=ATR.Instance=ATR/Instance.pcm\
		-fmodule-file=ATR.Literals=ATR/Literals.pcm\
		-fmodule-file=ATR.Virtual.Element=ATR/Virtual/Element.pcm\
		-fmodule-file=ATR.Virtual.Entry=ATR/Virtual/Entry.pcm\
		-fmodule-file=Evaluation.Any=Evaluation/Any.pcm\
		-fmodule-file=Evaluation.Archetype.ComputeVolume=Evaluation/Archetype/ComputeVolume.pcm\
		-fmodule-file=Evaluation.Archetype.Cone=Evaluation/Archetype/Cone.pcm\
		-fmodule-file=Evaluation.Archetype.Cube=Evaluation/Archetype/Cube.pcm\
		-fmodule-file=Evaluation.Archetype.Cuboid=Evaluation/Archetype/Cuboid.pcm\
		-fmodule-file=Evaluation.Archetype.Cylinder=Evaluation/Archetype/Cylinder.pcm\
		-fmodule-file=Evaluation.Archetype.Ellipsoid=Evaluation/Archetype/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Archetype.Head=Evaluation/Archetype/Head.pcm\
		-fmodule-file=Evaluation.Archetype.Pyramid=Evaluation/Archetype/Pyramid.pcm\
		-fmodule-file=Evaluation.Archetype.Sphere=Evaluation/Archetype/Sphere.pcm\
		-fmodule-file=Evaluation.CRTP.Cone=Evaluation/CRTP/Cone.pcm\
		-fmodule-file=Evaluation.CRTP.Cube=Evaluation/CRTP/Cube.pcm\
		-fmodule-file=Evaluation.CRTP.Cuboid=Evaluation/CRTP/Cuboid.pcm\
		-fmodule-file=Evaluation.CRTP.Cylinder=Evaluation/CRTP/Cylinder.pcm\
		-fmodule-file=Evaluation.CRTP.Ellipsoid=Evaluation/CRTP/Ellipsoid.pcm\
		-fmodule-file=Evaluation.CRTP.Head=Evaluation/CRTP/Head.pcm\
		-fmodule-file=Evaluation.CRTP.Pyramid=Evaluation/CRTP/Pyramid.pcm\
		-fmodule-file=Evaluation.CRTP.Sphere=Evaluation/CRTP/Sphere.pcm\
		-fmodule-file=Evaluation.Dependency.CopyConstruct=Evaluation/Dependency/CopyConstruct.pcm\
		-fmodule-file=Evaluation.Dependency.DataTypes=Evaluation/Dependency/DataTypes.pcm\
		-fmodule-file=Evaluation.Dependency.DynamicArray=Evaluation/Dependency/DynamicArray.pcm\
		-fmodule-file=Evaluation.Dependency.Dyno=Evaluation/Dependency/Dyno.pcm\
		-fmodule-file=Evaluation.Dependency.InPlaceConstruct=Evaluation/Dependency/InPlaceConstruct.pcm\
		-fmodule-file=Evaluation.Dependency.MainTemplate=Evaluation/Dependency/MainTemplate.pcm\
		-fmodule-file=Evaluation.Dependency.Polymorphic=Evaluation/Dependency/Polymorphic.pcm\
		-fmodule-file=Evaluation.Dependency.TypeConstruct=Evaluation/Dependency/TypeConstruct.pcm\
		-fmodule-file=Evaluation.Dependency.TypeErasure=Evaluation/Dependency/TypeErasure.pcm\
		-fmodule-file=Evaluation.Dyno=Evaluation/Dyno.pcm\
		-fmodule-file=Evaluation.Polymorphic=Evaluation/Polymorphic.pcm\
		-fmodule-file=Evaluation.Replication.Cone=Evaluation/Replication/Cone.pcm\
		-fmodule-file=Evaluation.Replication.Cube=Evaluation/Replication/Cube.pcm\
		-fmodule-file=Evaluation.Replication.Cuboid=Evaluation/Replication/Cuboid.pcm\
		-fmodule-file=Evaluation.Replication.Cylinder=Evaluation/Replication/Cylinder.pcm\
		-fmodule-file=Evaluation.Replication.Ellipsoid=Evaluation/Replication/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Replication.Head=Evaluation/Replication/Head.pcm\
		-fmodule-file=Evaluation.Replication.Pyramid=Evaluation/Replication/Pyramid.pcm\
		-fmodule-file=Evaluation.Replication.Sphere=Evaluation/Replication/Sphere.pcm\
		-fmodule-file=Evaluation.Replication.VolumeComputer=Evaluation/Replication/VolumeComputer.pcm\
		-fmodule-file=Evaluation.TypeErasure=Evaluation/TypeErasure.pcm\
		-fmodule-file=Evaluation.Variant=Evaluation/Variant.pcm\
		-fmodule-file=Evaluation.Virtual.Cone=Evaluation/Virtual/Cone.pcm\
		-fmodule-file=Evaluation.Virtual.Cube=Evaluation/Virtual/Cube.pcm\
		-fmodule-file=Evaluation.Virtual.Cuboid=Evaluation/Virtual/Cuboid.pcm\
		-fmodule-file=Evaluation.Virtual.Cylinder=Evaluation/Virtual/Cylinder.pcm\
		-fmodule-file=Evaluation.Virtual.Ellipsoid=Evaluation/Virtual/Ellipsoid.pcm\
		-fmodule-file=Evaluation.Virtual.Head=Evaluation/Virtual/Head.pcm\
		-fmodule-file=Evaluation.Virtual.IBody=Evaluation/Virtual/IBody.pcm\
		-fmodule-file=Evaluation.Virtual.Pyramid=Evaluation/Virtual/Pyramid.pcm\
		-fmodule-file=Evaluation.Virtual.Sphere=Evaluation/Virtual/Sphere.pcm\
		-fmodule-file=Evaluation.Virtual=Evaluation/Virtual.pcm\
		-fmodule-file=Evaluation.Visitor=Evaluation/Visitor.pcm\
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
