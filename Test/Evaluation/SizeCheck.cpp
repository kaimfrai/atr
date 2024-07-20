export module Test.Evaluation.SizeCheck;

import Evaluation.Dependency.CommonData;
import Meta.Size;

using ::Meta::USize;

export
{
	template
		<	typename
				t_tColoredObject
		,	USize
				t_vSideCount
		,	USize
				t_vColorCount
		,	USize
				t_vPointCount
		>
	requires
		(	sizeof(t_tColoredObject)
		>=	(	(	t_vSideCount
				*	sizeof(float)
				)
			+	(	t_vColorCount
				*	sizeof(RGBAColor)
				)
			+	(	t_vPointCount
				*	sizeof(Point)
				)
			)
		)
	and	(	alignof(t_tColoredObject)
		>=	alignof(float)
		)
	auto constexpr inline
		AdditionalSize
	=	(	sizeof(t_tColoredObject)
		-	(	t_vSideCount
			*	sizeof(float)
			)
		-	(	t_vColorCount
			*	sizeof(RGBAColor)
			)
		-	(	t_vPointCount
			*	sizeof(Point)
			)
		)
	;


	template
		<	typename
				t_tColoredObject
		,	USize
				t_vSideCount
		,	USize
				t_vColorCount
		,	USize
				t_vPointCount
		>
	auto constexpr inline
		SizeMinimal
	=	AdditionalSize
		<	t_tColoredObject
		,	t_vSideCount
		,	t_vColorCount
		,	t_vPointCount
		>
	<	// No more than the alignment can be used as padding
		alignof(t_tColoredObject)
	;
}
