export module Meta.Math.Divide;

import Meta.Size;

export namespace
	Meta::Math
{
	struct
		Divide
	{
		USize
			Quotient
		;
		USize
			Remainder
		;

		explicit(true) constexpr
		(	Divide
		)	(	USize
					i_nNumerator
			,	USize
					i_nDenominator
			)
		:	Quotient
			{	i_nNumerator / i_nDenominator
			}
		,	Remainder
			{	i_nNumerator % i_nDenominator
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	Floor
		)	()	const
			noexcept
		->	USize
		{	return
				Quotient
			;
		}

		[[nodiscard]]
		auto constexpr
		(	Ceil
		)	()	const
			noexcept
		->	USize
		{	return
				Quotient
			+	(	Remainder
				!=	0uz
				)
			;
		}
	};
}
