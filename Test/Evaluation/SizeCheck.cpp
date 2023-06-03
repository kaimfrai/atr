export module Test.Evaluation.SizeCheck;

import Evaluation.Dependency.DataTypes;
import Meta.Size;

export
{
	template
		<	typename
				t_tColoredObject
		,	Meta::USize
				t_nSideCount
		,	Meta::USize
				t_nColorCount
		>
	requires
		(	sizeof(t_tColoredObject)
		>=	t_nSideCount
		*	sizeof(Float)
		+	t_nColorCount
		*	sizeof(RGBAColor)
		)
	and	(	alignof(t_tColoredObject)
		>=	alignof(Float)
		)
	and	(	alignof(Float)
		>=	alignof(RGBAColor)
		)
	auto constexpr inline
		AdditionalSize
	=	(	sizeof(t_tColoredObject)
		-	t_nSideCount
		*	sizeof(Float)
		-	t_nColorCount
		*	sizeof(RGBAColor)
		)
	;


	template
		<	typename
				t_tColoredObject
		,	Meta::USize
				t_nSideCount
		,	Meta::USize
				t_nColorCount
		>
	auto constexpr inline
		SizeMinimal
	=	AdditionalSize
		<	t_tColoredObject
		,	t_nSideCount
		,	t_nColorCount
		>
	<	// no more than the alignment can be used as padding
		alignof(t_tColoredObject)
	;
}
