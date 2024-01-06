export module Evaluation.Dependency.TransformReduce;

export namespace
	Bodies3D
{
	[[nodiscard]]
	auto constexpr inline
	(	TransformReduce
	)	(	auto
				i_aBegin
		,	auto
				i_aEnd
		,	auto
				i_fTransform
		)
		noexcept
	->	auto
	{
		auto const
			vCount
		=	i_aEnd
		-	i_aBegin
		;

		if	(	vCount
			==	1
			)
		{	return
				i_fTransform
				(	*
					i_aBegin
				)
			;
		}

		auto const
			aMid
		=	(	i_aEnd
			-		vCount
				/	2
			)
		;

		return
			TransformReduce
			(	i_aBegin
			,	aMid
			,	i_fTransform
			)
		+	TransformReduce
			(	aMid
			,	i_aEnd
			,	i_fTransform
			)
		;
	}
}
