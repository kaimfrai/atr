export module Meta.Math.Divide;

import Meta.Size;

export namespace
	Meta::Math
{
	template
		<	typename
				t_tQuotient
		,	typename
				t_tRemainder
		>
	struct
		Divide
	{
		t_tQuotient
			Quotient
		;
		t_tRemainder
			Remainder
		;

		explicit(true) constexpr
		(	Divide
		)	(	auto
					i_nNumerator
			,	auto
					i_nDenominator
			)
		:	Quotient
			{	i_nNumerator
			/	i_nDenominator
			}
		,	Remainder
			{	i_nNumerator
			%	i_nDenominator
			}
		{
		}

		[[nodiscard]]
		auto constexpr
		(	Floor
		)	()	const
			noexcept
		->	t_tQuotient
		{	return
				Quotient
			-	static_cast<t_tQuotient>
				(	Remainder
				<	t_tRemainder{}
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	Ceil
		)	()	const
			noexcept
		->	t_tQuotient
		{	return
				Quotient
			+	static_cast<t_tQuotient>
				(	Remainder
				>	t_tRemainder{}
				)
			;
		}
	};

	template
		<	typename
				t_tNumerator
		,	typename
				t_tDenominator
		>
	(	Divide
	)	(	t_tNumerator
		,	t_tDenominator
		)
	->	Divide
		<	decltype(t_tNumerator{} / t_tDenominator{})
		,	decltype(t_tNumerator{} % t_tDenominator{})
		>
	;
}
