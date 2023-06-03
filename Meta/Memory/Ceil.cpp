export module Meta.Memory.Ceil;

import Meta.Memory.Alignment;
import Meta.Memory.Size;

export namespace
	Meta::Memory
{
	[[nodiscard]]
	auto constexpr inline
	(	Ceil
	)	(	BitSize
				i_vSize
		,	Alignment
				i_vAlignment
		)
		noexcept
	->	BitSize
	{
		if	(	i_vAlignment
			==	0_align
			)
		{	return
				i_vSize
			;
		}

		auto const
			vPower2
		=	(	i_vAlignment
				.	Value
			-	1
			)
		;

		auto
		&	rSize
		=	i_vSize
			.	Value
		;
		rSize
		=	-
			rSize
		;
		rSize
		>>=	vPower2
		;
		rSize
		<<=	vPower2
		;
		rSize
		=	-
			rSize
		;
		return
			i_vSize
		;
	}
}
