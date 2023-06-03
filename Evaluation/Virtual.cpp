import Evaluation.Virtual.IBody;
import Evaluation.Virtual.Cube;
import Evaluation.Virtual.Cuboid;
import Evaluation.Virtual.Pyramid;
import Evaluation.Virtual.Sphere;
import Evaluation.Virtual.Cylinder;
import Evaluation.Virtual.Cone;
import Evaluation.Virtual.Ellipsoid;
import Evaluation.Virtual.Head;

import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.MainTemplate;
import Evaluation.Dependency.MakeUniqueNoexcept;

import Std;

auto
	main
	(	int
			i_vArgCount
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using namespace
		Bodies3D
	;
	using
		Body3D
	=	::std::unique_ptr
		<	IBody
		>
	;
	auto constexpr
		fComputeVolume
	=	+[]	(	Body3D const
				&	i_rBody3D
			)
		{	return
				i_rBody3D
				->	ComputeVolume
					()
			;
		}
	;
	return
	MainTemplate
	<	DynamicArray<Body3D>
	,	&MakeUniqueNoexcept<Cube>
	,	&MakeUniqueNoexcept<Cuboid>
	,	&MakeUniqueNoexcept<Pyramid>
	,	&MakeUniqueNoexcept<Sphere>
	,	&MakeUniqueNoexcept<Cylinder>
	,	&MakeUniqueNoexcept<Cone>
	,	&MakeUniqueNoexcept<Ellipsoid>
	,	&MakeUniqueNoexcept<Head>
	,	fComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_vArgCount
			)
		}
	);
}
