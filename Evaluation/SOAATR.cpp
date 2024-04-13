import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.SOAATR.Circle;
import Evaluation.SOAATR.ComputeVolume;
import Evaluation.SOAATR.Cone;
import Evaluation.SOAATR.Cube;
import Evaluation.SOAATR.Cuboid;
import Evaluation.SOAATR.Cylinder;
import Evaluation.SOAATR.Ellipse;
import Evaluation.SOAATR.Ellipsoid;
import Evaluation.SOAATR.Head;
import Evaluation.SOAATR.Pyramid;
import Evaluation.SOAATR.Rectangle;
import Evaluation.SOAATR.Sphere;
import Evaluation.SOAATR.Square;
import Evaluation.SOAATR.Triangle;

import Evaluation.SOAATR.Interface;

import ATR.District.MoveArrayGuard;
import ATR.Literals;

import Std;

using namespace ::ATR::Literals;

[[nodiscard]]
auto inline
(	ComputeVolumeSum
)	(	PseudoRandomSequence
			i_vRandomSequence
	)
	noexcept
->	float
{
	using namespace Bodies3D;

	VolumeComputer
		vElements
	{	{}
	,	{}
	,	{}
	,	static_cast<::std::uint32_t>
		(	i_vRandomSequence
			.	size
				()
		)
	,		static_cast<::std::uint32_t>
			(	i_vRandomSequence
				.	size
					()
			)
		/	12u
	};

	for	(	auto const
			[	vType
			,	vRed
			,	vGreen
			,	vBlue
			,	vAlpha
			,	vLateral
			,	vLongitudinal
			,	vVertical
			,	vHeight
			,	vWidth
			,	vDepth
			,	vEyeRed
			,	vEyeGreen
			,	vEyeBlue
			,	vLeftEyeLateral
			,	vEyeLongitudinal
			,	vEyeVertical
			,	vEyeHeight
			,	vRightEyeLateral
			,	_
			]
		:	i_vRandomSequence
			.	SimdView
				()
		)
	{
		auto const
			vTypeIndex
		=	vType
		%	13
		;

		push_back
		(	vElements
		,	vTypeIndex
		,	{	vRed
			,	vGreen
			,	vBlue
			,	vAlpha
			,	vLateral
			,	vLongitudinal
			,	vVertical
			,	vHeight
			,	vWidth
			,	vDepth
			,	vTypeIndex
			}
		,	{	vEyeRed
			,	vEyeGreen
			,	vEyeBlue
			,	vLeftEyeLateral
			,	vEyeLongitudinal
			,	vEyeVertical
			,	vEyeHeight
			,	vRightEyeLateral
			}
		);
	}

	auto const
		vMainDistrictView
	=	View
		(	static_cast
			<	VolumeComputer
				::	DistrictRearguard
					<	MainDistrict
					>
				const
				&
			>(	vElements
			)
		)
	;

	return
	reduce
	(	TransformReduce
		(	vMainDistrictView
			.	begin
				()
		,	vMainDistrictView
			.	end
				()
		,	[]	(	auto const
						rBody
				)
			{	return
				rBody
				(	"ComputeVolume"_id
				);
			}
		)
	);
}

auto
(	main
)	(	int
	,	char const
		*	i_aArgValue
			[]
	)
->	int
{
	PseudoRandomSequence const
		vRandomSequence
	{	i_aArgValue
		[	1z
		]
	,	i_aArgValue
		[	2z
		]
	};

	float const
		vLoopSum
	=	::ComputeVolumeSum
		(	vRandomSequence
		)
	;

	return
		::VerifyLoopSum
		(	vLoopSum
		,	vRandomSequence
		)
	;
}
